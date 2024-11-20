const express = require("express");
const cors = require("cors");
const path = require("path");
const mongoose = require("mongoose");

require("dotenv").config({
  override: true,
  path: path.join(__dirname, "dev.env"),
});

const { Client } = require("pg");

const app = express();
app.use(express.static(path.join(__dirname, "frontend")));
app.use(cors());
app.use(express.json());

const PORT = 5000;

const client = new Client({
  user: process.env.USER, // Replace your own pgAdmin information, example: user:"postgres"
  host: process.env.SERVER, // Replace your own pgAdmin information, example: host:"localhost"
  database: "Lappeenranta",
  password: process.env.PASSWORD, // Replace your own pgAdmin information
  port: process.env.POST, // Replace your own pgAdmin information
});

client
  .connect()
  .then(() => console.log("connected to pgAdmin"))
  .catch((err) => console.log(err.message));

mongoose
  .connect("mongodb://localhost:27017/Lappeenranta")
  .then(() => {
    console.log("Connected to mongodb");
    app.listen(PORT, () => {
      console.log(`Server running on port ${PORT}`);
    });
  })
  .catch((err) => console.log(err));

const userSchema = new mongoose.Schema({
  id: Number,
  name: String,
  color: String,
  price: Number,
  amount: Number,
});

const UserModel = mongoose.model("exclusivenailpolishes", userSchema);

app.get("/api/mongo/nailpolishes", async (req, res) => {
  try {
    const userData = await UserModel.find();
    res.json(userData);
  } catch (err) {
    console.error("Error fetching data:", err);
  }
});

app.get("/api/postgres/nailpolishes", async (req, res) => {
  try {
    const exclusive = client.query(
      "SELECT id, name, color, price, amount FROM exclusivenailpolish"
    );
    const [exclusiveResult] = await Promise.all([exclusive]);
    res.json({
      exclusivenailpolish: exclusiveResult.rows,
    });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.get("/api/merged/nailpolishes", async (req, res) => {
  try {
    const mongoData = await UserModel.find().lean();

    const pgResult = await client.query("SELECT * FROM exclusivenailpolish");
    const postgresData = pgResult.rows;

    const combinedData = {};

    const addOrMergeItem = (item) => {
      const key = `${item.name}-${item.color}-${item.price}`;

      if (combinedData[key]) {
        combinedData[key].amount += item.amount;
      } else {
        combinedData[key] = { ...item };
      }
    };
    mongoData.forEach(addOrMergeItem);
    postgresData.forEach(addOrMergeItem);

    const mergedData = Object.values(combinedData);
    res.json(mergedData);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.post("/api/mongo/insert", async (req, res) => {
  const { name, color, price, amount } = req.body;
  console.log(req.body);
  try {
    const mongoMaxId = await UserModel.findOne().sort({ id: -1 }).limit(1);
    const mongoMax = mongoMaxId ? mongoMaxId.id : 0;
    const newId = mongoMax + 1;
    const insertData = new UserModel({
      id: newId,
      name,
      color,
      price,
      amount,
    });
    await insertData.save();
    res.status(200);
  } catch (err) {
    res.status(500).json({ error: "Failed to insert data" });
  }
});

app.post("/api/postgres/insert", async (req, res) => {
  const { name, color, price, amount } = req.body;
  try {
    const postgresMaxIdQuery = await client.query(
      "SELECT MAX(id) as max_id FROM exclusivenailpolish"
    );
    const postgresMax = postgresMaxIdQuery.rows[0].max_id || 0;
    const newId = postgresMax + 1;

    const query =
      "INSERT INTO exclusivenailpolish (id, name, color, price, amount) VALUES ($1, $2, $3, $4, $5)";
    const values = [newId, name, color, price, amount];
    await client.query(query, values);
    res.status(200);
  } catch {
    res.status(500).json({ error: "Failed to insert data" });
  }
});

app.delete("/api/mongo/delete", async (req, res) => {
  const { id, color } = req.body;
  try {
    const result = await UserModel.deleteOne({ id: parseInt(id), color });
    if (result.deletedCount > 0) {
      res.json({ success: true, message: "Deleted from MongoDB" });
    } else {
      res.status(404).json({ success: false, message: "No document found" });
    }
  } catch (err) {
    res.status(500).json({ error: "Failed to delete data" });
  }
});

app.delete("/api/postgres/delete", async (req, res) => {
  const { id, color } = req.body;
  try {
    const deleteQuery =
      "DELETE FROM exclusivenailpolish WHERE id = $1 AND color = $2";
    const result = await client.query(deleteQuery, [id, color]);
    if (result.rowCount > 0) {
      res.json({ success: true, message: "Deleted from PostgreSQL" });
    } else {
      res.status(404).json({ success: false, message: "No document found" });
    }
  } catch (err) {
    res.status(500).json({ error: "Failed to delete data" });
  }
});

app.put("/api/mongo/modify", async (req, res) => {
  const { id, color, name, price, amount } = req.body;
  try {
    const result = await UserModel.updateOne(
      { id: id },
      { $set: { name, color, price, amount } }
    );
    if (result.nModified > 0) {
      res.json({ success: true, message: "Updated in MongoDB" });
    }
  } catch (err) {
    res.status(500).json({ error: "Failed to update data" });
  }
});

app.put("/api/postgres/modify", async (req, res) => {
  const { id, color, name, price, amount } = req.body;
  try {
    const query =
      "UPDATE exclusivenailpolish SET name = $1, color=$2, amount=$3, price=$4 WHERE id = $5";
    const values = [name, color, amount, price, id];
    const result = await client.query(query, values);
    if (result.rowCount > 0) {
      res.json({ success: true, message: "Updated in PostgreSQL" });
    }
  } catch (err) {
    res.status(500).json({ error: "Failed to update data" });
  }
});

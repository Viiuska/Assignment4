async function fetchMongo() {
  try {
    const response = await fetch(
      `http://localhost:5000/api/mongo/nailpolishes`
    );
    const data = await response.json();
    displayData(data, "mongoData", ["id", "name", "color", "price", "amount"]);
  } catch (err) {
    console.log(err);
  }
}

async function fetchPostgres() {
  try {
    const response = await fetch(
      "http://localhost:5000/api/postgres/nailpolishes"
    );
    const result = await response.json();
    const data = result.exclusivenailpolish;
    displayData(data, "postgresData", [
      "id",
      "name",
      "color",
      "price",
      "amount",
    ]);
  } catch (err) {
    console.log(err);
  }
}

async function fetchMerged() {
  try {
    const response = await fetch(
      "http://localhost:5000/api/merged/nailpolishes"
    );
    const data = await response.json();
    displayData(data, "mergedData", ["id", "name", "color", "price", "amount"]);
  } catch (err) {
    console.log(err);
  }
}

function displayData(data, tableId, columns) {
  const tbody = document.getElementById(tableId).querySelector("tbody");
  tbody.innerHTML = "";

  data.forEach((item) => {
    const row = document.createElement("tr");
    columns.forEach((column) => {
      const cell = document.createElement("td");
      cell.textContent = item[column];
      row.appendChild(cell);
    });
    tbody.appendChild(row);
  });
}

document.getElementById("databasesBtn").addEventListener("click", () => {
  fetchMongo();
  fetchPostgres();
  fetchMerged();
});

document.getElementById("submitMongo").addEventListener("click", () => {
  insertData("mongo");
});

document.getElementById("submitPostgres").addEventListener("click", () => {
  insertData("postgres");
});

async function insertData(database) {
  const name = document.getElementById("name").value;
  const color = document.getElementById("color").value;
  const price = parseFloat(document.getElementById("price").value);
  const amount = parseInt(document.getElementById("amount").value);

  const endpoint =
    database === "mongo"
      ? "http://localhost:5000/api/mongo/insert"
      : "http://localhost:5000/api/postgres/insert";

  try {
    const response = await fetch(endpoint, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ name, color, price, amount }),
    });
    if (response.ok) {
      console.log("Data inserted");
    }
  } catch (err) {
    console.log(err);
  }
}

async function deleteData(database) {
  const id = document.getElementById("id").value;
  const color = document.getElementById("dColor").value;

  const endpoint =
    database === "mongo"
      ? "http://localhost:5000/api/mongo/delete"
      : "http://localhost:5000/api/postgres/delete";

  try {
    const response = await fetch(endpoint, {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ id, color }),
    });
    const result = await response.json();
    alert(result.message);
  } catch (err) {
    console.log(err);
  }
}

document.getElementById("deleteMongo").addEventListener("click", () => {
  deleteData("mongo");
});

document.getElementById("deletePostgres").addEventListener("click", () => {
  deleteData("postgres");
});

async function modifyData(database) {
  const id = document.getElementById("mid").value;
  const color = document.getElementById("mcolor").value;
  const name = document.getElementById("mname").value;
  const price = parseFloat(document.getElementById("mprice").value);
  const amount = parseInt(document.getElementById("mamount").value, 10);
  const endpoint =
    database === "mongo"
      ? "http://localhost:5000/api/mongo/modify"
      : "http://localhost:5000/api/postgres/modify";

  try {
    const response = await fetch(endpoint, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ id, color, name, price, amount }),
    });
    const result = await response.json();
    console.log(result);
    alert(result.message);
  } catch (err) {
    console.log(err);
  }
}

document.getElementById("modifyMongo").addEventListener("click", () => {
  modifyData("mongo");
});

document.getElementById("modifyPostgres").addEventListener("click", () => {
  modifyData("postgres");
});

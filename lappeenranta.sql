toc.dat                                                                                             0000600 0004000 0002000 00000022520 14717407314 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   
    |            Lappeenranta    17.0    17.0      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         �           1262    16398    Lappeenranta    DATABASE     �   CREATE DATABASE "Lappeenranta" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE "Lappeenranta";
                     postgres    false         �            1259    16558    exclusivenailpolish    TABLE     �   CREATE TABLE public.exclusivenailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);
 '   DROP TABLE public.exclusivenailpolish;
       public         heap r       postgres    false         �            1259    16557    exclusivenailpolish_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exclusivenailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.exclusivenailpolish_id_seq;
       public               postgres    false    224         �           0    0    exclusivenailpolish_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.exclusivenailpolish_id_seq OWNED BY public.exclusivenailpolish.id;
          public               postgres    false    223         �            1259    16428    gelnailpolish    TABLE     �   CREATE TABLE public.gelnailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);
 !   DROP TABLE public.gelnailpolish;
       public         heap r       postgres    false         �            1259    16459    gelnailpolish_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gelnailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gelnailpolish_id_seq;
       public               postgres    false    217         �           0    0    gelnailpolish_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gelnailpolish_id_seq OWNED BY public.gelnailpolish.id;
          public               postgres    false    218         �            1259    16531    regularnailpolish    TABLE     �   CREATE TABLE public.regularnailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);
 %   DROP TABLE public.regularnailpolish;
       public         heap r       postgres    false         �            1259    16530    regularnailpolish_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regularnailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.regularnailpolish_id_seq;
       public               postgres    false    222         �           0    0    regularnailpolish_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.regularnailpolish_id_seq OWNED BY public.regularnailpolish.id;
          public               postgres    false    221         �            1259    16503    transparentnailpolish    TABLE     �   CREATE TABLE public.transparentnailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);
 )   DROP TABLE public.transparentnailpolish;
       public         heap r       postgres    false         �            1259    16502    transparentnailpolish_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transparentnailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.transparentnailpolish_id_seq;
       public               postgres    false    220         �           0    0    transparentnailpolish_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.transparentnailpolish_id_seq OWNED BY public.transparentnailpolish.id;
          public               postgres    false    219         3           2604    16561    exclusivenailpolish id    DEFAULT     �   ALTER TABLE ONLY public.exclusivenailpolish ALTER COLUMN id SET DEFAULT nextval('public.exclusivenailpolish_id_seq'::regclass);
 E   ALTER TABLE public.exclusivenailpolish ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224         0           2604    16460    gelnailpolish id    DEFAULT     t   ALTER TABLE ONLY public.gelnailpolish ALTER COLUMN id SET DEFAULT nextval('public.gelnailpolish_id_seq'::regclass);
 ?   ALTER TABLE public.gelnailpolish ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217         2           2604    16534    regularnailpolish id    DEFAULT     |   ALTER TABLE ONLY public.regularnailpolish ALTER COLUMN id SET DEFAULT nextval('public.regularnailpolish_id_seq'::regclass);
 C   ALTER TABLE public.regularnailpolish ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222         1           2604    16506    transparentnailpolish id    DEFAULT     �   ALTER TABLE ONLY public.transparentnailpolish ALTER COLUMN id SET DEFAULT nextval('public.transparentnailpolish_id_seq'::regclass);
 G   ALTER TABLE public.transparentnailpolish ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220         �          0    16558    exclusivenailpolish 
   TABLE DATA           Z   COPY public.exclusivenailpolish (id, name, color, description, price, amount) FROM stdin;
    public               postgres    false    224       4820.dat �          0    16428    gelnailpolish 
   TABLE DATA           T   COPY public.gelnailpolish (id, name, color, description, price, amount) FROM stdin;
    public               postgres    false    217       4813.dat �          0    16531    regularnailpolish 
   TABLE DATA           X   COPY public.regularnailpolish (id, name, color, description, price, amount) FROM stdin;
    public               postgres    false    222       4818.dat �          0    16503    transparentnailpolish 
   TABLE DATA           \   COPY public.transparentnailpolish (id, name, color, description, price, amount) FROM stdin;
    public               postgres    false    220       4816.dat �           0    0    exclusivenailpolish_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.exclusivenailpolish_id_seq', 7, true);
          public               postgres    false    223         �           0    0    gelnailpolish_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.gelnailpolish_id_seq', 7, true);
          public               postgres    false    218         �           0    0    regularnailpolish_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.regularnailpolish_id_seq', 10, true);
          public               postgres    false    221         �           0    0    transparentnailpolish_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.transparentnailpolish_id_seq', 5, true);
          public               postgres    false    219         ;           2606    16565 ,   exclusivenailpolish exclusivenailpolish_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.exclusivenailpolish
    ADD CONSTRAINT exclusivenailpolish_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.exclusivenailpolish DROP CONSTRAINT exclusivenailpolish_pkey;
       public                 postgres    false    224         5           2606    16462     gelnailpolish gelnailpolish_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gelnailpolish
    ADD CONSTRAINT gelnailpolish_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.gelnailpolish DROP CONSTRAINT gelnailpolish_pkey;
       public                 postgres    false    217         9           2606    16538 (   regularnailpolish regularnailpolish_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.regularnailpolish
    ADD CONSTRAINT regularnailpolish_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.regularnailpolish DROP CONSTRAINT regularnailpolish_pkey;
       public                 postgres    false    222         7           2606    16510 0   transparentnailpolish transparentnailpolish_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.transparentnailpolish
    ADD CONSTRAINT transparentnailpolish_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.transparentnailpolish DROP CONSTRAINT transparentnailpolish_pkey;
       public                 postgres    false    220                                                                                                                                                                                        4820.dat                                                                                            0000600 0004000 0002000 00000001744 14717407314 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	lappeenranta polish	Bubblegum	his shade is a soft, light pink with a touch of whimsical sweetness, just like the classic bubblegum you used to enjoy.	4.19	8
2	lappeenranta polish	Mocha Magic	This shade is a deep, velvety brown with a hint of warm coffee tones, reminiscent of the comforting aroma of freshly brewed espresso.	4.19	12
3	lappeenranta polish	Silky Milky	his shade is a soft, velvety taupe with a whisper of lavender, blending the warmth of milk’s comforting hue with the luxurious smoothness of silk. 	4.19	17
4	lappeenranta polish	Lavender Bliss	This hue is a delicate, soft purple with just a hint of a silvery sheen, reflecting the subtle iridescence found on lavender petals.	4.19	16
5	lappeenranta polish	Delicate Sherbet	This polish presents a muted, soft grey-blue tone with a whisper of mint, creating a soothing and refreshing visual reminiscent of a gentle, frosted dessert.	4.19	2
6	lpr polish	Blood red	So red	5.12	2
7	lpr polish	Your sunshine always	\N	2.00	20
\.


                            4813.dat                                                                                            0000600 0004000 0002000 00000001114 14717407314 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	gel polish	No room for the blues	The nail polish is available in a grey-blue shade, perfect for sunny autumn days.	2.19	20
2	gel polish	Happily ever after	Soft pink polish with a shine effect is all you need.	2.19	7
3	gel polish	I lilac you	Sweet lilac to keep you company. Quick drying.	2.15	22
4	gel polish	Aloha papaya	Perfect for you, mylady.	2.19	16
5	gel polish	Violet voltage	Lilac with a hint of shine.	2.19	8
6	gel polish	Sea you soon	Brings the night sky to life.	2.19	9
7	gel polish	Elephant in the room	Grey with a hint of pink to create the perfect nude color.	2.09	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                    4818.dat                                                                                            0000600 0004000 0002000 00000000643 14717407314 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	regular polish	Bubbles only	Classic burgundy nail polish.	10.19	18
2	regular polish	Perfect posture	Periwinkle powder blue nail polish.	8.15	4
3	regular polish	Pinky ring	Vivid midtone pink longwear vegan nail polish with blue undertones.	10.19	26
4	regular polish	First view	Baby cashmere blue nail polish and be utterly unforgettable.	12.29	39
5	regular polish	Like it loud	True jet black nail polish.	12.15	1
\.


                                                                                             4816.dat                                                                                            0000600 0004000 0002000 00000000776 14717407314 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	sheer polish	Ballet slippers	Classic pale pink polish is graced with a subtle.	12.19	8
2	sheer polish	Bodice goddes	There is no stopping a bodice goddess in this divine lilac purple nail polish blushing with confident orchid overtones.	12.15	12
3	sheer polish	Apricot jelly	A deep orange jelly nail polish with black undertones	13.19	9
4	sheer polish	Ink jelly	When you want a hint of darkness.	14.29	9
5	sheer polish	Sky jelly	A soft, yet vibrant blue jelly nail polish with yellow undertones	12.19	34
\.


  restore.sql                                                                                         0000600 0004000 0002000 00000020136 14717407314 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Lappeenranta";
--
-- Name: Lappeenranta; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Lappeenranta" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';


ALTER DATABASE "Lappeenranta" OWNER TO postgres;

\connect "Lappeenranta"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: exclusivenailpolish; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exclusivenailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);


ALTER TABLE public.exclusivenailpolish OWNER TO postgres;

--
-- Name: exclusivenailpolish_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exclusivenailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exclusivenailpolish_id_seq OWNER TO postgres;

--
-- Name: exclusivenailpolish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exclusivenailpolish_id_seq OWNED BY public.exclusivenailpolish.id;


--
-- Name: gelnailpolish; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gelnailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);


ALTER TABLE public.gelnailpolish OWNER TO postgres;

--
-- Name: gelnailpolish_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gelnailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gelnailpolish_id_seq OWNER TO postgres;

--
-- Name: gelnailpolish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gelnailpolish_id_seq OWNED BY public.gelnailpolish.id;


--
-- Name: regularnailpolish; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regularnailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);


ALTER TABLE public.regularnailpolish OWNER TO postgres;

--
-- Name: regularnailpolish_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regularnailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.regularnailpolish_id_seq OWNER TO postgres;

--
-- Name: regularnailpolish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regularnailpolish_id_seq OWNED BY public.regularnailpolish.id;


--
-- Name: transparentnailpolish; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transparentnailpolish (
    id integer NOT NULL,
    name character varying(255),
    color character varying(50),
    description text,
    price numeric(4,2),
    amount integer
);


ALTER TABLE public.transparentnailpolish OWNER TO postgres;

--
-- Name: transparentnailpolish_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transparentnailpolish_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transparentnailpolish_id_seq OWNER TO postgres;

--
-- Name: transparentnailpolish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transparentnailpolish_id_seq OWNED BY public.transparentnailpolish.id;


--
-- Name: exclusivenailpolish id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exclusivenailpolish ALTER COLUMN id SET DEFAULT nextval('public.exclusivenailpolish_id_seq'::regclass);


--
-- Name: gelnailpolish id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gelnailpolish ALTER COLUMN id SET DEFAULT nextval('public.gelnailpolish_id_seq'::regclass);


--
-- Name: regularnailpolish id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regularnailpolish ALTER COLUMN id SET DEFAULT nextval('public.regularnailpolish_id_seq'::regclass);


--
-- Name: transparentnailpolish id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transparentnailpolish ALTER COLUMN id SET DEFAULT nextval('public.transparentnailpolish_id_seq'::regclass);


--
-- Data for Name: exclusivenailpolish; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exclusivenailpolish (id, name, color, description, price, amount) FROM stdin;
\.
COPY public.exclusivenailpolish (id, name, color, description, price, amount) FROM '$$PATH$$/4820.dat';

--
-- Data for Name: gelnailpolish; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gelnailpolish (id, name, color, description, price, amount) FROM stdin;
\.
COPY public.gelnailpolish (id, name, color, description, price, amount) FROM '$$PATH$$/4813.dat';

--
-- Data for Name: regularnailpolish; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regularnailpolish (id, name, color, description, price, amount) FROM stdin;
\.
COPY public.regularnailpolish (id, name, color, description, price, amount) FROM '$$PATH$$/4818.dat';

--
-- Data for Name: transparentnailpolish; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transparentnailpolish (id, name, color, description, price, amount) FROM stdin;
\.
COPY public.transparentnailpolish (id, name, color, description, price, amount) FROM '$$PATH$$/4816.dat';

--
-- Name: exclusivenailpolish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exclusivenailpolish_id_seq', 7, true);


--
-- Name: gelnailpolish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gelnailpolish_id_seq', 7, true);


--
-- Name: regularnailpolish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regularnailpolish_id_seq', 10, true);


--
-- Name: transparentnailpolish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transparentnailpolish_id_seq', 5, true);


--
-- Name: exclusivenailpolish exclusivenailpolish_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exclusivenailpolish
    ADD CONSTRAINT exclusivenailpolish_pkey PRIMARY KEY (id);


--
-- Name: gelnailpolish gelnailpolish_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gelnailpolish
    ADD CONSTRAINT gelnailpolish_pkey PRIMARY KEY (id);


--
-- Name: regularnailpolish regularnailpolish_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regularnailpolish
    ADD CONSTRAINT regularnailpolish_pkey PRIMARY KEY (id);


--
-- Name: transparentnailpolish transparentnailpolish_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transparentnailpolish
    ADD CONSTRAINT transparentnailpolish_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
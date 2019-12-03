--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: caracteres; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.caracteres (
    id integer NOT NULL,
    name character varying(255),
    height integer,
    mass character varying(255),
    id_hair_color integer,
    id_skin_color integer,
    id_eye_color integer,
    birth_year integer,
    id_gender integer,
    id_homeworld integer,
    id_species integer
);


ALTER TABLE public.caracteres OWNER TO "db-user";

--
-- Name: caracteres_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.caracteres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caracteres_id_seq OWNER TO "db-user";

--
-- Name: caracteres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.caracteres_id_seq OWNED BY public.caracteres.id;


--
-- Name: classification; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.classification (
    id_classification integer NOT NULL,
    classification character varying(255)
);


ALTER TABLE public.classification OWNER TO "db-user";

--
-- Name: classification_id_classification_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.classification_id_classification_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classification_id_classification_seq OWNER TO "db-user";

--
-- Name: classification_id_classification_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.classification_id_classification_seq OWNED BY public.classification.id_classification;


--
-- Name: climate; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.climate (
    id_climate integer NOT NULL,
    climate character varying(255)
);


ALTER TABLE public.climate OWNER TO "db-user";

--
-- Name: climate_id_climate_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.climate_id_climate_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.climate_id_climate_seq OWNER TO "db-user";

--
-- Name: climate_id_climate_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.climate_id_climate_seq OWNED BY public.climate.id_climate;


--
-- Name: climatforplanet; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.climatforplanet (
    idclimat_idx integer NOT NULL,
    idplanet_idx integer NOT NULL
);


ALTER TABLE public.climatforplanet OWNER TO "db-user";

--
-- Name: eyecolor; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.eyecolor (
    id_eye_color integer NOT NULL,
    eyecolor character varying(255)
);


ALTER TABLE public.eyecolor OWNER TO "db-user";

--
-- Name: eyecolor_id_eye_color_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.eyecolor_id_eye_color_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eyecolor_id_eye_color_seq OWNER TO "db-user";

--
-- Name: eyecolor_id_eye_color_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.eyecolor_id_eye_color_seq OWNED BY public.eyecolor.id_eye_color;


--
-- Name: eyecolorforcaractere; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.eyecolorforcaractere (
    ideyecolor_idx integer NOT NULL,
    idcaractere_idx integer NOT NULL
);


ALTER TABLE public.eyecolorforcaractere OWNER TO "db-user";

--
-- Name: eyecolorforspecies; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.eyecolorforspecies (
    ideyecolor_idx integer NOT NULL,
    idspecies_idx integer NOT NULL
);


ALTER TABLE public.eyecolorforspecies OWNER TO "db-user";

--
-- Name: genre; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.genre (
    id_gender integer NOT NULL,
    gender character varying(255)
);


ALTER TABLE public.genre OWNER TO "db-user";

--
-- Name: genre_id_gender_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.genre_id_gender_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_id_gender_seq OWNER TO "db-user";

--
-- Name: genre_id_gender_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.genre_id_gender_seq OWNED BY public.genre.id_gender;


--
-- Name: haircolor; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.haircolor (
    id_hair_color integer NOT NULL,
    hair_color character varying(255)
);


ALTER TABLE public.haircolor OWNER TO "db-user";

--
-- Name: haircolor_id_hair_color_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.haircolor_id_hair_color_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.haircolor_id_hair_color_seq OWNER TO "db-user";

--
-- Name: haircolor_id_hair_color_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.haircolor_id_hair_color_seq OWNED BY public.haircolor.id_hair_color;


--
-- Name: haircolorforcaractere; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.haircolorforcaractere (
    idhaircolor_idx integer NOT NULL,
    idcaractere_idx integer NOT NULL
);


ALTER TABLE public.haircolorforcaractere OWNER TO "db-user";

--
-- Name: haircolorforspecies; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.haircolorforspecies (
    idhaircolor_idx integer NOT NULL,
    idspecies_idx integer NOT NULL
);


ALTER TABLE public.haircolorforspecies OWNER TO "db-user";

--
-- Name: language; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.language (
    id_language integer NOT NULL,
    language character varying(255)
);


ALTER TABLE public.language OWNER TO "db-user";

--
-- Name: language_id_language_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.language_id_language_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.language_id_language_seq OWNER TO "db-user";

--
-- Name: language_id_language_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.language_id_language_seq OWNED BY public.language.id_language;


--
-- Name: manufacturer; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.manufacturer (
    id_manufacturer integer NOT NULL,
    manufacturer character varying(255)
);


ALTER TABLE public.manufacturer OWNER TO "db-user";

--
-- Name: manufacturer_id_manufacturer_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.manufacturer_id_manufacturer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturer_id_manufacturer_seq OWNER TO "db-user";

--
-- Name: manufacturer_id_manufacturer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.manufacturer_id_manufacturer_seq OWNED BY public.manufacturer.id_manufacturer;


--
-- Name: planets; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    name character varying(255),
    rotation_period integer,
    orbital_period integer,
    diameter integer,
    id_climate integer,
    gravity character varying(255),
    id_terrain integer,
    surface_water integer,
    population integer
);


ALTER TABLE public.planets OWNER TO "db-user";

--
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_id_seq OWNER TO "db-user";

--
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- Name: planetsforcaractere; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.planetsforcaractere (
    idplanet_idx integer NOT NULL,
    idcaractere_idx integer NOT NULL
);


ALTER TABLE public.planetsforcaractere OWNER TO "db-user";

--
-- Name: planetsforspecies; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.planetsforspecies (
    idplanet_idx integer NOT NULL,
    idspecies_idx integer NOT NULL
);


ALTER TABLE public.planetsforspecies OWNER TO "db-user";

--
-- Name: skincolor; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.skincolor (
    id_skin_color integer NOT NULL,
    skin_color character varying(255)
);


ALTER TABLE public.skincolor OWNER TO "db-user";

--
-- Name: skincolor_id_skin_color_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.skincolor_id_skin_color_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skincolor_id_skin_color_seq OWNER TO "db-user";

--
-- Name: skincolor_id_skin_color_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.skincolor_id_skin_color_seq OWNED BY public.skincolor.id_skin_color;


--
-- Name: skincolorforcaractere; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.skincolorforcaractere (
    idskincolor_idx integer NOT NULL,
    idcaractere_idx integer NOT NULL
);


ALTER TABLE public.skincolorforcaractere OWNER TO "db-user";

--
-- Name: skincolorforspecies; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.skincolorforspecies (
    idskincolor_idx integer NOT NULL,
    idspecies_idx integer NOT NULL
);


ALTER TABLE public.skincolorforspecies OWNER TO "db-user";

--
-- Name: species; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.species (
    id integer NOT NULL,
    name character varying(255),
    id_classification integer,
    designation character varying(255),
    average_height integer,
    id_skin_colors integer,
    id_hair_colors integer,
    id_eye_colors integer,
    average_lifespan character varying(255),
    id_language integer,
    id_homeworld integer
);


ALTER TABLE public.species OWNER TO "db-user";

--
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_id_seq OWNER TO "db-user";

--
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.species_id_seq OWNED BY public.species.id;


--
-- Name: starshipclass; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.starshipclass (
    id_starshipclass integer NOT NULL,
    starshipclass character varying(255)
);


ALTER TABLE public.starshipclass OWNER TO "db-user";

--
-- Name: starshipclass_id_starshipclass_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.starshipclass_id_starshipclass_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starshipclass_id_starshipclass_seq OWNER TO "db-user";

--
-- Name: starshipclass_id_starshipclass_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.starshipclass_id_starshipclass_seq OWNED BY public.starshipclass.id_starshipclass;


--
-- Name: starships; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.starships (
    id integer NOT NULL,
    name character varying(255),
    model character varying(255),
    id_manufacturer integer,
    cost_in_credits integer,
    length numeric(3,1),
    max_atmosphering_speed integer,
    crew integer,
    passengers integer,
    cargo_capacity integer,
    consumables character varying(255),
    hyperdrive_rating numeric(1,1),
    mglt integer,
    id_starship_class integer
);


ALTER TABLE public.starships OWNER TO "db-user";

--
-- Name: starships_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.starships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starships_id_seq OWNER TO "db-user";

--
-- Name: starships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.starships_id_seq OWNED BY public.starships.id;


--
-- Name: terrain; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.terrain (
    id_terrain integer NOT NULL,
    terrain character varying(255)
);


ALTER TABLE public.terrain OWNER TO "db-user";

--
-- Name: terrain_id_terrain_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.terrain_id_terrain_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.terrain_id_terrain_seq OWNER TO "db-user";

--
-- Name: terrain_id_terrain_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.terrain_id_terrain_seq OWNED BY public.terrain.id_terrain;


--
-- Name: terrainforplanet; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.terrainforplanet (
    idterrain_idx integer NOT NULL,
    idplanet_idx integer NOT NULL
);


ALTER TABLE public.terrainforplanet OWNER TO "db-user";

--
-- Name: vehiculeclass; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.vehiculeclass (
    id_vehicle_class integer NOT NULL,
    vehiculeclass character varying(255)
);


ALTER TABLE public.vehiculeclass OWNER TO "db-user";

--
-- Name: vehiculeclass_id_vehicle_class_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.vehiculeclass_id_vehicle_class_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehiculeclass_id_vehicle_class_seq OWNER TO "db-user";

--
-- Name: vehiculeclass_id_vehicle_class_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.vehiculeclass_id_vehicle_class_seq OWNED BY public.vehiculeclass.id_vehicle_class;


--
-- Name: vehicules; Type: TABLE; Schema: public; Owner: db-user
--

CREATE TABLE public.vehicules (
    id integer NOT NULL,
    name character varying(255),
    model character varying(255),
    id_manufacturer integer,
    cost_in_credits integer,
    length numeric(3,1),
    max_atmosphering_speed integer,
    crew integer,
    passengers integer,
    cargo_capacity integer,
    consumables character varying(255),
    id_vehicle_class integer
);


ALTER TABLE public.vehicules OWNER TO "db-user";

--
-- Name: vehicules_id_seq; Type: SEQUENCE; Schema: public; Owner: db-user
--

CREATE SEQUENCE public.vehicules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehicules_id_seq OWNER TO "db-user";

--
-- Name: vehicules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db-user
--

ALTER SEQUENCE public.vehicules_id_seq OWNED BY public.vehicules.id;


--
-- Name: caracteres id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.caracteres ALTER COLUMN id SET DEFAULT nextval('public.caracteres_id_seq'::regclass);


--
-- Name: classification id_classification; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.classification ALTER COLUMN id_classification SET DEFAULT nextval('public.classification_id_classification_seq'::regclass);


--
-- Name: climate id_climate; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.climate ALTER COLUMN id_climate SET DEFAULT nextval('public.climate_id_climate_seq'::regclass);


--
-- Name: eyecolor id_eye_color; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolor ALTER COLUMN id_eye_color SET DEFAULT nextval('public.eyecolor_id_eye_color_seq'::regclass);


--
-- Name: genre id_gender; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.genre ALTER COLUMN id_gender SET DEFAULT nextval('public.genre_id_gender_seq'::regclass);


--
-- Name: haircolor id_hair_color; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolor ALTER COLUMN id_hair_color SET DEFAULT nextval('public.haircolor_id_hair_color_seq'::regclass);


--
-- Name: language id_language; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.language ALTER COLUMN id_language SET DEFAULT nextval('public.language_id_language_seq'::regclass);


--
-- Name: manufacturer id_manufacturer; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.manufacturer ALTER COLUMN id_manufacturer SET DEFAULT nextval('public.manufacturer_id_manufacturer_seq'::regclass);


--
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- Name: skincolor id_skin_color; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolor ALTER COLUMN id_skin_color SET DEFAULT nextval('public.skincolor_id_skin_color_seq'::regclass);


--
-- Name: species id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species ALTER COLUMN id SET DEFAULT nextval('public.species_id_seq'::regclass);


--
-- Name: starshipclass id_starshipclass; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.starshipclass ALTER COLUMN id_starshipclass SET DEFAULT nextval('public.starshipclass_id_starshipclass_seq'::regclass);


--
-- Name: starships id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.starships ALTER COLUMN id SET DEFAULT nextval('public.starships_id_seq'::regclass);


--
-- Name: terrain id_terrain; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.terrain ALTER COLUMN id_terrain SET DEFAULT nextval('public.terrain_id_terrain_seq'::regclass);


--
-- Name: vehiculeclass id_vehicle_class; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehiculeclass ALTER COLUMN id_vehicle_class SET DEFAULT nextval('public.vehiculeclass_id_vehicle_class_seq'::regclass);


--
-- Name: vehicules id; Type: DEFAULT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehicules ALTER COLUMN id SET DEFAULT nextval('public.vehicules_id_seq'::regclass);


--
-- Data for Name: caracteres; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.caracteres (id, name, height, mass, id_hair_color, id_skin_color, id_eye_color, birth_year, id_gender, id_homeworld, id_species) FROM stdin;
\.


--
-- Data for Name: classification; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.classification (id_classification, classification) FROM stdin;
\.


--
-- Data for Name: climate; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.climate (id_climate, climate) FROM stdin;
\.


--
-- Data for Name: climatforplanet; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.climatforplanet (idclimat_idx, idplanet_idx) FROM stdin;
\.


--
-- Data for Name: eyecolor; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.eyecolor (id_eye_color, eyecolor) FROM stdin;
\.


--
-- Data for Name: eyecolorforcaractere; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.eyecolorforcaractere (ideyecolor_idx, idcaractere_idx) FROM stdin;
\.


--
-- Data for Name: eyecolorforspecies; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.eyecolorforspecies (ideyecolor_idx, idspecies_idx) FROM stdin;
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.genre (id_gender, gender) FROM stdin;
\.


--
-- Data for Name: haircolor; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.haircolor (id_hair_color, hair_color) FROM stdin;
\.


--
-- Data for Name: haircolorforcaractere; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.haircolorforcaractere (idhaircolor_idx, idcaractere_idx) FROM stdin;
\.


--
-- Data for Name: haircolorforspecies; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.haircolorforspecies (idhaircolor_idx, idspecies_idx) FROM stdin;
\.


--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.language (id_language, language) FROM stdin;
\.


--
-- Data for Name: manufacturer; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.manufacturer (id_manufacturer, manufacturer) FROM stdin;
\.


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.planets (id, name, rotation_period, orbital_period, diameter, id_climate, gravity, id_terrain, surface_water, population) FROM stdin;
\.


--
-- Data for Name: planetsforcaractere; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.planetsforcaractere (idplanet_idx, idcaractere_idx) FROM stdin;
\.


--
-- Data for Name: planetsforspecies; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.planetsforspecies (idplanet_idx, idspecies_idx) FROM stdin;
\.


--
-- Data for Name: skincolor; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.skincolor (id_skin_color, skin_color) FROM stdin;
\.


--
-- Data for Name: skincolorforcaractere; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.skincolorforcaractere (idskincolor_idx, idcaractere_idx) FROM stdin;
\.


--
-- Data for Name: skincolorforspecies; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.skincolorforspecies (idskincolor_idx, idspecies_idx) FROM stdin;
\.


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.species (id, name, id_classification, designation, average_height, id_skin_colors, id_hair_colors, id_eye_colors, average_lifespan, id_language, id_homeworld) FROM stdin;
\.


--
-- Data for Name: starshipclass; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.starshipclass (id_starshipclass, starshipclass) FROM stdin;
\.


--
-- Data for Name: starships; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.starships (id, name, model, id_manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, hyperdrive_rating, mglt, id_starship_class) FROM stdin;
\.


--
-- Data for Name: terrain; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.terrain (id_terrain, terrain) FROM stdin;
\.


--
-- Data for Name: terrainforplanet; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.terrainforplanet (idterrain_idx, idplanet_idx) FROM stdin;
\.


--
-- Data for Name: vehiculeclass; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.vehiculeclass (id_vehicle_class, vehiculeclass) FROM stdin;
\.


--
-- Data for Name: vehicules; Type: TABLE DATA; Schema: public; Owner: db-user
--

COPY public.vehicules (id, name, model, id_manufacturer, cost_in_credits, length, max_atmosphering_speed, crew, passengers, cargo_capacity, consumables, id_vehicle_class) FROM stdin;
\.


--
-- Name: caracteres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.caracteres_id_seq', 1, false);


--
-- Name: classification_id_classification_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.classification_id_classification_seq', 1, false);


--
-- Name: climate_id_climate_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.climate_id_climate_seq', 1, false);


--
-- Name: eyecolor_id_eye_color_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.eyecolor_id_eye_color_seq', 1, false);


--
-- Name: genre_id_gender_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.genre_id_gender_seq', 1, false);


--
-- Name: haircolor_id_hair_color_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.haircolor_id_hair_color_seq', 1, false);


--
-- Name: language_id_language_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.language_id_language_seq', 1, false);


--
-- Name: manufacturer_id_manufacturer_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.manufacturer_id_manufacturer_seq', 1, false);


--
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.planets_id_seq', 1, false);


--
-- Name: skincolor_id_skin_color_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.skincolor_id_skin_color_seq', 1, false);


--
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.species_id_seq', 1, false);


--
-- Name: starshipclass_id_starshipclass_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.starshipclass_id_starshipclass_seq', 1, false);


--
-- Name: starships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.starships_id_seq', 1, false);


--
-- Name: terrain_id_terrain_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.terrain_id_terrain_seq', 1, false);


--
-- Name: vehiculeclass_id_vehicle_class_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.vehiculeclass_id_vehicle_class_seq', 1, false);


--
-- Name: vehicules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db-user
--

SELECT pg_catalog.setval('public.vehicules_id_seq', 1, false);


--
-- Name: caracteres caracteres_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.caracteres
    ADD CONSTRAINT caracteres_pk PRIMARY KEY (id);


--
-- Name: classification classification_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.classification
    ADD CONSTRAINT classification_pk PRIMARY KEY (id_classification);


--
-- Name: climate climate_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.climate
    ADD CONSTRAINT climate_pk PRIMARY KEY (id_climate);


--
-- Name: climatforplanet climatforplanet_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.climatforplanet
    ADD CONSTRAINT climatforplanet_pk PRIMARY KEY (idclimat_idx, idplanet_idx);


--
-- Name: eyecolor eyecolor_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolor
    ADD CONSTRAINT eyecolor_pk PRIMARY KEY (id_eye_color);


--
-- Name: eyecolorforcaractere eyecolorforcaractere_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolorforcaractere
    ADD CONSTRAINT eyecolorforcaractere_pk PRIMARY KEY (ideyecolor_idx, idcaractere_idx);


--
-- Name: eyecolorforspecies eyecolorforspecies_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolorforspecies
    ADD CONSTRAINT eyecolorforspecies_pk PRIMARY KEY (ideyecolor_idx, idspecies_idx);


--
-- Name: genre gender; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT gender PRIMARY KEY (id_gender);


--
-- Name: haircolor haircolor_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolor
    ADD CONSTRAINT haircolor_pk PRIMARY KEY (id_hair_color);


--
-- Name: haircolorforcaractere haircolorforcaractere_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolorforcaractere
    ADD CONSTRAINT haircolorforcaractere_pk PRIMARY KEY (idhaircolor_idx, idcaractere_idx);


--
-- Name: haircolorforspecies haircolorforspecies_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolorforspecies
    ADD CONSTRAINT haircolorforspecies_pk PRIMARY KEY (idhaircolor_idx, idspecies_idx);


--
-- Name: language language_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pk PRIMARY KEY (id_language);


--
-- Name: manufacturer manufacturer_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pk PRIMARY KEY (id_manufacturer);


--
-- Name: planets planets_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pk PRIMARY KEY (id);


--
-- Name: planetsforcaractere planetsforcaractere_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planetsforcaractere
    ADD CONSTRAINT planetsforcaractere_pk PRIMARY KEY (idplanet_idx, idcaractere_idx);


--
-- Name: planetsforspecies planetsforspecies_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planetsforspecies
    ADD CONSTRAINT planetsforspecies_pk PRIMARY KEY (idplanet_idx, idspecies_idx);


--
-- Name: skincolor skincolor_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolor
    ADD CONSTRAINT skincolor_pk PRIMARY KEY (id_skin_color);


--
-- Name: skincolorforcaractere skincolorforcaractere_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolorforcaractere
    ADD CONSTRAINT skincolorforcaractere_pk PRIMARY KEY (idskincolor_idx, idcaractere_idx);


--
-- Name: skincolorforspecies skincolorforspecies_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolorforspecies
    ADD CONSTRAINT skincolorforspecies_pk PRIMARY KEY (idskincolor_idx, idspecies_idx);


--
-- Name: species species_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pk PRIMARY KEY (id);


--
-- Name: starshipclass starshipclass_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.starshipclass
    ADD CONSTRAINT starshipclass_pk PRIMARY KEY (id_starshipclass);


--
-- Name: starships starships_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_pk PRIMARY KEY (id);


--
-- Name: terrain terrain_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.terrain
    ADD CONSTRAINT terrain_pk PRIMARY KEY (id_terrain);


--
-- Name: terrainforplanet terrainforplanet_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.terrainforplanet
    ADD CONSTRAINT terrainforplanet_pk PRIMARY KEY (idterrain_idx, idplanet_idx);


--
-- Name: vehiculeclass vehiculeclass_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehiculeclass
    ADD CONSTRAINT vehiculeclass_pk PRIMARY KEY (id_vehicle_class);


--
-- Name: vehicules vehicules_pk; Type: CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicules_pk PRIMARY KEY (id);


--
-- Name: caracteres caracteres_eyecolor_id_eye_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.caracteres
    ADD CONSTRAINT caracteres_eyecolor_id_eye_color_fk FOREIGN KEY (id_eye_color) REFERENCES public.eyecolor(id_eye_color);


--
-- Name: caracteres caracteres_genre_id_gender_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.caracteres
    ADD CONSTRAINT caracteres_genre_id_gender_fk FOREIGN KEY (id_gender) REFERENCES public.genre(id_gender);


--
-- Name: caracteres caracteres_haircolor_id_hair_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.caracteres
    ADD CONSTRAINT caracteres_haircolor_id_hair_color_fk FOREIGN KEY (id_hair_color) REFERENCES public.haircolor(id_hair_color);


--
-- Name: caracteres caracteres_planets_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.caracteres
    ADD CONSTRAINT caracteres_planets_id_fk FOREIGN KEY (id_homeworld) REFERENCES public.planets(id);


--
-- Name: climatforplanet climatforplanet_climate_id_climate_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.climatforplanet
    ADD CONSTRAINT climatforplanet_climate_id_climate_fk FOREIGN KEY (idclimat_idx) REFERENCES public.climate(id_climate);


--
-- Name: climatforplanet climatforplanet_planets_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.climatforplanet
    ADD CONSTRAINT climatforplanet_planets_id_fk FOREIGN KEY (idclimat_idx) REFERENCES public.planets(id);


--
-- Name: eyecolorforcaractere eyecolorforcaractere_caracteres_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolorforcaractere
    ADD CONSTRAINT eyecolorforcaractere_caracteres_id_fk FOREIGN KEY (ideyecolor_idx) REFERENCES public.caracteres(id);


--
-- Name: eyecolorforcaractere eyecolorforcaractere_eyecolor_id_eye_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolorforcaractere
    ADD CONSTRAINT eyecolorforcaractere_eyecolor_id_eye_color_fk FOREIGN KEY (ideyecolor_idx) REFERENCES public.eyecolor(id_eye_color);


--
-- Name: eyecolorforspecies eyecolorforspecies_eyecolor_id_eye_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolorforspecies
    ADD CONSTRAINT eyecolorforspecies_eyecolor_id_eye_color_fk FOREIGN KEY (ideyecolor_idx) REFERENCES public.eyecolor(id_eye_color);


--
-- Name: eyecolorforspecies eyecolorforspecies_species_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.eyecolorforspecies
    ADD CONSTRAINT eyecolorforspecies_species_id_fk FOREIGN KEY (ideyecolor_idx) REFERENCES public.species(id);


--
-- Name: haircolorforcaractere haircolorforcaractere_caracteres_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolorforcaractere
    ADD CONSTRAINT haircolorforcaractere_caracteres_id_fk FOREIGN KEY (idhaircolor_idx) REFERENCES public.caracteres(id);


--
-- Name: haircolorforcaractere haircolorforcaractere_haircolor_id_hair_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolorforcaractere
    ADD CONSTRAINT haircolorforcaractere_haircolor_id_hair_color_fk FOREIGN KEY (idhaircolor_idx) REFERENCES public.haircolor(id_hair_color);


--
-- Name: haircolorforspecies haircolorforspecies_haircolor_id_hair_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolorforspecies
    ADD CONSTRAINT haircolorforspecies_haircolor_id_hair_color_fk FOREIGN KEY (idhaircolor_idx) REFERENCES public.haircolor(id_hair_color);


--
-- Name: haircolorforspecies haircolorforspecies_species_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.haircolorforspecies
    ADD CONSTRAINT haircolorforspecies_species_id_fk FOREIGN KEY (idhaircolor_idx) REFERENCES public.species(id);


--
-- Name: planetsforcaractere planetsforcaractere_caracteres_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planetsforcaractere
    ADD CONSTRAINT planetsforcaractere_caracteres_id_fk FOREIGN KEY (idcaractere_idx) REFERENCES public.caracteres(id);


--
-- Name: planetsforcaractere planetsforcaractere_planets_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planetsforcaractere
    ADD CONSTRAINT planetsforcaractere_planets_id_fk FOREIGN KEY (idplanet_idx) REFERENCES public.planets(id);


--
-- Name: planetsforspecies planetsforspecies_planets_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planetsforspecies
    ADD CONSTRAINT planetsforspecies_planets_id_fk FOREIGN KEY (idplanet_idx) REFERENCES public.planets(id);


--
-- Name: planetsforspecies planetsforspecies_species_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.planetsforspecies
    ADD CONSTRAINT planetsforspecies_species_id_fk FOREIGN KEY (idplanet_idx) REFERENCES public.species(id);


--
-- Name: skincolorforcaractere skincolorforcaractere_caracteres_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolorforcaractere
    ADD CONSTRAINT skincolorforcaractere_caracteres_id_fk FOREIGN KEY (idskincolor_idx) REFERENCES public.caracteres(id);


--
-- Name: skincolorforcaractere skincolorforcaractere_skincolor_id_skin_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolorforcaractere
    ADD CONSTRAINT skincolorforcaractere_skincolor_id_skin_color_fk FOREIGN KEY (idskincolor_idx) REFERENCES public.skincolor(id_skin_color);


--
-- Name: skincolorforspecies skincolorforspecies_skincolor_id_skin_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolorforspecies
    ADD CONSTRAINT skincolorforspecies_skincolor_id_skin_color_fk FOREIGN KEY (idskincolor_idx) REFERENCES public.skincolor(id_skin_color);


--
-- Name: skincolorforspecies skincolorforspecies_species_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.skincolorforspecies
    ADD CONSTRAINT skincolorforspecies_species_id_fk FOREIGN KEY (idskincolor_idx) REFERENCES public.species(id);


--
-- Name: species species_classification_id_classification_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_classification_id_classification_fk FOREIGN KEY (id_classification) REFERENCES public.classification(id_classification);


--
-- Name: species species_eyecolor_id_eye_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_eyecolor_id_eye_color_fk FOREIGN KEY (id_eye_colors) REFERENCES public.eyecolor(id_eye_color);


--
-- Name: species species_haircolor_id_hair_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_haircolor_id_hair_color_fk FOREIGN KEY (id_hair_colors) REFERENCES public.haircolor(id_hair_color);


--
-- Name: species species_language_id_language_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_language_id_language_fk FOREIGN KEY (id_language) REFERENCES public.language(id_language);


--
-- Name: species species_planets_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planets_id_fk FOREIGN KEY (id_homeworld) REFERENCES public.planets(id);


--
-- Name: species species_skincolor_id_skin_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_skincolor_id_skin_color_fk FOREIGN KEY (id_skin_colors) REFERENCES public.skincolor(id_skin_color);


--
-- Name: starships starships_manufacturer_id_manufacturer_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_manufacturer_id_manufacturer_fk FOREIGN KEY (id_manufacturer) REFERENCES public.manufacturer(id_manufacturer);


--
-- Name: starships starships_starshipclass_id_starshipclass_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.starships
    ADD CONSTRAINT starships_starshipclass_id_starshipclass_fk FOREIGN KEY (id_starship_class) REFERENCES public.starshipclass(id_starshipclass);


--
-- Name: terrainforplanet terrainforplanet_planets_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.terrainforplanet
    ADD CONSTRAINT terrainforplanet_planets_id_fk FOREIGN KEY (idterrain_idx) REFERENCES public.planets(id);


--
-- Name: terrainforplanet terrainforplanet_terrain_id_terrain_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.terrainforplanet
    ADD CONSTRAINT terrainforplanet_terrain_id_terrain_fk FOREIGN KEY (idterrain_idx) REFERENCES public.terrain(id_terrain);


--
-- Name: vehicules vehicules_manufacturer_id_manufacturer_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicules_manufacturer_id_manufacturer_fk FOREIGN KEY (id_manufacturer) REFERENCES public.manufacturer(id_manufacturer);


--
-- Name: vehicules vehicules_starshipclass_id_starshipclass_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicules_starshipclass_id_starshipclass_fk FOREIGN KEY (id_vehicle_class) REFERENCES public.starshipclass(id_starshipclass);


--
-- Name: vehicules vehicules_vehiculeclass_id_vehicle_class_fk; Type: FK CONSTRAINT; Schema: public; Owner: db-user
--

ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicules_vehiculeclass_id_vehicle_class_fk FOREIGN KEY (id_vehicle_class) REFERENCES public.vehiculeclass(id_vehicle_class);


--
-- PostgreSQL database dump complete
--


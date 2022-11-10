--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    moon_id integer,
    galaxy_id integer,
    star_id integer
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    diameter integer,
    distance integer,
    age numeric,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    diameter integer,
    age numeric,
    moon_id integer NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    diameter integer,
    age numeric,
    has_life boolean,
    has_moon boolean,
    planet_id integer NOT NULL,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    diameter integer,
    age numeric,
    star_id integer NOT NULL,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_id_seq OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_id_seq OWNED BY public.star.star_id;


--
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_planet_id_seq'::regclass);


--
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'FIRST', 1, 1, 1, 1);
INSERT INTO public.celestial VALUES (2, 'SECOND', 2, 2, 2, 2);
INSERT INTO public.celestial VALUES (3, 'THIRD', 3, 3, 3, 3);
INSERT INTO public.celestial VALUES (4, 'FOURTH', 4, 4, 4, 4);
INSERT INTO public.celestial VALUES (5, 'Fifth', 5, 5, 5, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 107700, 0, 136100000, 1, 'Galaxy of planet Earth');
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 52962, 24010, 132800, 2, 'Also called Evil Eye Galaxy');
INSERT INTO public.galaxy VALUES ('Sunflower Galaxy', 98000, 2700, 132800, 3, 'Discovered by Pierre Mechain');
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 14000, 1582000, 110100, 4, 'Satellite galaxy of the Milky Way');
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 130000, 48920, 200, 5, 'Created by head on collision with smaller galaxy');
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 50000, 2393500, 13250, 6, 'Shaped like a sombrero');
INSERT INTO public.galaxy VALUES ('Andromeda', 220000, 25370, 100100, 7, 'Expected to collide with Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 3400, 45300, 1, 'Earths only natural satellite', 3);
INSERT INTO public.moon VALUES ('Phobos', 22000, 4503, 2, 'Innermost and larger sattelite of mars', 4);
INSERT INTO public.moon VALUES ('Deimos', 12, 4503, 3, 'Smaller and outermost sattelite of mars', 4);
INSERT INTO public.moon VALUES ('Europa', 3, 4503, 4, 'Smallest of the four Galilean moons orbiting Jupiter', 5);
INSERT INTO public.moon VALUES ('Io', 3600, 4503, 5, 'Innermost and third largest of the four Galilean moons', 5);
INSERT INTO public.moon VALUES ('Ganymede', 5200, 4503, 6, 'Largest and most massive of the solar system moons', 5);
INSERT INTO public.moon VALUES ('Callisto', 4800, 4503, 7, 'Second largest moon of jupiter', 5);
INSERT INTO public.moon VALUES ('Amalthea', 166, 4503, 8, 'Has third closest orbit around Jupiter', 5);
INSERT INTO public.moon VALUES ('Titan', 3100, 4503, 9, 'Largest moon of saturn', 6);
INSERT INTO public.moon VALUES ('Enceladus', 500, 4503, 10, 'Sixt largest moon of saturn', 6);
INSERT INTO public.moon VALUES ('Mimas', 400, 4503, 11, 'smallest astronomical body that is known to be rounded', 6);
INSERT INTO public.moon VALUES ('Dione', 1120, 4503, 12, 'Names after the titaness Dione of greek mythology', 6);
INSERT INTO public.moon VALUES ('Lapetus', 1500, 4503, 13, 'Named after Titan lapetus', 6);
INSERT INTO public.moon VALUES ('Tethys', 1060, 4503, 14, 'Mid sized moon of saturn', 6);
INSERT INTO public.moon VALUES ('Miranda', 470, 4503, 15, 'innermost moon of uranus', 7);
INSERT INTO public.moon VALUES ('Titania', 1560, 4503, 16, 'largest moon of uranus', 7);
INSERT INTO public.moon VALUES ('Oberon', 1521, 4503, 17, 'Outermost moon of uranus', 7);
INSERT INTO public.moon VALUES ('Ariel', 1120, 4503, 18, 'has extreme seasonal cycle', 7);
INSERT INTO public.moon VALUES ('Umbriel', 1140, 4503, 19, 'Discovered by William Lassell', 7);
INSERT INTO public.moon VALUES ('Triton', 2706, 4503, 20, 'largest moon of neptune', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 5800, 4503, false, false, 1, 'Closest planet to the sun', 1);
INSERT INTO public.planet VALUES ('Venus', 12000, 4503, false, false, 2, 'Sometimes called Earths twin sister', 1);
INSERT INTO public.planet VALUES ('Earth', 12600, 4543, true, true, 3, 'Only known planet to support life', 1);
INSERT INTO public.planet VALUES ('Mars', 6600, 4603, false, true, 4, 'Named for the roman god of war.', 1);
INSERT INTO public.planet VALUES ('Jupiter', 140000, 4603, false, true, 5, 'Largest planet in the solar system', 1);
INSERT INTO public.planet VALUES ('Saturn', 116000, 4503, false, true, 6, 'Gas Giant', 1);
INSERT INTO public.planet VALUES ('Uranus', 50724, 4503, false, true, 7, 'Named as reference to greek god of the sky.', 1);
INSERT INTO public.planet VALUES ('Neptune', 49244, 4503, false, true, 8, 'Densest planet', 1);
INSERT INTO public.planet VALUES ('PA-99-N2', 0, 0, false, false, 9, 'Found in andromeda galaxy', 2);
INSERT INTO public.planet VALUES ('Andromedae_b', 81000, 137000, false, false, 10, 'Found in adromeda galaxy', 2);
INSERT INTO public.planet VALUES ('Delphini_b', 0, 13700, false, false, 11, 'FOUND in milky way', 1);
INSERT INTO public.planet VALUES ('Draconis_b', 0, 13700, false, false, 12, 'Found in milky way', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 13927, 4603, 1, 'Only star in our solar system', 1);
INSERT INTO public.star VALUES ('N/A', 0, 0, 2, 'Too Far to determine', 2);
INSERT INTO public.star VALUES ('N/A', 0, 0, 3, 'Too Far to determine', 3);
INSERT INTO public.star VALUES ('N/A', 0, 0, 4, 'Too Far to determine', 4);
INSERT INTO public.star VALUES ('N/A', 0, 0, 5, 'Too Far to determine', 5);
INSERT INTO public.star VALUES ('N/A', 0, 0, 6, 'Too Far to determine', 6);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_id_seq', 6, true);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: celestial celestial_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_unique UNIQUE (celestial_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: galaxy unique_value; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_value UNIQUE (galaxy_id);


--
-- Name: star galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


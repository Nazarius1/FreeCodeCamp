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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    has_life boolean,
    age_in_millions_of_years numeric,
    asteroid_types text,
    distance_from_earth numeric,
    moon_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_types text,
    has_life boolean,
    age_in_million_of_years integer,
    description character varying,
    is_spherical boolean,
    distance_from_earth_in_million_of_years numeric,
    name character varying NOT NULL,
    number_of_stars integer
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
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    has_life boolean,
    age_in_millions_of_years numeric,
    moon_types text,
    distance_from_earth numeric,
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    has_life boolean,
    age_in_millions_of_years numeric,
    moon_types text,
    distance_from_earth numeric,
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
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    has_life boolean,
    age_in_millions_of_years numeric,
    star_types text,
    distance_from_earth numeric,
    galaxy_id integer,
    number_of_planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '4 Vesta', 'This is 4 Vesta', false, 456.236, 'okeyi', 456.598, 1);
INSERT INTO public.asteroid VALUES (2, '16 Psyche', 'This is 16 Psyche', false, 1500, 'crazy', 59.681, 8);
INSERT INTO public.asteroid VALUES (3, 'Ceres', 'This is Ceres Asterdoid', true, 800, 'calmly', 12.589, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'elliptical', true, 13, 'This is a description about milky way...', false, 25800, 'Milky Way', 100000);
INSERT INTO public.galaxy VALUES (2, 'spiral', true, 10, 'This is a description about Andromeda...', true, 2.537, 'Andromeda', 1000000000);
INSERT INTO public.galaxy VALUES (3, 'antenna', false, 300, 'This is a description about Antenna...', false, 45, 'Antennae', 1000000000);
INSERT INTO public.galaxy VALUES (4, 'backward', false, 34, 'This is a description about Backward galaxy...', false, 111, 'Backward galaxy', 500000);
INSERT INTO public.galaxy VALUES (5, 'elliptical', false, 13, 'This is a description about Black Eye galaxy...', true, 17, 'Black Eye galaxy', 100000000);
INSERT INTO public.galaxy VALUES (6, 'elliptical', false, 13, 'This is a description about Bode galaxy...', true, 12, 'Bode galaxy', 250000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'This is a moon', false, 4.53, 'wobbly', 110.150, 1);
INSERT INTO public.moon VALUES (2, 'Ganymede', 'This is a Ganymede moon', false, 5.53, 'wobbly enough', 112.150, 5);
INSERT INTO public.moon VALUES (3, 'Lo', 'This is a Lo moon', false, 5.53, 'wobbly enough', 112.150, 7);
INSERT INTO public.moon VALUES (4, 'Europa', 'This is a Eruopa moon', false, 5.53, 'wobbly enough', 112.150, 9);
INSERT INTO public.moon VALUES (5, 'Titan', 'This is a Titan  moon', false, 8.897, 'whwateer', 112.150, 7);
INSERT INTO public.moon VALUES (6, 'Callisto', 'This is a calluisto  moon', false, 12.589, 'curvy', 112.459, 3);
INSERT INTO public.moon VALUES (7, 'Carme', 'This is a Carme  moon', false, 15.819, 'hotty', 112.459, 7);
INSERT INTO public.moon VALUES (8, 'Camalthea', 'This is a Camalthea  moon', false, 20.123, 'hotty', 114.470, 7);
INSERT INTO public.moon VALUES (9, 'Adrastea', 'This is a Adrastea  moon', false, 15.569, 'coldly', 127.470, 4);
INSERT INTO public.moon VALUES (10, 'Himali', 'This is a Himali Moon', false, 15.569, 'coldly', 127.470, 2);
INSERT INTO public.moon VALUES (11, 'Ananke', 'This is a Ananke  Moon', false, 27.123, 'neutraly', 569.125, 6);
INSERT INTO public.moon VALUES (12, 'Ellara', 'This is a Ellara  Moon', false, 27.123, 'neutraly', 569.125, 12);
INSERT INTO public.moon VALUES (13, 'Erinome', 'This is a Erinome  Moon', false, 27.123, 'neutraly', 569.125, 11);
INSERT INTO public.moon VALUES (14, 'Locaste', 'This is a Locaste  Moon', false, 15.456, 'Pinky', 789.456, 10);
INSERT INTO public.moon VALUES (15, 'Isonoe', 'This is a Isonoe  Moon', false, 15.456, 'Azure', 789.456, 7);
INSERT INTO public.moon VALUES (16, 'Harüaöyle', 'This is a Harüaöyle Moon', false, 15.456, 'Azure', 789.456, 3);
INSERT INTO public.moon VALUES (17, 'Kalyke', 'This is a Kalyke Moon', false, 25.658, 'littley', 456.987, 8);
INSERT INTO public.moon VALUES (18, 'Aoede', 'This is Aoede Moon', false, 25.658, 'littley', 456.987, 5);
INSERT INTO public.moon VALUES (19, 'Helike', 'This is Helike Moon', false, 45.697, 'windy', 256.258, 7);
INSERT INTO public.moon VALUES (20, 'Carpo', 'This is Carpo Moon', true, 59.823, 'calmly', 123.789, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'This is planet earth...', true, 4.543, 'moony', 0, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'This is planet Mercury', false, 4.503, 'mercurizing', 136.05, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'This is planet Venus...', false, 4.503, '', 201.37, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'This is planet Mars', false, 4.503, 'PhobosDeimos', 203.03, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'This is planet Jupiter...', false, 4.608, 'Europa', 250.37, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'This is planet Saturns', false, 5.596, 'Titan', 203.03, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'This is planet Uranus...', false, 5.712, 'Titania', 235.456, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'This is planet Neptune', false, 4.460, 'Triton', 250.233, 1);
INSERT INTO public.planet VALUES (10, 'CoRot 7b', 'This is planet Corot 7b...', false, 10.589, 'hoora', 879.569, 5);
INSERT INTO public.planet VALUES (11, 'Gliese 581', 'This is planet Gliese', false, 12.568, 'Navy', 897.569, 6);
INSERT INTO public.planet VALUES (9, 'Keppler', 'This is planet Keppler...', false, 12.589, 'kooki', 596.569, 3);
INSERT INTO public.planet VALUES (12, 'Keppler 452b', 'This is planet Keppler 452b', false, 115.568, 'NSoothy', 810.568, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'This is a star named sun', true, 4.603, 'G-type', 152.02, 1, 8);
INSERT INTO public.star VALUES (2, 'C Proxima', 'This is a star named C Proxima', false, 10, 'M5.5', 4246000000, 3, 6);
INSERT INTO public.star VALUES (3, 'A Proxima', 'This is a star named A Proxima', false, 11, 'M5.5', 4246000000, 3, 6);
INSERT INTO public.star VALUES (4, 'B Proxima', 'This is a star named B Proxima', false, 11.5, 'M5.5', 4246000000, 3, 6);
INSERT INTO public.star VALUES (5, 'Barnards', 'This is a star named Barnard', false, 4.3441, 'M5.5', 4246000000, 6, 1);
INSERT INTO public.star VALUES (6, 'Wolf 359', 'This is a star named Wolf 359', false, 1000000000, 'M6.5 Ve', 7791000, 6, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: star constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_name UNIQUE (name);


--
-- Name: planet constraint_name1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_name1 UNIQUE (name);


--
-- Name: moon constraint_name2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_name2 UNIQUE (name);


--
-- Name: asteroid constraint_name3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT constraint_name3 UNIQUE (name);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid asteroid_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


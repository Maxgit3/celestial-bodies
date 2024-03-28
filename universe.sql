--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    temperature_in_kelvin integer,
    distance_from_earth numeric,
    description text NOT NULL,
    in_milkyway_galaxy boolean,
    is_spherical boolean
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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(30) NOT NULL,
    speed_in_miles_per_hour numeric
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    temperature_in_kelvin integer,
    distance_from_earth numeric,
    description text,
    planet_id integer NOT NULL,
    in_milkyway_galaxy boolean,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    temperature_in_kelvin integer,
    distance_from_earth numeric,
    description text,
    star_id integer NOT NULL,
    in_milkyway_galaxy boolean,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    temperature_in_kelvin integer,
    distance_from_earth numeric,
    description text,
    galaxy_id integer NOT NULL,
    in_milkyway_galaxy boolean,
    is_spherical boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL, 'galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, NULL, NULL, 'galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'antennae', NULL, NULL, NULL, 'galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'backward', NULL, NULL, NULL, 'galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'bearpaw', NULL, NULL, NULL, 'galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'blackeye', NULL, NULL, NULL, 'galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'bodes', NULL, NULL, NULL, 'galaxy', NULL, NULL);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'abee', NULL);
INSERT INTO public.meteor VALUES (2, 'benton', NULL);
INSERT INTO public.meteor VALUES (3, 'mbozi', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'phobos', NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'deimos', NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'ganymede', NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'callisto', NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'io', NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'europa', NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'titan', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'hyperion', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'prometheus', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'pandora', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'janus', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'mimas', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'phoebe', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'tethys', NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'miranda', NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'ariel', NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'umbriel', NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'titania', NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'oberon', NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'salu', NULL, NULL, NULL, NULL, 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'mercury', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'saturn', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'venus', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'mars', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'ceres', NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'eris', NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'haumea', NULL, NULL, NULL, NULL, 2, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'acamar', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'achernar', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'acrux', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'caph', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'deneb', NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'enib', NULL, NULL, NULL, NULL, 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


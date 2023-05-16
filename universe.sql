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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millons_of_years numeric(4,1),
    galaxy_type text,
    num_of_stars integer NOT NULL
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
    name character varying(30),
    diameter_in_km numeric(3,1),
    has_atmosphere boolean,
    number_of_craters integer NOT NULL,
    planet_id integer NOT NULL
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
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    name character varying(30) NOT NULL,
    people_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_person_id_seq OWNER TO freecodecamp;

--
-- Name: people_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_person_id_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moons integer,
    is_spherical boolean,
    planet_type text,
    star_id integer NOT NULL
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
    temperature_in_k numeric(3,1),
    number_of_planets integer,
    is_active boolean,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_person_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 32.2, 'Andromeda', 1000);
INSERT INTO public.galaxy VALUES (2, 'Artemis', 55.2, 'Cartwheel', 3200);
INSERT INTO public.galaxy VALUES (3, 'Aurora', 120.2, 'Cigar', 500);
INSERT INTO public.galaxy VALUES (4, 'Medusa', 21.9, 'Tadpole', 3654);
INSERT INTO public.galaxy VALUES (5, 'Cygnus', 500.7, 'Fireworks', 136500);
INSERT INTO public.galaxy VALUES (6, 'Virgo-A', 325.4, 'Butterfly', 65000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_01', 50.1, true, 2, 1);
INSERT INTO public.moon VALUES (2, 'moon_02', 20.3, false, 1, 2);
INSERT INTO public.moon VALUES (3, 'moon_03', 10.8, false, 5, 2);
INSERT INTO public.moon VALUES (4, 'moon_04', 99.1, true, 20, 3);
INSERT INTO public.moon VALUES (5, 'moon_05', 20.1, false, 2, 3);
INSERT INTO public.moon VALUES (6, 'moon_06', 5.3, false, 1, 3);
INSERT INTO public.moon VALUES (7, 'moon_07', 20.5, false, 0, 3);
INSERT INTO public.moon VALUES (8, 'moon_08', 35.9, true, 4, 3);
INSERT INTO public.moon VALUES (9, 'moon_09', 15.7, false, 9, 3);
INSERT INTO public.moon VALUES (10, 'moon_10', 40.0, false, 17, 3);
INSERT INTO public.moon VALUES (11, 'moon_11', 2.2, false, 1, 4);
INSERT INTO public.moon VALUES (12, 'moon_12', 2.9, false, 0, 4);
INSERT INTO public.moon VALUES (13, 'moon_13', 1.5, false, 1, 4);
INSERT INTO public.moon VALUES (14, 'moon_14', 25.3, true, 6, 7);
INSERT INTO public.moon VALUES (15, 'moon_15', 25.3, true, 2, 7);
INSERT INTO public.moon VALUES (16, 'moon_16', 25.3, true, 3, 7);
INSERT INTO public.moon VALUES (17, 'moon_17', 25.3, true, 5, 7);
INSERT INTO public.moon VALUES (18, 'moon_18', 64.4, true, 30, 12);
INSERT INTO public.moon VALUES (19, 'moon_19', 46.6, false, 99, 12);
INSERT INTO public.moon VALUES (20, 'moon_20', 99.7, true, 50, 12);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES ('Test1', 1, 1);
INSERT INTO public.people VALUES ('Test2', 2, 1);
INSERT INTO public.people VALUES ('Test3', 3, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Green', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2, true, 'Red', 1);
INSERT INTO public.planet VALUES (3, 'Neptune', 10, true, 'Blue', 2);
INSERT INTO public.planet VALUES (4, 'Pluto', 3, true, 'Blue', 2);
INSERT INTO public.planet VALUES (5, 'Trapis', 0, false, 'Donut', 4);
INSERT INTO public.planet VALUES (6, 'Stella', 1, true, 'Arid', 4);
INSERT INTO public.planet VALUES (7, 'NeedLe', 4, false, 'Needle', 4);
INSERT INTO public.planet VALUES (8, 'Satyr', 3, true, 'Red', 4);
INSERT INTO public.planet VALUES (9, 'Nezha', 2, true, 'Mixed', 5);
INSERT INTO public.planet VALUES (10, 'Tenma', 1, true, 'Vivid', 6);
INSERT INTO public.planet VALUES (11, 'Stray', 0, true, 'Empty', 3);
INSERT INTO public.planet VALUES (12, 'E34-fj0A-3', 5, true, 'New', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 52.3, 10, true, 'Polaris', 1);
INSERT INTO public.star VALUES (2, 52.5, 6, true, 'Castor', 2);
INSERT INTO public.star VALUES (3, 99.5, 0, false, 'Pollux', 2);
INSERT INTO public.star VALUES (4, 50.0, 3, true, 'Sirius', 4);
INSERT INTO public.star VALUES (5, 85.9, 15, false, 'Antares', 5);
INSERT INTO public.star VALUES (6, 66.1, 2, true, 'Altair', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: people_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_person_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (name);


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


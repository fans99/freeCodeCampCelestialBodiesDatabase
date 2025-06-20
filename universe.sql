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
    galaxy_types integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    moon_types integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    planet_types integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    star_types integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean NOT NULL,
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
-- Name: unknown; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.unknown (
    unknown_id integer NOT NULL,
    has_life boolean NOT NULL,
    description text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.unknown OWNER TO freecodecamp;

--
-- Name: unknown_unkown_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.unknown_unkown_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unknown_unkown_id_seq OWNER TO freecodecamp;

--
-- Name: unknown_unkown_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.unknown_unkown_id_seq OWNED BY public.unknown.unknown_id;


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
-- Name: unknown unknown_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown ALTER COLUMN unknown_id SET DEFAULT nextval('public.unknown_unkown_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 1, 1, 1, '', true);
INSERT INTO public.galaxy VALUES (2, '2', 2, 2, 2, '', true);
INSERT INTO public.galaxy VALUES (3, '3', 3, 3, 3, '', true);
INSERT INTO public.galaxy VALUES (4, '4', 4, 4, 4, '', true);
INSERT INTO public.galaxy VALUES (5, '5', 5, 5, 5, '', false);
INSERT INTO public.galaxy VALUES (6, '6', 6, 6, 6, '', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, 1, 1, '', true, 1);
INSERT INTO public.moon VALUES (2, '2', 2, 2, 2, '', true, 1);
INSERT INTO public.moon VALUES (3, '3', 3, 3, 3, '', true, 2);
INSERT INTO public.moon VALUES (4, '4', 4, 4, 4, '', true, 2);
INSERT INTO public.moon VALUES (5, '5', 5, 5, 5, '', true, 3);
INSERT INTO public.moon VALUES (6, '6', 6, 6, 6, '', true, 6);
INSERT INTO public.moon VALUES (7, '7', 7, 7, 7, '', true, 7);
INSERT INTO public.moon VALUES (8, '8', 8, 8, 8, '', true, 8);
INSERT INTO public.moon VALUES (9, '9', 9, 9, 9, '', false, 9);
INSERT INTO public.moon VALUES (10, '10', 10, 10, 10, '', false, 10);
INSERT INTO public.moon VALUES (11, '11', 11, 11, 11, '', false, 11);
INSERT INTO public.moon VALUES (12, '12', 12, 12, 12, '', false, 12);
INSERT INTO public.moon VALUES (13, '13', 13, 13, 13, '', false, 12);
INSERT INTO public.moon VALUES (14, '14', 14, 14, 14, '', false, 12);
INSERT INTO public.moon VALUES (15, '15', 15, 15, 15, '', false, 12);
INSERT INTO public.moon VALUES (16, '16', 16, 16, 16, '', false, 12);
INSERT INTO public.moon VALUES (17, '17', 17, 17, 17, '', false, 12);
INSERT INTO public.moon VALUES (18, '18', 18, 18, 18, '', false, 12);
INSERT INTO public.moon VALUES (19, '19', 19, 19, 19, '', false, 12);
INSERT INTO public.moon VALUES (20, '20', 20, 20, 20, '', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 1, 1, '', true, 1);
INSERT INTO public.planet VALUES (2, '2', 2, 2, 2, '', true, 1);
INSERT INTO public.planet VALUES (3, '3', 3, 3, 3, '', true, 2);
INSERT INTO public.planet VALUES (4, '4', 4, 4, 4, '', true, 2);
INSERT INTO public.planet VALUES (5, '5', 5, 5, 5, '', true, 3);
INSERT INTO public.planet VALUES (6, '6', 6, 6, 6, '', true, 3);
INSERT INTO public.planet VALUES (7, '7', 7, 7, 7, '', true, 4);
INSERT INTO public.planet VALUES (8, '8', 8, 8, 8, '', true, 4);
INSERT INTO public.planet VALUES (9, '9', 9, 9, 9, '', false, 5);
INSERT INTO public.planet VALUES (10, '10', 10, 10, 10, '', false, 5);
INSERT INTO public.planet VALUES (11, '11', 1, 11, 11, '', false, 6);
INSERT INTO public.planet VALUES (12, '12', 12, 12, 12, '', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', 1, 1, 1, '', true, 1);
INSERT INTO public.star VALUES (2, '2', 2, 2, 2, '', true, 2);
INSERT INTO public.star VALUES (3, '3', 3, 3, 3, '', true, 3);
INSERT INTO public.star VALUES (4, '4', 4, 4, 4, '', true, 4);
INSERT INTO public.star VALUES (5, '5', 5, 5, 5, '', false, 5);
INSERT INTO public.star VALUES (6, '6', 6, 6, 6, '', false, 6);


--
-- Data for Name: unknown; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.unknown VALUES (1, false, '', '1');
INSERT INTO public.unknown VALUES (2, true, '', '2');
INSERT INTO public.unknown VALUES (3, false, '', '3');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: unknown_unkown_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.unknown_unkown_id_seq', 3, true);


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
-- Name: unknown unknown_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown
    ADD CONSTRAINT unknown_name_key UNIQUE (name);


--
-- Name: unknown unknown_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown
    ADD CONSTRAINT unknown_pkey PRIMARY KEY (unknown_id);


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


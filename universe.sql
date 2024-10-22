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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbital_period numeric(10,2),
    distance_from_sun integer,
    description text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,2),
    has_life boolean,
    is_spherical boolean,
    galaxy_type integer,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(10,2),
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    moon_type integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,2),
    has_life boolean,
    is_spherical boolean,
    planet_type integer,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,2),
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    star_type integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 75.32, 88, 'Cometa famoso que pasa cada 75 años.');
INSERT INTO public.comet VALUES (2, 'Swift-Tuttle', 133.20, 130, 'Cometa que forma la lluvia de meteoros Perseidas.');
INSERT INTO public.comet VALUES (3, 'Hale-Bopp', 2533.00, 186, 'Uno de los cometas más brillantes y visibles desde la Tierra.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13.51, true, true, 1, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', 10.00, false, true, 1, 2537000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third largest galaxy', 3.00, false, true, 1, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A grand-design spiral galaxy', 10.00, false, true, 1, 23100000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Known for its bright nucleus', 10.00, false, true, 1, 28000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'A face-on spiral galaxy', 10.00, false, true, 1, 21000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4.50, false, true, 384400, 1, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4.40, false, true, 6000, 1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4.40, false, true, 23460, 1, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4.50, false, true, 421700, 2, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4.50, false, true, 628300, 2, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4.50, false, true, 1070400, 2, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4.50, false, true, 1882700, 2, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4.50, false, true, 1275000, 1, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 4.50, false, true, 527040, 1, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4.50, false, true, 238000, 1, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 4.50, false, true, 354760, 2, 7);
INSERT INTO public.moon VALUES (12, 'Charon', 4.50, false, true, 19700, 1, 8);
INSERT INTO public.moon VALUES (13, 'Mimas', 4.50, false, true, 185400, 1, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 4.50, false, true, 1, 1, 6);
INSERT INTO public.moon VALUES (15, 'Dione', 4.50, false, true, 561700, 1, 6);
INSERT INTO public.moon VALUES (16, 'Titania', 4.50, false, true, 436300, 1, 9);
INSERT INTO public.moon VALUES (17, 'Oberon', 4.50, false, true, 583500, 1, 9);
INSERT INTO public.moon VALUES (18, 'Miranda', 4.50, false, true, 129000, 1, 9);
INSERT INTO public.moon VALUES (19, 'Iapetus', 4.50, false, true, 356300, 1, 6);
INSERT INTO public.moon VALUES (20, 'Ceres', 4.50, false, true, 413000, 1, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to the Sun', 4.50, false, true, NULL, 58, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun', 4.50, false, true, NULL, 108, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet', 4.50, true, true, NULL, 150, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The Red Planet', 4.60, false, true, NULL, 228, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the solar system', 4.50, false, true, NULL, 779, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Known for its rings', 4.50, false, true, NULL, 1434, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant', 4.50, false, true, NULL, 2873, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Farthest planet from the Sun', 4.50, false, true, NULL, 4495, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet', 4.50, false, true, NULL, 5906, 1);
INSERT INTO public.planet VALUES (10, 'Titan', 'Largest moon of Saturn, sometimes considered a planet', 4.50, false, true, NULL, 1434, 2);
INSERT INTO public.planet VALUES (11, 'Eris', 'Dwarf planet in the scattered disc', 4.50, false, true, NULL, 9600, 3);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Dwarf planet known for its elongated shape', 4.50, false, true, NULL, 5000, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', 4.60, true, true, 0, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in the night sky', 8.60, false, true, 9, NULL, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Closest star to the Sun', 4.85, false, true, 4, NULL, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant star', 10.00, false, true, 642, NULL, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue supergiant star', 8.00, false, true, 773, NULL, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'Part of a three-star system', 4.37, false, true, 4, NULL, 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


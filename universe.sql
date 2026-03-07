--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_type character varying(40)
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
    description text,
    is_spherical boolean NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_id integer
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'extra1', 'first placeholder');
INSERT INTO public.extra VALUES (2, 'extra2', 'second placeholder');
INSERT INTO public.extra VALUES (3, 'extra3', 'third placeholder');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System.', 13600, 'Barred Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest large galaxy to the Milky Way and on a collision course with it.', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small spiral galaxy and member of the Local Group.', 12000, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'A galaxy with a bright nucleus and large central bulge resembling a sombrero hat.', 13000, 'Unbarred Spiral');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'A classic spiral galaxy interacting with a nearby dwarf galaxy.', 400, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'A massive elliptical galaxy known for its supermassive black hole.', 13200, 'Elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'The only natural satellite of Earth, visible from the surface.', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger and closer of Mars two moons, heavily cratered.', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outer moon of Mars with a smoother surface.', false, 4);
INSERT INTO public.moon VALUES (4, 'Proxima Moon I', 'A fictional moon orbiting Proxima b with a thin atmosphere.', true, 5);
INSERT INTO public.moon VALUES (5, 'Proxima Moon II', 'A small icy moon orbiting Proxima b in the outer ring.', false, 5);
INSERT INTO public.moon VALUES (6, 'Proxima c Moon I', 'A dense rocky moon orbiting Proxima c.', true, 6);
INSERT INTO public.moon VALUES (7, 'Sirius Moon Alpha', 'A large volcanic moon orbiting Sirius b Planet 1.', true, 7);
INSERT INTO public.moon VALUES (8, 'Sirius Moon Beta', 'A frozen moon with subsurface oceans orbiting Sirius b Planet 1.', true, 7);
INSERT INTO public.moon VALUES (9, 'Sirius Moon Gamma', 'A small irregular moon captured by Sirius b Planet 2.', false, 8);
INSERT INTO public.moon VALUES (10, 'Sirius Moon Delta', 'A tidally locked moon orbiting Sirius b Planet 2.', true, 8);
INSERT INTO public.moon VALUES (11, 'Betelgeuse Moon I', 'A massive moon larger than most planets orbiting Betelgeuse I.', true, 9);
INSERT INTO public.moon VALUES (12, 'Betelgeuse Moon II', 'A sulfuric volcanic moon orbiting Betelgeuse I.', true, 9);
INSERT INTO public.moon VALUES (13, 'Betelgeuse Moon III', 'An icy outer moon with geysers orbiting Betelgeuse I.', true, 9);
INSERT INTO public.moon VALUES (14, 'Betelgeuse Moon IV', 'A cratered moon with ancient impact basins orbiting Betelgeuse II.', false, 10);
INSERT INTO public.moon VALUES (15, 'Betelgeuse Moon V', 'A dark carbonaceous moon orbiting Betelgeuse II.', false, 10);
INSERT INTO public.moon VALUES (16, 'Rigel Moon Alpha', 'A glowing moon reflecting the light of Rigel orbiting Rigel Prime.', true, 11);
INSERT INTO public.moon VALUES (17, 'Rigel Moon Beta', 'A high-density metallic moon orbiting Rigel Prime.', true, 11);
INSERT INTO public.moon VALUES (18, 'Rigel Moon Gamma', 'A small shepherd moon orbiting within Rigel Prime rings.', false, 11);
INSERT INTO public.moon VALUES (19, 'Rigel Minor Moon I', 'A rocky moon with deep canyon systems orbiting Rigel Minor.', true, 12);
INSERT INTO public.moon VALUES (20, 'Rigel Minor Moon II', 'An irregularly shaped captured asteroid moon orbiting Rigel Minor.', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet in the Solar System and closest to the Sun.', true, 77, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun with a very thick atmosphere.', true, 261, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'The only known planet that supports life.', true, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known as the Red Planet.', true, 225, 1);
INSERT INTO public.planet VALUES (5, 'Proxima b', 'An exoplanet orbiting Proxima Centauri.', true, 4.24, 2);
INSERT INTO public.planet VALUES (6, 'Proxima c', 'A candidate exoplanet orbiting Proxima Centauri.', true, 4.24, 2);
INSERT INTO public.planet VALUES (7, 'Sirius b Planet 1', 'A fictional planet orbiting Sirius.', true, 8.6, 3);
INSERT INTO public.planet VALUES (8, 'Sirius b Planet 2', 'Another fictional planet around Sirius.', true, 8.6, 3);
INSERT INTO public.planet VALUES (9, 'Betelgeuse I', 'A massive gas planet orbiting Betelgeuse.', true, 642.5, 4);
INSERT INTO public.planet VALUES (10, 'Betelgeuse II', 'A distant icy planet orbiting Betelgeuse.', true, 642.5, 4);
INSERT INTO public.planet VALUES (11, 'Rigel Prime', 'A hot gas giant orbiting Rigel.', true, 863, 5);
INSERT INTO public.planet VALUES (12, 'Rigel Minor', 'A rocky exoplanet orbiting Rigel.', true, 863, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our Solar System.', 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun.', 4500, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'The brightest star in the night sky.', 242, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A massive red supergiant star nearing the end of its life.', 10, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'A bright blue supergiant star in the Orion constellation.', 8, 1);
INSERT INTO public.star VALUES (6, 'Andromeda Star A', 'A fictional star located in the Andromeda Galaxy for database purposes.', 5000, 2);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


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
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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
-- Name: extra unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT unique_name UNIQUE (name);


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


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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(225) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(225) NOT NULL,
    description text,
    morphology character varying(80),
    radius_in_light_year integer,
    estimated_stars_crore integer,
    age_in_billions_of_years numeric(10,3)
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
    name character varying(225) NOT NULL,
    discovered_year smallint,
    discoverer character varying(90),
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
    name character varying(225) NOT NULL,
    description text,
    radius_in_km integer,
    has_life boolean,
    has_ring boolean,
    gravity_acceleration numeric(10,5),
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
    name character varying(225) NOT NULL,
    description text,
    surface_temperature_kelvin integer,
    luminosity integer,
    magnitude numeric(10,3),
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Cygnus X-1', 2);
INSERT INTO public.black_hole VALUES (2, 'V404 Cygni', 2);
INSERT INTO public.black_hole VALUES (3, '4U 1543-47', 2);
INSERT INTO public.black_hole VALUES (4, 'GRS 1915+105', 2);
INSERT INTO public.black_hole VALUES (5, 'M87* (Event Horizon Telescope)', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way. It was originally named the Andromeda Nebula and is cataloged as Messier 31, M31, and NGC 224. Andromeda has a Disophotal diameter of about 46.56 kiloparsecs and is approximately 765 kpc from Earth.', 'spiral', 110000, 100000, 10.010);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'The Milky Way is a huge collection of stars, dust and gas. Its called a spiral galaxy because if you could view it from the top or bottom, it would look like a spinning pinwheel. The Sun is located on one of the spiral arms, about 25,000 light-years away from the center of the galaxy.', 'spiral', 52850, 100, 13.610);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'The Triangulum Galaxy is a spiral galaxy 2.73 million light-years from Earth in the constellation Triangulum. It is catalogued as Messier 33 or NGC 598.', 'spiral', 30000, 4000, 0.273);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'The Whirlpool Galaxy, also known as Messier 51a or NGC 5194, is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus. It lies in the constellation Canes Venatici, and was the first galaxy to be classified as a spiral galaxy. It is 7.22 megaparsecs away and 23.58 kiloparsecs in diameter.', 'spiral', 30000, 10000, 40.030);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'The Black Eye Galaxy is a relatively isolated spiral galaxy 17 million light-years away in the mildly northern constellation of Coma Berenices. It was discovered by Edward Pigott in March 1779, and independently by Johann Elert Bode in April of the same year, as well as by Charles Messier the next year.', 'spiral', 26481, 10000, 13.280);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 'The Cartwheel Galaxy is a lenticular ring galaxy about 500 million light-years away in the constellation Sculptor. It has a D₂₅ isophotal diameter of 44.23 kiloparsecs, and a mass of about 2.9–4.8 × 10⁹ solar masses; its outer ring has a circular velocity of 217 km/s. It was discovered by Fritz Zwicky in 1941.', 'ring', 65000, NULL, 40.000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1609, 'Galileo', 3);
INSERT INTO public.moon VALUES (2, 'Titan', 1655, 'Christiaan Huygens', 6);
INSERT INTO public.moon VALUES (3, 'Enceladus', 1789, 'Willian Herschel', 6);
INSERT INTO public.moon VALUES (4, 'Mimas', 1789, 'William Herschel', 6);
INSERT INTO public.moon VALUES (5, 'Tethys', 1684, 'G. D. Cassini', 6);
INSERT INTO public.moon VALUES (6, 'Dione', 1684, 'Giovanni Cassini', 6);
INSERT INTO public.moon VALUES (7, 'Rhea', 1672, 'G. D. Cassini', 6);
INSERT INTO public.moon VALUES (8, 'Iapetus', 1672, 'G. D. Cassini', 6);
INSERT INTO public.moon VALUES (9, 'Metis', 1979, 'Synnott (Voyager 1)', 5);
INSERT INTO public.moon VALUES (10, 'Adrastea', 1979, 'Jewitt (Voyager 2)', 5);
INSERT INTO public.moon VALUES (11, 'Amalthea', 1892, 'Barnard', 5);
INSERT INTO public.moon VALUES (12, 'Thebe', 1979, 'Synnott (Voyager 1)', 5);
INSERT INTO public.moon VALUES (13, 'Io', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (14, 'Europa', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (15, 'Ganymede', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (16, 'Callisto', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (17, 'Themisto', NULL, 'Kowal & Roemer Sheppard et al.', 5);
INSERT INTO public.moon VALUES (18, 'Ledo', 1974, 'Kowal', 5);
INSERT INTO public.moon VALUES (19, 'Ersa', 2018, 'Sheppard', 5);
INSERT INTO public.moon VALUES (20, 'S/2018_J_2', 2018, 'Sheppard', 5);
INSERT INTO public.moon VALUES (21, 'Himalia', 1904, 'Perrine', 5);
INSERT INTO public.moon VALUES (22, 'Pandia', 2017, 'Sheppard', 5);
INSERT INTO public.moon VALUES (23, 'Lysithea', 1938, 'Nicholson', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the first planet from the Sun and the smallest in the Solar System. In English, it is named after the ancient Roman god Mercurius, god of commerce and communication, and the messenger of the gods. Mercury is classified as a terrestrial planet, with roughly the same surface gravity as Mars.', 2439, false, false, 3.70000, 6);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth. Venus is notable for having the densest atmosphere of the terrestrial planets, composed mostly of carbon dioxide with a thick, global sulfuric acid cloud cover.', 6051, false, false, 8.87000, 6);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being an ocean world, the only one in the Solar System sustaining liquid surface water. Almost all of Earths water is contained in its global ocean, covering 70.8% of Earths crust.', 6371, true, false, 9.80000, 6);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun. The surface of Mars is orange-red because it is covered in iron(III) oxide dust, giving it the nickname "the Red Planet". Mars is among the brightest objects in Earths sky, and its high-contrast albedo features have made it a common subject for telescope viewing.', 3389, false, false, 3.71000, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. A gas giant, Jupiters mass is more than two and a half times that of all the other planets in the Solar System combined and slightly less than one one-thousandth the mass of the Sun.', 69911, false, false, 24.79000, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine-and-a-half times that of Earth. It has only one-eighth the average density of Earth, but is over 95 times more massive.', 58232, false, true, 10.44000, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant. Most of the planet is made of water, ammonia, and methane in a supercritical phase of matter, which in astronomy is called "ice" or volatiles.', 25362, false, true, 8.87000, 6);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth and slightly more massive than fellow ice giant Uranus.', 24622, false, false, 11.15000, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It is the ninth-largest and tenth-most-massive known object to directly orbit the Sun. It is the largest known trans-Neptunian object by volume, by a small margin, but is less massive than Eris.', 1188, false, false, 0.62000, 6);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Kepler-186f[2][3] (also known by its Kepler object of interest designation KOI-571.05) is an Earth-sized exoplanet orbiting within the habitable zone of the red dwarf star Kepler-186,[4][5][6] the outermost of five such planets discovered around the star by NASAs Kepler spacecraft. It is located about 580 light-years (180 parsecs) from Earth in the constellation of Cygnus.
Kepler-186f orbits its star at a distance of about 0.43 AU (64,000,000 km; 40,000,000 mi) from its host star with an orbital period of roughly 130 days, and a mass and radius around 1.44 and 1.17 times that of Earth, respectively. As one of the more promising candidates for habitability, it was the first planet with a radius similar to Earths to be discovered in the habitable zone of another star. However, key components still need to be found to determine its habitability for life, including an atmosphere and its composition and if liquid water can exist on its surface.', 7454, false, false, 11.46600, 7);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'TRAPPIST-1e, also designated as 2MASS J23062928-0502285 e, is a rocky, close-to-Earth-sized exoplanet orbiting within the habitable zone around the ultracool dwarf star TRAPPIST-1, located 40.7 light-years away from Earth in the constellation of Aquarius.', 5797, false, false, 1687.00000, 8);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 'Proxima Centauri b, sometimes referred to as Alpha Centauri Cb, is an exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri, which is the closest star to the Sun and part of the larger triple star system Alpha Centauri.', 6562, false, false, 1.02000, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 'Alpheratz, or Alpha Andromedae, is a binary star 97 light-years from Earth and is the brightest star in the constellation of Andromeda when Mirach undergoes its periodical dimming. Immediately northeast of the constellation of Pegasus, it is the upper left star of the Great Square of Pegasus.', 13000, 200, 1.480, 1);
INSERT INTO public.star VALUES (2, 'Delta Andromedae', 'Delta Andromedae, Latinized from δ Andromedae, is a triple star system in the northern constellation of Andromeda. The system is visible to the naked eye as a point of light with a combined apparent visual magnitude of 3.28.', 4315, 68, 1.480, 1);
INSERT INTO public.star VALUES (3, 'Achernar', 'Achernar is the brightest star in the constellation of Eridanus and the ninth-brightest in the night sky. It has the Bayer designation Alpha Eridani, which is Latinized from α Eridani and abbreviated Alpha Eri or α Eri. The name Achernar applies to the primary component of a binary system.', 15000, 3150, 0.445, 2);
INSERT INTO public.star VALUES (4, 'Epsilon Canis Majoris', 'Epsilon Canis Majoris is a binary star system and the second-brightest object in the constellation of Canis Major. Its name is a Bayer designation that is Latinised from ε Canis Majoris, and abbreviated Epsilon CMa or ε CMa. This is the 22nd-brightest star in the night sky with an apparent magnitude of 1.50.', 22200, 38700, 1.500, 2);
INSERT INTO public.star VALUES (5, 'Gamma Trianguli', 'Epsilon Canis Majoris is a binary star system and the second-brightest object in the constellation of Canis Major. Its name is a Bayer designation that is Latinised from ε Canis Majoris, and abbreviated Epsilon CMa or ε CMa. This is the 22nd-brightest star in the night sky with an apparent magnitude of 1.50.', 9440, 33, 1.350, 3);
INSERT INTO public.star VALUES (6, 'Sun', 'The Sun is the star at the center of the Solar System. It is a massive, hot ball of plasma, inflated and heated by energy produced by nuclear fusion reactions in its core.', 5772, 93, 4.830, 2);
INSERT INTO public.star VALUES (7, 'Kepler-186', 'Kepler-186 is a main-sequence M1-type dwarf star, located 177.5 parsecs (579 light years) away in the constellation of Cygnus. The star is slightly cooler than the sun, with roughly half its metallicity. It is known to have five planets, including the first Earth-sized world discovered in the habitable zone: Kepler-186f.[6] The star hosts four other planets discovered so far, though they all orbit interior to the habitable zone.', 3755, 0, NULL, 2);
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 'TRAPPIST-1 is a cool red dwarf star with seven known exoplanets. It lies in the constellation Aquarius about 40.66 light-years away from Earth, and has a surface temperature of about 2,566 K. Its radius is slightly larger than Jupiter and it has a mass of about 9% of the Sun.', 3755, 0, 18.800, 2);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 'Proxima Centauri is a small, low-mass star located 4.2465 light-years away from the Sun in the southern constellation of Centaurus. Its Latin name means the "nearest [star] of Centaurus". It was discovered in 1915 by Robert Innes and is the nearest-known star to the Sun.', 3042, 0, 11.100, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


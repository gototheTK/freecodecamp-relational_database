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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (136, 2018, 'Final', 219, 220, 4, 2);
INSERT INTO public.games VALUES (137, 2018, 'Third Place', 221, 222, 2, 0);
INSERT INTO public.games VALUES (138, 2018, 'Semi-Final', 220, 222, 2, 1);
INSERT INTO public.games VALUES (139, 2018, 'Semi-Final', 219, 221, 1, 0);
INSERT INTO public.games VALUES (140, 2018, 'Quarter-Final', 220, 223, 3, 2);
INSERT INTO public.games VALUES (141, 2018, 'Quarter-Final', 222, 224, 2, 0);
INSERT INTO public.games VALUES (142, 2018, 'Quarter-Final', 221, 225, 2, 1);
INSERT INTO public.games VALUES (143, 2018, 'Quarter-Final', 219, 226, 2, 0);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 222, 227, 2, 1);
INSERT INTO public.games VALUES (145, 2018, 'Eighth-Final', 224, 228, 1, 0);
INSERT INTO public.games VALUES (146, 2018, 'Eighth-Final', 221, 229, 3, 2);
INSERT INTO public.games VALUES (147, 2018, 'Eighth-Final', 225, 230, 2, 0);
INSERT INTO public.games VALUES (148, 2018, 'Eighth-Final', 220, 231, 2, 1);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', 223, 232, 2, 1);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 226, 233, 2, 1);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 219, 234, 4, 3);
INSERT INTO public.games VALUES (152, 2014, 'Final', 235, 234, 1, 0);
INSERT INTO public.games VALUES (153, 2014, 'Third Place', 236, 225, 3, 0);
INSERT INTO public.games VALUES (154, 2014, 'Semi-Final', 234, 236, 1, 0);
INSERT INTO public.games VALUES (155, 2014, 'Semi-Final', 235, 225, 7, 1);
INSERT INTO public.games VALUES (156, 2014, 'Quarter-Final', 236, 237, 1, 0);
INSERT INTO public.games VALUES (157, 2014, 'Quarter-Final', 234, 221, 1, 0);
INSERT INTO public.games VALUES (158, 2014, 'Quarter-Final', 225, 227, 2, 1);
INSERT INTO public.games VALUES (159, 2014, 'Quarter-Final', 235, 219, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 225, 238, 2, 1);
INSERT INTO public.games VALUES (161, 2014, 'Eighth-Final', 227, 226, 2, 0);
INSERT INTO public.games VALUES (162, 2014, 'Eighth-Final', 219, 239, 2, 0);
INSERT INTO public.games VALUES (163, 2014, 'Eighth-Final', 235, 240, 2, 1);
INSERT INTO public.games VALUES (164, 2014, 'Eighth-Final', 236, 230, 2, 1);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', 237, 241, 2, 1);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 234, 228, 1, 0);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 221, 242, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (219, 'France');
INSERT INTO public.teams VALUES (220, 'Croatia');
INSERT INTO public.teams VALUES (221, 'Belgium');
INSERT INTO public.teams VALUES (222, 'England');
INSERT INTO public.teams VALUES (223, 'Russia');
INSERT INTO public.teams VALUES (224, 'Sweden');
INSERT INTO public.teams VALUES (225, 'Brazil');
INSERT INTO public.teams VALUES (226, 'Uruguay');
INSERT INTO public.teams VALUES (227, 'Colombia');
INSERT INTO public.teams VALUES (228, 'Switzerland');
INSERT INTO public.teams VALUES (229, 'Japan');
INSERT INTO public.teams VALUES (230, 'Mexico');
INSERT INTO public.teams VALUES (231, 'Denmark');
INSERT INTO public.teams VALUES (232, 'Spain');
INSERT INTO public.teams VALUES (233, 'Portugal');
INSERT INTO public.teams VALUES (234, 'Argentina');
INSERT INTO public.teams VALUES (235, 'Germany');
INSERT INTO public.teams VALUES (236, 'Netherlands');
INSERT INTO public.teams VALUES (237, 'Costa Rica');
INSERT INTO public.teams VALUES (238, 'Chile');
INSERT INTO public.teams VALUES (239, 'Nigeria');
INSERT INTO public.teams VALUES (240, 'Algeria');
INSERT INTO public.teams VALUES (241, 'Greece');
INSERT INTO public.teams VALUES (242, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 167, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 242, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


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
    round character varying(60) NOT NULL,
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
    name character varying(60) NOT NULL
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

INSERT INTO public.games VALUES (417, 2018, 'Final', 457, 458, 4, 2);
INSERT INTO public.games VALUES (418, 2018, 'Third Place', 459, 460, 2, 0);
INSERT INTO public.games VALUES (419, 2018, 'Semi-Final', 458, 460, 2, 1);
INSERT INTO public.games VALUES (420, 2018, 'Semi-Final', 457, 459, 1, 0);
INSERT INTO public.games VALUES (421, 2018, 'Quarter-Final', 458, 461, 3, 2);
INSERT INTO public.games VALUES (422, 2018, 'Quarter-Final', 460, 462, 2, 0);
INSERT INTO public.games VALUES (423, 2018, 'Quarter-Final', 459, 463, 2, 1);
INSERT INTO public.games VALUES (424, 2018, 'Quarter-Final', 457, 464, 2, 0);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 460, 465, 2, 1);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 462, 466, 1, 0);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 459, 467, 3, 2);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 463, 468, 2, 0);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 458, 469, 2, 1);
INSERT INTO public.games VALUES (430, 2018, 'Eighth-Final', 461, 470, 2, 1);
INSERT INTO public.games VALUES (431, 2018, 'Eighth-Final', 464, 471, 2, 1);
INSERT INTO public.games VALUES (432, 2018, 'Eighth-Final', 457, 472, 4, 3);
INSERT INTO public.games VALUES (433, 2014, 'Final', 473, 472, 1, 0);
INSERT INTO public.games VALUES (434, 2014, 'Third Place', 474, 463, 3, 0);
INSERT INTO public.games VALUES (435, 2014, 'Semi-Final', 472, 474, 1, 0);
INSERT INTO public.games VALUES (436, 2014, 'Semi-Final', 473, 463, 7, 1);
INSERT INTO public.games VALUES (437, 2014, 'Quarter-Final', 474, 475, 1, 0);
INSERT INTO public.games VALUES (438, 2014, 'Quarter-Final', 472, 459, 1, 0);
INSERT INTO public.games VALUES (439, 2014, 'Quarter-Final', 463, 465, 2, 1);
INSERT INTO public.games VALUES (440, 2014, 'Quarter-Final', 473, 457, 1, 0);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 463, 476, 2, 1);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 465, 464, 2, 0);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 457, 477, 2, 0);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 473, 478, 2, 1);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 474, 468, 2, 1);
INSERT INTO public.games VALUES (446, 2014, 'Eighth-Final', 475, 479, 2, 1);
INSERT INTO public.games VALUES (447, 2014, 'Eighth-Final', 472, 466, 1, 0);
INSERT INTO public.games VALUES (448, 2014, 'Eighth-Final', 459, 480, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (457, 'France');
INSERT INTO public.teams VALUES (458, 'Croatia');
INSERT INTO public.teams VALUES (459, 'Belgium');
INSERT INTO public.teams VALUES (460, 'England');
INSERT INTO public.teams VALUES (461, 'Russia');
INSERT INTO public.teams VALUES (462, 'Sweden');
INSERT INTO public.teams VALUES (463, 'Brazil');
INSERT INTO public.teams VALUES (464, 'Uruguay');
INSERT INTO public.teams VALUES (465, 'Colombia');
INSERT INTO public.teams VALUES (466, 'Switzerland');
INSERT INTO public.teams VALUES (467, 'Japan');
INSERT INTO public.teams VALUES (468, 'Mexico');
INSERT INTO public.teams VALUES (469, 'Denmark');
INSERT INTO public.teams VALUES (470, 'Spain');
INSERT INTO public.teams VALUES (471, 'Portugal');
INSERT INTO public.teams VALUES (472, 'Argentina');
INSERT INTO public.teams VALUES (473, 'Germany');
INSERT INTO public.teams VALUES (474, 'Netherlands');
INSERT INTO public.teams VALUES (475, 'Costa Rica');
INSERT INTO public.teams VALUES (476, 'Chile');
INSERT INTO public.teams VALUES (477, 'Nigeria');
INSERT INTO public.teams VALUES (478, 'Algeria');
INSERT INTO public.teams VALUES (479, 'Greece');
INSERT INTO public.teams VALUES (480, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 448, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 480, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


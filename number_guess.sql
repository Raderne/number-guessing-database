--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    best_game integer,
    user_id integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (281, 13, 236);
INSERT INTO public.games VALUES (282, 977, 236);
INSERT INTO public.games VALUES (283, 423, 237);
INSERT INTO public.games VALUES (284, 497, 237);
INSERT INTO public.games VALUES (285, 974, 236);
INSERT INTO public.games VALUES (286, 621, 236);
INSERT INTO public.games VALUES (287, 594, 236);
INSERT INTO public.games VALUES (288, 7, 238);
INSERT INTO public.games VALUES (289, 889, 239);
INSERT INTO public.games VALUES (290, 192, 239);
INSERT INTO public.games VALUES (291, 15, 240);
INSERT INTO public.games VALUES (292, 485, 240);
INSERT INTO public.games VALUES (293, 84, 239);
INSERT INTO public.games VALUES (294, 542, 239);
INSERT INTO public.games VALUES (295, 337, 239);
INSERT INTO public.games VALUES (296, 388, 241);
INSERT INTO public.games VALUES (297, 72, 241);
INSERT INTO public.games VALUES (298, 261, 242);
INSERT INTO public.games VALUES (299, 749, 242);
INSERT INTO public.games VALUES (300, 998, 241);
INSERT INTO public.games VALUES (301, 343, 241);
INSERT INTO public.games VALUES (302, 913, 243);
INSERT INTO public.games VALUES (303, 58, 241);
INSERT INTO public.games VALUES (304, 169, 243);
INSERT INTO public.games VALUES (305, 107, 244);
INSERT INTO public.games VALUES (306, 351, 244);
INSERT INTO public.games VALUES (307, 493, 243);
INSERT INTO public.games VALUES (308, 639, 245);
INSERT INTO public.games VALUES (309, 531, 243);
INSERT INTO public.games VALUES (310, 182, 243);
INSERT INTO public.games VALUES (311, 555, 245);
INSERT INTO public.games VALUES (312, 312, 246);
INSERT INTO public.games VALUES (313, 215, 246);
INSERT INTO public.games VALUES (314, 651, 245);
INSERT INTO public.games VALUES (315, 565, 245);
INSERT INTO public.games VALUES (316, 223, 245);
INSERT INTO public.games VALUES (317, 485, 247);
INSERT INTO public.games VALUES (318, 104, 247);
INSERT INTO public.games VALUES (319, 855, 248);
INSERT INTO public.games VALUES (320, 665, 248);
INSERT INTO public.games VALUES (321, 795, 247);
INSERT INTO public.games VALUES (322, 89, 247);
INSERT INTO public.games VALUES (323, 974, 249);
INSERT INTO public.games VALUES (324, 738, 249);
INSERT INTO public.games VALUES (325, 362, 250);
INSERT INTO public.games VALUES (326, 975, 250);
INSERT INTO public.games VALUES (327, 529, 249);
INSERT INTO public.games VALUES (328, 945, 249);
INSERT INTO public.games VALUES (329, 468, 251);
INSERT INTO public.games VALUES (330, 110, 251);
INSERT INTO public.games VALUES (331, 476, 252);
INSERT INTO public.games VALUES (332, 299, 252);
INSERT INTO public.games VALUES (333, 431, 251);
INSERT INTO public.games VALUES (334, 285, 251);
INSERT INTO public.games VALUES (335, 806, 251);
INSERT INTO public.games VALUES (336, 287, 253);
INSERT INTO public.games VALUES (337, 818, 253);
INSERT INTO public.games VALUES (338, 304, 254);
INSERT INTO public.games VALUES (339, 506, 254);
INSERT INTO public.games VALUES (340, 194, 253);
INSERT INTO public.games VALUES (341, 848, 253);
INSERT INTO public.games VALUES (342, 270, 253);
INSERT INTO public.games VALUES (343, 471, 255);
INSERT INTO public.games VALUES (344, 714, 255);
INSERT INTO public.games VALUES (345, 27, 256);
INSERT INTO public.games VALUES (346, 701, 256);
INSERT INTO public.games VALUES (347, 636, 255);
INSERT INTO public.games VALUES (348, 84, 255);
INSERT INTO public.games VALUES (349, 855, 255);
INSERT INTO public.games VALUES (350, 1000, 257);
INSERT INTO public.games VALUES (351, 155, 258);
INSERT INTO public.games VALUES (352, 805, 259);
INSERT INTO public.games VALUES (353, 186, 258);
INSERT INTO public.games VALUES (354, 201, 259);
INSERT INTO public.games VALUES (355, 15, 258);
INSERT INTO public.games VALUES (356, 489, 260);
INSERT INTO public.games VALUES (357, 246, 260);
INSERT INTO public.games VALUES (358, 421, 259);
INSERT INTO public.games VALUES (359, 334, 259);
INSERT INTO public.games VALUES (360, 570, 259);
INSERT INTO public.games VALUES (361, 180, 261);
INSERT INTO public.games VALUES (362, 893, 261);
INSERT INTO public.games VALUES (363, 757, 262);
INSERT INTO public.games VALUES (364, 184, 262);
INSERT INTO public.games VALUES (365, 389, 261);
INSERT INTO public.games VALUES (366, 575, 261);
INSERT INTO public.games VALUES (367, 745, 261);
INSERT INTO public.games VALUES (368, 658, 263);
INSERT INTO public.games VALUES (369, 237, 263);
INSERT INTO public.games VALUES (370, 444, 264);
INSERT INTO public.games VALUES (371, 477, 264);
INSERT INTO public.games VALUES (372, 151, 263);
INSERT INTO public.games VALUES (373, 526, 263);
INSERT INTO public.games VALUES (374, 61, 263);
INSERT INTO public.games VALUES (375, 839, 265);
INSERT INTO public.games VALUES (376, 742, 265);
INSERT INTO public.games VALUES (377, 143, 266);
INSERT INTO public.games VALUES (378, 137, 266);
INSERT INTO public.games VALUES (379, 328, 265);
INSERT INTO public.games VALUES (380, 56, 265);
INSERT INTO public.games VALUES (381, 676, 267);
INSERT INTO public.games VALUES (382, 588, 267);
INSERT INTO public.games VALUES (383, 738, 268);
INSERT INTO public.games VALUES (384, 640, 268);
INSERT INTO public.games VALUES (385, 499, 267);
INSERT INTO public.games VALUES (386, 44, 267);
INSERT INTO public.games VALUES (387, 781, 269);
INSERT INTO public.games VALUES (388, 832, 267);
INSERT INTO public.games VALUES (389, 546, 269);
INSERT INTO public.games VALUES (390, 245, 270);
INSERT INTO public.games VALUES (391, 27, 270);
INSERT INTO public.games VALUES (392, 923, 269);
INSERT INTO public.games VALUES (393, 125, 269);
INSERT INTO public.games VALUES (394, 322, 269);
INSERT INTO public.games VALUES (395, 505, 271);
INSERT INTO public.games VALUES (396, 914, 271);
INSERT INTO public.games VALUES (397, 17, 272);
INSERT INTO public.games VALUES (398, 657, 272);
INSERT INTO public.games VALUES (399, 241, 273);
INSERT INTO public.games VALUES (400, 562, 271);
INSERT INTO public.games VALUES (401, 488, 273);
INSERT INTO public.games VALUES (402, 21, 271);
INSERT INTO public.games VALUES (403, 372, 274);
INSERT INTO public.games VALUES (404, 456, 271);
INSERT INTO public.games VALUES (405, 291, 274);
INSERT INTO public.games VALUES (406, 315, 273);
INSERT INTO public.games VALUES (407, 772, 273);
INSERT INTO public.games VALUES (408, 757, 273);
INSERT INTO public.games VALUES (409, 454, 275);
INSERT INTO public.games VALUES (410, 995, 275);
INSERT INTO public.games VALUES (411, 805, 276);
INSERT INTO public.games VALUES (412, 766, 277);
INSERT INTO public.games VALUES (413, 231, 276);
INSERT INTO public.games VALUES (414, 125, 277);
INSERT INTO public.games VALUES (415, 832, 275);
INSERT INTO public.games VALUES (416, 339, 278);
INSERT INTO public.games VALUES (417, 512, 275);
INSERT INTO public.games VALUES (418, 302, 275);
INSERT INTO public.games VALUES (419, 939, 277);
INSERT INTO public.games VALUES (420, 408, 279);
INSERT INTO public.games VALUES (421, 520, 277);
INSERT INTO public.games VALUES (422, 125, 279);
INSERT INTO public.games VALUES (423, 223, 277);
INSERT INTO public.games VALUES (424, 448, 280);
INSERT INTO public.games VALUES (425, 436, 281);
INSERT INTO public.games VALUES (426, 561, 281);
INSERT INTO public.games VALUES (427, 895, 279);
INSERT INTO public.games VALUES (428, 975, 282);
INSERT INTO public.games VALUES (429, 93, 283);
INSERT INTO public.games VALUES (430, 143, 279);
INSERT INTO public.games VALUES (431, 652, 282);
INSERT INTO public.games VALUES (432, 654, 283);
INSERT INTO public.games VALUES (433, 874, 284);
INSERT INTO public.games VALUES (434, 223, 285);
INSERT INTO public.games VALUES (435, 861, 281);
INSERT INTO public.games VALUES (436, 726, 284);
INSERT INTO public.games VALUES (437, 431, 285);
INSERT INTO public.games VALUES (438, 808, 281);
INSERT INTO public.games VALUES (439, 394, 283);
INSERT INTO public.games VALUES (440, 755, 286);
INSERT INTO public.games VALUES (441, 200, 287);
INSERT INTO public.games VALUES (442, 79, 285);
INSERT INTO public.games VALUES (443, 732, 283);
INSERT INTO public.games VALUES (444, 351, 287);
INSERT INTO public.games VALUES (445, 355, 285);
INSERT INTO public.games VALUES (446, 292, 288);
INSERT INTO public.games VALUES (447, 576, 285);
INSERT INTO public.games VALUES (448, 285, 288);
INSERT INTO public.games VALUES (449, 691, 287);
INSERT INTO public.games VALUES (450, 913, 287);
INSERT INTO public.games VALUES (451, 212, 287);
INSERT INTO public.games VALUES (452, 133, 289);
INSERT INTO public.games VALUES (453, 43, 289);
INSERT INTO public.games VALUES (454, 452, 290);
INSERT INTO public.games VALUES (455, 66, 291);
INSERT INTO public.games VALUES (456, 819, 289);
INSERT INTO public.games VALUES (457, 619, 291);
INSERT INTO public.games VALUES (458, 701, 289);
INSERT INTO public.games VALUES (459, 872, 292);
INSERT INTO public.games VALUES (460, 932, 289);
INSERT INTO public.games VALUES (461, 845, 292);
INSERT INTO public.games VALUES (462, 112, 291);
INSERT INTO public.games VALUES (463, 386, 293);
INSERT INTO public.games VALUES (464, 350, 291);
INSERT INTO public.games VALUES (465, 777, 293);
INSERT INTO public.games VALUES (466, 473, 294);
INSERT INTO public.games VALUES (467, 595, 294);
INSERT INTO public.games VALUES (468, 564, 295);
INSERT INTO public.games VALUES (469, 538, 293);
INSERT INTO public.games VALUES (470, 237, 293);
INSERT INTO public.games VALUES (471, 823, 295);
INSERT INTO public.games VALUES (472, 304, 296);
INSERT INTO public.games VALUES (473, 697, 293);
INSERT INTO public.games VALUES (474, 432, 296);
INSERT INTO public.games VALUES (475, 191, 295);
INSERT INTO public.games VALUES (476, 720, 297);
INSERT INTO public.games VALUES (477, 683, 295);
INSERT INTO public.games VALUES (478, 161, 297);
INSERT INTO public.games VALUES (479, 24, 295);
INSERT INTO public.games VALUES (480, 784, 298);
INSERT INTO public.games VALUES (481, 585, 298);
INSERT INTO public.games VALUES (482, 436, 299);
INSERT INTO public.games VALUES (483, 611, 297);
INSERT INTO public.games VALUES (484, 409, 300);
INSERT INTO public.games VALUES (485, 556, 301);
INSERT INTO public.games VALUES (486, 434, 297);
INSERT INTO public.games VALUES (487, 338, 300);
INSERT INTO public.games VALUES (488, 793, 301);
INSERT INTO public.games VALUES (489, 529, 297);
INSERT INTO public.games VALUES (490, 297, 302);
INSERT INTO public.games VALUES (491, 762, 299);
INSERT INTO public.games VALUES (492, 182, 302);
INSERT INTO public.games VALUES (493, 914, 299);
INSERT INTO public.games VALUES (494, 807, 301);
INSERT INTO public.games VALUES (495, 838, 299);
INSERT INTO public.games VALUES (496, 1001, 301);
INSERT INTO public.games VALUES (497, 768, 301);
INSERT INTO public.games VALUES (498, 591, 303);
INSERT INTO public.games VALUES (499, 249, 303);
INSERT INTO public.games VALUES (500, 397, 304);
INSERT INTO public.games VALUES (501, 654, 304);
INSERT INTO public.games VALUES (502, 16, 305);
INSERT INTO public.games VALUES (503, 749, 303);
INSERT INTO public.games VALUES (504, 190, 306);
INSERT INTO public.games VALUES (505, 941, 303);
INSERT INTO public.games VALUES (506, 443, 307);
INSERT INTO public.games VALUES (507, 738, 306);
INSERT INTO public.games VALUES (508, 710, 308);
INSERT INTO public.games VALUES (509, 116, 305);
INSERT INTO public.games VALUES (510, 712, 309);
INSERT INTO public.games VALUES (511, 391, 308);
INSERT INTO public.games VALUES (512, 227, 305);
INSERT INTO public.games VALUES (513, 857, 309);
INSERT INTO public.games VALUES (514, 866, 307);
INSERT INTO public.games VALUES (515, 478, 310);
INSERT INTO public.games VALUES (516, 491, 307);
INSERT INTO public.games VALUES (517, 979, 310);
INSERT INTO public.games VALUES (518, 897, 307);
INSERT INTO public.games VALUES (519, 597, 309);
INSERT INTO public.games VALUES (520, 225, 309);
INSERT INTO public.games VALUES (521, 74, 309);
INSERT INTO public.games VALUES (522, 789, 311);
INSERT INTO public.games VALUES (523, 96, 311);
INSERT INTO public.games VALUES (524, 954, 312);
INSERT INTO public.games VALUES (525, 515, 312);
INSERT INTO public.games VALUES (526, 289, 311);
INSERT INTO public.games VALUES (527, 787, 311);
INSERT INTO public.games VALUES (528, 501, 311);
INSERT INTO public.games VALUES (529, 244, 313);
INSERT INTO public.games VALUES (530, 535, 313);
INSERT INTO public.games VALUES (531, 106, 314);
INSERT INTO public.games VALUES (532, 18, 314);
INSERT INTO public.games VALUES (533, 52, 313);
INSERT INTO public.games VALUES (534, 587, 313);
INSERT INTO public.games VALUES (535, 801, 313);
INSERT INTO public.games VALUES (536, 180, 315);
INSERT INTO public.games VALUES (537, 34, 315);
INSERT INTO public.games VALUES (538, 227, 316);
INSERT INTO public.games VALUES (539, 860, 316);
INSERT INTO public.games VALUES (540, 965, 315);
INSERT INTO public.games VALUES (541, 375, 315);
INSERT INTO public.games VALUES (542, 486, 315);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (238, 'reda');
INSERT INTO public.users VALUES (239, 'user_1696515844656');
INSERT INTO public.users VALUES (240, 'user_1696515844655');
INSERT INTO public.users VALUES (241, 'user_1696515886646');
INSERT INTO public.users VALUES (242, 'user_1696515886645');
INSERT INTO public.users VALUES (243, 'user_1696515893129');
INSERT INTO public.users VALUES (244, 'user_1696515893128');
INSERT INTO public.users VALUES (245, 'user_1696515899283');
INSERT INTO public.users VALUES (246, 'user_1696515899282');
INSERT INTO public.users VALUES (247, 'user_1696515917096');
INSERT INTO public.users VALUES (248, 'user_1696515917095');
INSERT INTO public.users VALUES (249, 'user_1696515926597');
INSERT INTO public.users VALUES (250, 'user_1696515926596');
INSERT INTO public.users VALUES (251, 'user_1696515935364');
INSERT INTO public.users VALUES (252, 'user_1696515935363');
INSERT INTO public.users VALUES (253, 'user_1696515945201');
INSERT INTO public.users VALUES (254, 'user_1696515945200');
INSERT INTO public.users VALUES (255, 'user_1696515959970');
INSERT INTO public.users VALUES (256, 'user_1696515959969');
INSERT INTO public.users VALUES (257, 'user_1696515983480');
INSERT INTO public.users VALUES (258, 'user_1696515983481');
INSERT INTO public.users VALUES (259, 'user_1696515986581');
INSERT INTO public.users VALUES (260, 'user_1696515986580');
INSERT INTO public.users VALUES (261, 'user_1696516071786');
INSERT INTO public.users VALUES (262, 'user_1696516071785');
INSERT INTO public.users VALUES (263, 'user_1696516095871');
INSERT INTO public.users VALUES (264, 'user_1696516095870');
INSERT INTO public.users VALUES (265, 'user_1696516192580');
INSERT INTO public.users VALUES (266, 'user_1696516192579');
INSERT INTO public.users VALUES (267, 'user_1696516199028');
INSERT INTO public.users VALUES (268, 'user_1696516199027');
INSERT INTO public.users VALUES (269, 'user_1696516206511');
INSERT INTO public.users VALUES (270, 'user_1696516206510');
INSERT INTO public.users VALUES (271, 'user_1696516215649');
INSERT INTO public.users VALUES (272, 'user_1696516215647');
INSERT INTO public.users VALUES (273, 'user_1696516221082');
INSERT INTO public.users VALUES (274, 'user_1696516221081');
INSERT INTO public.users VALUES (275, 'user_1696516239578');
INSERT INTO public.users VALUES (276, 'user_1696516239577');
INSERT INTO public.users VALUES (277, 'user_1696516244037');
INSERT INTO public.users VALUES (278, 'user_1696516244036');
INSERT INTO public.users VALUES (279, 'user_1696516251709');
INSERT INTO public.users VALUES (280, 'user_1696516251708');
INSERT INTO public.users VALUES (281, 'user_1696516256968');
INSERT INTO public.users VALUES (282, 'user_1696516256967');
INSERT INTO public.users VALUES (283, 'user_1696516260502');
INSERT INTO public.users VALUES (284, 'user_1696516260501');
INSERT INTO public.users VALUES (285, 'user_1696516263653');
INSERT INTO public.users VALUES (286, 'user_1696516263652');
INSERT INTO public.users VALUES (287, 'user_1696516269940');
INSERT INTO public.users VALUES (288, 'user_1696516269939');
INSERT INTO public.users VALUES (289, 'user_1696516284513');
INSERT INTO public.users VALUES (290, 'user_1696516284512');
INSERT INTO public.users VALUES (291, 'user_1696516290249');
INSERT INTO public.users VALUES (292, 'user_1696516290248');
INSERT INTO public.users VALUES (293, 'user_1696516298587');
INSERT INTO public.users VALUES (294, 'user_1696516298586');
INSERT INTO public.users VALUES (295, 'user_1696516304905');
INSERT INTO public.users VALUES (296, 'user_1696516304904');
INSERT INTO public.users VALUES (297, 'user_1696516312294');
INSERT INTO public.users VALUES (298, 'user_1696516312293');
INSERT INTO public.users VALUES (299, 'user_1696516317719');
INSERT INTO public.users VALUES (300, 'user_1696516317718');
INSERT INTO public.users VALUES (301, 'user_1696516320852');
INSERT INTO public.users VALUES (302, 'user_1696516320851');
INSERT INTO public.users VALUES (303, 'user_1696516379440');
INSERT INTO public.users VALUES (304, 'user_1696516379439');
INSERT INTO public.users VALUES (305, 'user_1696516385726');
INSERT INTO public.users VALUES (306, 'user_1696516385725');
INSERT INTO public.users VALUES (307, 'user_1696516389699');
INSERT INTO public.users VALUES (308, 'user_1696516389698');
INSERT INTO public.users VALUES (309, 'user_1696516392932');
INSERT INTO public.users VALUES (310, 'user_1696516392931');
INSERT INTO public.users VALUES (311, 'user_1696516448266');
INSERT INTO public.users VALUES (312, 'user_1696516448265');
INSERT INTO public.users VALUES (313, 'user_1696516474855');
INSERT INTO public.users VALUES (314, 'user_1696516474854');
INSERT INTO public.users VALUES (315, 'user_1696516528958');
INSERT INTO public.users VALUES (316, 'user_1696516528957');
INSERT INTO public.users VALUES (236, 'user_1696515078772');
INSERT INTO public.users VALUES (237, 'user_1696515078771');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 542, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 316, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


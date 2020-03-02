--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO dev;

--
-- Name: events; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    duration time without time zone,
    date date,
    description character varying,
    log_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO dev;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO dev;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: logs; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.logs (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    project_id bigint NOT NULL,
    tag_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.logs OWNER TO dev;

--
-- Name: logs_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE public.logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logs_id_seq OWNER TO dev;

--
-- Name: logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE public.logs_id_seq OWNED BY public.logs.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO dev;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO dev;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO dev;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    description character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO dev;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO dev;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: dev
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO dev;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: dev
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO dev;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dev
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: logs id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.logs ALTER COLUMN id SET DEFAULT nextval('public.logs_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-03-02 20:51:15.370751	2020-03-02 20:51:15.370751
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.events (id, duration, date, description, log_id, created_at, updated_at) FROM stdin;
2	00:00:04	2020-03-02	\N	7	2020-03-02 22:14:02.028919	2020-03-02 22:14:02.028919
3	00:00:08	2020-03-02	\N	8	2020-03-02 22:14:06.054659	2020-03-02 22:14:06.054659
\.


--
-- Data for Name: logs; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.logs (id, user_id, project_id, tag_id, created_at, updated_at) FROM stdin;
5	1	1	1	2020-03-02 22:13:52.389983	2020-03-02 22:13:52.389983
6	1	1	2	2020-03-02 22:13:57.077339	2020-03-02 22:13:57.077339
7	1	1	3	2020-03-02 22:14:01.977729	2020-03-02 22:14:01.977729
8	1	1	4	2020-03-02 22:14:05.996961	2020-03-02 22:14:05.996961
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.projects (id, name, description, created_at, updated_at) FROM stdin;
1	Desafio Sólides	Teste de Ruby on Rails	2020-03-02 21:55:02.413971	2020-03-02 21:55:02.413971
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.schema_migrations (version) FROM stdin;
20200302205150
20200302205856
20200302210005
20200302210138
20200302210300
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.tags (id, description, created_at, updated_at) FROM stdin;
1	Início do expediente	2020-03-02 21:44:10.447263	2020-03-02 21:44:10.447263
2	Início do almoço	2020-03-02 21:44:39.416542	2020-03-02 21:44:39.416542
3	Fim do almoço	2020-03-02 21:44:56.161841	2020-03-02 21:44:56.161841
4	Fim do expediente	2020-03-02 21:45:14.99928	2020-03-02 21:45:14.99928
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dev
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	teste@gmail.com	$2a$11$NgQYw8vaPD2dt8I1yJn1deUmcMF9X64aRU1DcklkrBD.5hg.dKkLC	\N	\N	\N	2020-03-02 21:32:44.857163	2020-03-02 21:32:44.857163
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.events_id_seq', 3, true);


--
-- Name: logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.logs_id_seq', 8, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.tags_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dev
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_events_on_log_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_events_on_log_id ON public.events USING btree (log_id);


--
-- Name: index_logs_on_project_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_logs_on_project_id ON public.logs USING btree (project_id);


--
-- Name: index_logs_on_tag_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_logs_on_tag_id ON public.logs USING btree (tag_id);


--
-- Name: index_logs_on_user_id; Type: INDEX; Schema: public; Owner: dev
--

CREATE INDEX index_logs_on_user_id ON public.logs USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: dev
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: logs fk_rails_1088b76504; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT fk_rails_1088b76504 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: events fk_rails_55cc555c3c; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_55cc555c3c FOREIGN KEY (log_id) REFERENCES public.logs(id);


--
-- Name: logs fk_rails_8fc980bf44; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT fk_rails_8fc980bf44 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: logs fk_rails_de87856db3; Type: FK CONSTRAINT; Schema: public; Owner: dev
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT fk_rails_de87856db3 FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- PostgreSQL database dump complete
--


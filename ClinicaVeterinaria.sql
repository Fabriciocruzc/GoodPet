                      false         Î           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         Ï           1262    16394    clinicaVeterinaria    DATABASE     t   CREATE DATABASE "clinicaVeterinaria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 $   DROP DATABASE "clinicaVeterinaria";
                postgres    false         Í            1259    16418    animais    TABLE     W  CREATE TABLE public.animais (
    id_animal integer NOT NULL,
    nome_animal character varying(50) NOT NULL,
    idade_animal integer NOT NULL,
    sexo_animal character varying(10) NOT NULL,
    raca_animal character varying(30) NOT NULL,
    especie_animal character varying(30) NOT NULL,
    dono_animal character varying(100) NOT NULL
);
    DROP TABLE public.animais;
       public         heap    postgres    false         Ì            1259    16416    animais_id_animal_seq    SEQUENCE        CREATE SEQUENCE public.animais_id_animal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.animais_id_animal_seq;
       public          postgres    false    205         Ð           0    0    animais_id_animal_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.animais_id_animal_seq OWNED BY public.animais.id_animal;
          public          postgres    false    204         Ë            1259    16410    clientes    TABLE     Ç  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nome_cliente character varying(100) NOT NULL,
    cpf_cliente character varying(20) NOT NULL,
    rg_clienet character varying(20) NOT NULL,
    telefone_cliente character varying(15) NOT NULL,
    idade_cliente integer NOT NULL,
    endereco_cliente character varying(50) NOT NULL,
    cidade_cliente character varying(50) NOT NULL,
    estado_cliente character varying(50) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false         Ê            1259    16408    clientes_id_cliente_seq    SEQUENCE        CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    203         Ñ           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    202         Ï            1259    16434 	   consultas    TABLE     J  CREATE TABLE public.consultas (
    id_consulta integer NOT NULL,
    animal_consuta character varying(20) NOT NULL,
    dono_consulta character varying(100) NOT NULL,
    veterinaio_consulta character varying(100) NOT NULL,
    data_consulta character varying(11) NOT NULL,
    horario_consulta character varying(30) NOT NULL
);
    DROP TABLE public.consultas;
       public         heap    postgres    false         Î            1259    16432    consultas_id_consulta_seq    SEQUENCE     ‘   CREATE SEQUENCE public.consultas_id_consulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.consultas_id_consulta_seq;
       public          postgres    false    207         Ò           0    0    consultas_id_consulta_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.consultas_id_consulta_seq OWNED BY public.consultas.id_consulta;
          public          postgres    false    206         É            1259    16402    veterinarios    TABLE     ~  CREATE TABLE public.veterinarios (
    id_veterinario integer NOT NULL,
    nome_veterinario character varying(100) NOT NULL,
    rg_veterinario character varying(20) NOT NULL,
    cpf_veterinario character varying(20) NOT NULL,
    telefono_veterinario character varying(15) NOT NULL,
    idade_veterinario integer NOT NULL,
    email_veterinario character varying(50) NOT NULL
);
     DROP TABLE public.veterinarios;
       public         heap    postgres    false         È            1259    16400    veterinarios_id_veterinario_seq    SEQUENCE     —   CREATE SEQUENCE public.veterinarios_id_veterinario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.veterinarios_id_veterinario_seq;
       public          postgres    false    201         Ó           0    0    veterinarios_id_veterinario_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.veterinarios_id_veterinario_seq OWNED BY public.veterinarios.id_veterinario;
          public          postgres    false    200         6           2604    16421    animais id_animal    DEFAULT     v   ALTER TABLE ONLY public.animais ALTER COLUMN id_animal SET DEFAULT nextval('public.animais_id_animal_seq'::regclass);
 @   ALTER TABLE public.animais ALTER COLUMN id_animal DROP DEFAULT;
       public          postgres    false    204    205    205         5           2604    16413    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    203    202    203         7           2604    16437    consultas id_consulta    DEFAULT     ~   ALTER TABLE ONLY public.consultas ALTER COLUMN id_consulta SET DEFAULT nextval('public.consultas_id_consulta_seq'::regclass);
 D   ALTER TABLE public.consultas ALTER COLUMN id_consulta DROP DEFAULT;
       public          postgres    false    206    207    207         4           2604    16405    veterinarios id_veterinario    DEFAULT     Š   ALTER TABLE ONLY public.veterinarios ALTER COLUMN id_veterinario SET DEFAULT nextval('public.veterinarios_id_veterinario_seq'::regclass);
 J   ALTER TABLE public.veterinarios ALTER COLUMN id_veterinario DROP DEFAULT;
       public          postgres    false    201    200    201         Ç          0    16418    animais 
   TABLE DATA           ~   COPY public.animais (id_animal, nome_animal, idade_animal, sexo_animal, raca_animal, especie_animal, dono_animal) FROM stdin;
    public          postgres    false    205       3015.dat Å          0    16410    clientes 
   TABLE DATA           ¨   COPY public.clientes (id_cliente, nome_cliente, cpf_cliente, rg_clienet, telefone_cliente, idade_cliente, endereco_cliente, cidade_cliente, estado_cliente) FROM stdin;
    public          postgres    false    203       3013.dat É          0    16434 	   consultas 
   TABLE DATA           …   COPY public.consultas (id_consulta, animal_consuta, dono_consulta, veterinaio_consulta, data_consulta, horario_consulta) FROM stdin;
    public          postgres    false    207       3017.dat Ã          0    16402    veterinarios 
   TABLE DATA           ¥   COPY public.veterinarios (id_veterinario, nome_veterinario, rg_veterinario, cpf_veterinario, telefono_veterinario, idade_veterinario, email_veterinario) FROM stdin;
    public          postgres    false    201       3011.dat Ô           0    0    animais_id_animal_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.animais_id_animal_seq', 2, true);
          public          postgres    false    204         Õ           0    0    clientes_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 2, true);
          public          postgres    false    202         Ö           0    0    consultas_id_consulta_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.consultas_id_consulta_seq', 1, true);
          public          postgres    false    206         ×           0    0    veterinarios_id_veterinario_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.veterinarios_id_veterinario_seq', 2, true);
          public          postgres    false    200         =           2606    16423    animais animais_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_pkey PRIMARY KEY (id_animal);
 >   ALTER TABLE ONLY public.animais DROP CONSTRAINT animais_pkey;
       public            postgres    false    205         ;           2606    16415    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    203         ?           2606    16439    consultas consultas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (id_consulta);
 B   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_pkey;
       public            postgres    false    207         9           2606    16407    veterinarios veterinarios_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.veterinarios
    ADD CONSTRAINT veterinarios_pkey PRIMARY KEY (id_veterinario);
 H   ALTER TABLE ONLY public.veterinarios DROP CONSTRAINT veterinarios_pkey;
       public            postgres    false    201                                                                                                                                          3015.dat                                                                                            0000600 0004000 0002000 00000000061 14034701360 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Elvis	4	Macho	Vira-lata	Cachorro	Fabricio
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3013.dat                                                                                            0000600 0004000 0002000 00000000107 14034701360 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Fabricio	233.434.456-79	2323545	32423568	25	asdhsjdg	asdjasd	RN
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3017.dat                                                                                            0000600 0004000 0002000 00000000005 14034701360 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3011.dat                                                                                            0000600 0004000 0002000 00000000067 14034701360 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	asdjsklad	43874394	1293892	1239021	2	jfkdlfhdjf
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000022020 14034701360 0015356 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

DROP DATABASE "clinicaVeterinaria";
--
-- Name: clinicaVeterinaria; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "clinicaVeterinaria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "clinicaVeterinaria" OWNER TO postgres;

\connect "clinicaVeterinaria"

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
-- Name: animais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animais (
    id_animal integer NOT NULL,
    nome_animal character varying(50) NOT NULL,
    idade_animal integer NOT NULL,
    sexo_animal character varying(10) NOT NULL,
    raca_animal character varying(30) NOT NULL,
    especie_animal character varying(30) NOT NULL,
    dono_animal character varying(100) NOT NULL
);


ALTER TABLE public.animais OWNER TO postgres;

--
-- Name: animais_id_animal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animais_id_animal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animais_id_animal_seq OWNER TO postgres;

--
-- Name: animais_id_animal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animais_id_animal_seq OWNED BY public.animais.id_animal;


--
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nome_cliente character varying(100) NOT NULL,
    cpf_cliente character varying(20) NOT NULL,
    rg_clienet character varying(20) NOT NULL,
    telefone_cliente character varying(15) NOT NULL,
    idade_cliente integer NOT NULL,
    endereco_cliente character varying(50) NOT NULL,
    cidade_cliente character varying(50) NOT NULL,
    estado_cliente character varying(50) NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- Name: consultas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consultas (
    id_consulta integer NOT NULL,
    animal_consuta character varying(20) NOT NULL,
    dono_consulta character varying(100) NOT NULL,
    veterinaio_consulta character varying(100) NOT NULL,
    data_consulta character varying(11) NOT NULL,
    horario_consulta character varying(30) NOT NULL
);


ALTER TABLE public.consultas OWNER TO postgres;

--
-- Name: consultas_id_consulta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consultas_id_consulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consultas_id_consulta_seq OWNER TO postgres;

--
-- Name: consultas_id_consulta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consultas_id_consulta_seq OWNED BY public.consultas.id_consulta;


--
-- Name: veterinarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veterinarios (
    id_veterinario integer NOT NULL,
    nome_veterinario character varying(100) NOT NULL,
    rg_veterinario character varying(20) NOT NULL,
    cpf_veterinario character varying(20) NOT NULL,
    telefono_veterinario character varying(15) NOT NULL,
    idade_veterinario integer NOT NULL,
    email_veterinario character varying(50) NOT NULL
);


ALTER TABLE public.veterinarios OWNER TO postgres;

--
-- Name: veterinarios_id_veterinario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.veterinarios_id_veterinario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.veterinarios_id_veterinario_seq OWNER TO postgres;

--
-- Name: veterinarios_id_veterinario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.veterinarios_id_veterinario_seq OWNED BY public.veterinarios.id_veterinario;


--
-- Name: animais id_animal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais ALTER COLUMN id_animal SET DEFAULT nextval('public.animais_id_animal_seq'::regclass);


--
-- Name: clientes id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- Name: consultas id_consulta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas ALTER COLUMN id_consulta SET DEFAULT nextval('public.consultas_id_consulta_seq'::regclass);


--
-- Name: veterinarios id_veterinario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veterinarios ALTER COLUMN id_veterinario SET DEFAULT nextval('public.veterinarios_id_veterinario_seq'::regclass);


--
-- Data for Name: animais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animais (id_animal, nome_animal, idade_animal, sexo_animal, raca_animal, especie_animal, dono_animal) FROM stdin;
\.
COPY public.animais (id_animal, nome_animal, idade_animal, sexo_animal, raca_animal, especie_animal, dono_animal) FROM '$$PATH$$/3015.dat';

--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nome_cliente, cpf_cliente, rg_clienet, telefone_cliente, idade_cliente, endereco_cliente, cidade_cliente, estado_cliente) FROM stdin;
\.
COPY public.clientes (id_cliente, nome_cliente, cpf_cliente, rg_clienet, telefone_cliente, idade_cliente, endereco_cliente, cidade_cliente, estado_cliente) FROM '$$PATH$$/3013.dat';

--
-- Data for Name: consultas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consultas (id_consulta, animal_consuta, dono_consulta, veterinaio_consulta, data_consulta, horario_consulta) FROM stdin;
\.
COPY public.consultas (id_consulta, animal_consuta, dono_consulta, veterinaio_consulta, data_consulta, horario_consulta) FROM '$$PATH$$/3017.dat';

--
-- Data for Name: veterinarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.veterinarios (id_veterinario, nome_veterinario, rg_veterinario, cpf_veterinario, telefono_veterinario, idade_veterinario, email_veterinario) FROM stdin;
\.
COPY public.veterinarios (id_veterinario, nome_veterinario, rg_veterinario, cpf_veterinario, telefono_veterinario, idade_veterinario, email_veterinario) FROM '$$PATH$$/3011.dat';

--
-- Name: animais_id_animal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animais_id_animal_seq', 2, true);


--
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 2, true);


--
-- Name: consultas_id_consulta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consultas_id_consulta_seq', 1, true);


--
-- Name: veterinarios_id_veterinario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.veterinarios_id_veterinario_seq', 2, true);


--
-- Name: animais animais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animais
    ADD CONSTRAINT animais_pkey PRIMARY KEY (id_animal);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- Name: consultas consultas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (id_consulta);


--
-- Name: veterinarios veterinarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veterinarios
    ADD CONSTRAINT veterinarios_pkey PRIMARY KEY (id_veterinario);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

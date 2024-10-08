toc.dat                                                                                             0000600 0004000 0002000 00000015231 14675125041 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |            persona    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    32873    persona    DATABASE     ~   CREATE DATABASE persona WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE persona;
                postgres    false         �            1259    32904 	   domicilio    TABLE     ~   CREATE TABLE public.domicilio (
    id_domicilio bigint NOT NULL,
    calle text,
    nro_calle bigint,
    localidad text
);
    DROP TABLE public.domicilio;
       public         heap    postgres    false         �            1259    32903    domicilio_id_domicilio_seq    SEQUENCE     �   ALTER TABLE public.domicilio ALTER COLUMN id_domicilio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.domicilio_id_domicilio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222         �            1259    32875    persona    TABLE     �   CREATE TABLE public.persona (
    id_persona bigint NOT NULL,
    nombre text,
    apellido text,
    fecha_de_nacimiento text,
    email text,
    dni text,
    id_domicilio bigint
);
    DROP TABLE public.persona;
       public         heap    postgres    false         �            1259    32874    persona_id_persona_seq    SEQUENCE     �   ALTER TABLE public.persona ALTER COLUMN id_persona ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.persona_id_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216         �            1259    32891    role    TABLE     b   CREATE TABLE public.role (
    id_role bigint NOT NULL,
    nombre text,
    id_usuario bigint
);
    DROP TABLE public.role;
       public         heap    postgres    false         �            1259    32890    role_id_role_seq    SEQUENCE     �   ALTER TABLE public.role ALTER COLUMN id_role ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.role_id_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220         �            1259    32883    usuario    TABLE     f   CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    username text,
    password text
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         �            1259    32882    usuario_id_usuario_seq    SEQUENCE     �   ALTER TABLE public.usuario ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218         �          0    32904 	   domicilio 
   TABLE DATA                 public          postgres    false    222       4809.dat �          0    32875    persona 
   TABLE DATA                 public          postgres    false    216       4803.dat �          0    32891    role 
   TABLE DATA                 public          postgres    false    220       4807.dat �          0    32883    usuario 
   TABLE DATA                 public          postgres    false    218       4805.dat �           0    0    domicilio_id_domicilio_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.domicilio_id_domicilio_seq', 2, true);
          public          postgres    false    221         �           0    0    persona_id_persona_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.persona_id_persona_seq', 7, true);
          public          postgres    false    215         �           0    0    role_id_role_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.role_id_role_seq', 3, true);
          public          postgres    false    219         �           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 2, true);
          public          postgres    false    217         0           2606    32910    domicilio domicilio_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.domicilio
    ADD CONSTRAINT domicilio_pkey PRIMARY KEY (id_domicilio);
 B   ALTER TABLE ONLY public.domicilio DROP CONSTRAINT domicilio_pkey;
       public            postgres    false    222         *           2606    32881    persona persona_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    216         .           2606    32897    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    220         ,           2606    32889    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    218         1           2606    32911    persona id_domicilio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT id_domicilio_fkey FOREIGN KEY (id_domicilio) REFERENCES public.domicilio(id_domicilio) NOT VALID;
 C   ALTER TABLE ONLY public.persona DROP CONSTRAINT id_domicilio_fkey;
       public          postgres    false    222    216    4656         2           2606    32898    role id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.role
    ADD CONSTRAINT id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;
 >   ALTER TABLE ONLY public.role DROP CONSTRAINT id_usuario_fkey;
       public          postgres    false    218    220    4652                                                                                                                                                                                                                                                                                                                                                                               4809.dat                                                                                            0000600 0004000 0002000 00000000272 14675125041 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.domicilio OVERRIDING SYSTEM VALUE VALUES (1, 'Saturn', 123, 'Quilmes');
INSERT INTO public.domicilio OVERRIDING SYSTEM VALUE VALUES (2, 'Jupiter', 456, 'New York');


                                                                                                                                                                                                                                                                                                                                      4803.dat                                                                                            0000600 0004000 0002000 00000000376 14675125041 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.persona OVERRIDING SYSTEM VALUE VALUES (6, 'Juan', 'Perez', '1995-10-22', 'jperez@mail.com', '11223344', 1);
INSERT INTO public.persona OVERRIDING SYSTEM VALUE VALUES (7, 'Jane', 'Doe', '1992-01-15', 'jdoe@mail.com', '00000011', 2);


                                                                                                                                                                                                                                                                  4807.dat                                                                                            0000600 0004000 0002000 00000000347 14675125041 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.role OVERRIDING SYSTEM VALUE VALUES (1, 'ROLE_USER', 1);
INSERT INTO public.role OVERRIDING SYSTEM VALUE VALUES (2, 'ROLE_USER', 2);
INSERT INTO public.role OVERRIDING SYSTEM VALUE VALUES (3, 'ROLE_ADMIN', 2);


                                                                                                                                                                                                                                                                                         4805.dat                                                                                            0000600 0004000 0002000 00000000423 14675125041 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (1, 'user1', '$2a$10$EV.UGgUAbSHvtCD15/6/7uAgZX0K6I8Q/oRhG8IWpcif/9m.LOe6C');
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (2, 'admin1', '$2a$10$VEYaqXDenAGLBOGNSPUEQu7AkjbODubJMtTxAT8RK.fzBrox2RmXm');


                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000013255 14675125041 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

DROP DATABASE persona;
--
-- Name: persona; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE persona WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';


ALTER DATABASE persona OWNER TO postgres;

\connect persona

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
-- Name: domicilio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domicilio (
    id_domicilio bigint NOT NULL,
    calle text,
    nro_calle bigint,
    localidad text
);


ALTER TABLE public.domicilio OWNER TO postgres;

--
-- Name: domicilio_id_domicilio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.domicilio ALTER COLUMN id_domicilio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.domicilio_id_domicilio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id_persona bigint NOT NULL,
    nombre text,
    apellido text,
    fecha_de_nacimiento text,
    email text,
    dni text,
    id_domicilio bigint
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- Name: persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.persona ALTER COLUMN id_persona ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.persona_id_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id_role bigint NOT NULL,
    nombre text,
    id_usuario bigint
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: role_id_role_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.role ALTER COLUMN id_role ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.role_id_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    username text,
    password text
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usuario ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: domicilio; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4809.dat

--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4803.dat

--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4807.dat

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4805.dat

--
-- Name: domicilio_id_domicilio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.domicilio_id_domicilio_seq', 2, true);


--
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_persona_seq', 7, true);


--
-- Name: role_id_role_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_role_seq', 3, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 2, true);


--
-- Name: domicilio domicilio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilio
    ADD CONSTRAINT domicilio_pkey PRIMARY KEY (id_domicilio);


--
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: persona id_domicilio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT id_domicilio_fkey FOREIGN KEY (id_domicilio) REFERENCES public.domicilio(id_domicilio) NOT VALID;


--
-- Name: role id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
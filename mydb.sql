PGDMP      7                 |            mydb    12.2    16.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24992    mydb    DATABASE        CREATE DATABASE mydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE mydb;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    25004    authorities    TABLE     �   CREATE TABLE public.authorities (
    id integer NOT NULL,
    username character varying(40) NOT NULL,
    authority character varying(40) NOT NULL
);
    DROP TABLE public.authorities;
       public         heap    postgres    false    6            �            1259    25009    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    email character varying(255),
    pwd character varying(255),
    role character varying(255)
);
    DROP TABLE public.customer;
       public         heap    postgres    false    6            �            1259    25029    customer_seq    SEQUENCE     v   CREATE SEQUENCE public.customer_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.customer_seq;
       public          postgres    false    6            �            1259    25017    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    6            �            1259    24999    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(40) NOT NULL,
    enabled integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    6                      0    25004    authorities 
   TABLE DATA           >   COPY public.authorities (id, username, authority) FROM stdin;
    public          postgres    false    203   �                 0    25009    customer 
   TABLE DATA           8   COPY public.customer (id, email, pwd, role) FROM stdin;
    public          postgres    false    204   �                 0    24999    users 
   TABLE DATA           @   COPY public.users (id, username, password, enabled) FROM stdin;
    public          postgres    false    202   %                  0    0    customer_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.customer_seq', 1, false);
          public          postgres    false    206                       0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    205            �
           2606    25008    authorities authorities_id_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.authorities
    ADD CONSTRAINT authorities_id_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.authorities DROP CONSTRAINT authorities_id_pkey;
       public            postgres    false    203            �
           2606    25016    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    204            �
           2606    25003    users users_id_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_pkey;
       public            postgres    false    202                  x�3��K�)���,/�,I����� C6�         .   x�3��K�)��+�/�OtH�M���K���4�Ĕ��<�=... �7         )   x�3��K�)���4426�4�2��H,(�sM̀1z\\\ ��h     
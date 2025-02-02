PGDMP         *            
    u            postgres    10.0    10.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    12938    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Hungarian_Hungary.1250' LC_CTYPE = 'Hungarian_Hungary.1250';
    DROP DATABASE postgres;
             postgres    false                       1262    12938    postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2821                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            	           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16393    etel    TABLE     h   CREATE TABLE etel (
    id integer,
    name text,
    mennyiseg integer,
    mennyisegfajta integer
);
    DROP TABLE public.etel;
       public         postgres    false    4            �            1259    16415    genelogy    TABLE     p   CREATE TABLE genelogy (
    id integer NOT NULL,
    parentid integer,
    szorzo real,
    gyerekid integer
);
    DROP TABLE public.genelogy;
       public         postgres    false    4            �            1259    16405 
   hozzavalok    TABLE     p   CREATE TABLE hozzavalok (
    id integer NOT NULL,
    atlagar integer,
    mennyiseg integer,
    name text
);
    DROP TABLE public.hozzavalok;
       public         postgres    false    4            �            1259    16408    mennyisegek    TABLE     M   CREATE TABLE mennyisegek (
    id integer,
    name character varying(40)
);
    DROP TABLE public.mennyisegek;
       public         postgres    false    4            �            1259    16462    FoodView    VIEW     *  CREATE VIEW "FoodView" AS
 SELECT et.id AS etel_id,
    hv.name AS hozzavalo_name,
    gy.szorzo,
    my.name AS mennyiseg_name
   FROM etel et,
    hozzavalok hv,
    genelogy gy,
    mennyisegek my
  WHERE ((1 = 1) AND (et.id = gy.parentid) AND (gy.gyerekid = hv.id) AND (hv.mennyiseg = my.id));
    DROP VIEW public."FoodView";
       public       postgres    false    199    200    200    200    199    198    198    198    197    4            �
          0    16393    etel 
   TABLE DATA               <   COPY etel (id, name, mennyiseg, mennyisegfajta) FROM stdin;
    public       postgres    false    197   �                  0    16415    genelogy 
   TABLE DATA               ;   COPY genelogy (id, parentid, szorzo, gyerekid) FROM stdin;
    public       postgres    false    200   �       �
          0    16405 
   hozzavalok 
   TABLE DATA               ;   COPY hozzavalok (id, atlagar, mennyiseg, name) FROM stdin;
    public       postgres    false    198          �
          0    16408    mennyisegek 
   TABLE DATA               (   COPY mennyisegek (id, name) FROM stdin;
    public       postgres    false    199   w       
           1259    16411    etel_idx    INDEX     7   CREATE UNIQUE INDEX etel_idx ON etel USING btree (id);
    DROP INDEX public.etel_idx;
       public         postgres    false    197            �
           1259    16418    genelogy_idx    INDEX     ?   CREATE UNIQUE INDEX genelogy_idx ON genelogy USING btree (id);
     DROP INDEX public.genelogy_idx;
       public         postgres    false    200            �
           1259    16413    hozzavalok_idx    INDEX     C   CREATE UNIQUE INDEX hozzavalok_idx ON hozzavalok USING btree (id);
 "   DROP INDEX public.hozzavalok_idx;
       public         postgres    false    198            �
           1259    16414    mennyisegek_idx    INDEX     E   CREATE UNIQUE INDEX mennyisegek_idx ON mennyisegek USING btree (id);
 #   DROP INDEX public.mennyisegek_idx;
       public         postgres    false    199            �
   1   x�3�:�0�$��$��ȀӐˈ�-����f����LN#Nc�=... �          4   x�ƹ 0����+�^�6l�c0���8�`����R��N�x���g      �
   O   x�3�46�4�,��J,�2�420�4��HL��M�2�44I��d��q�pE�9CR��L9M��M8�K��21z\\\ �9�      �
   $   x�3�L�N�2�LI�2���,I-�2����qqq j��     
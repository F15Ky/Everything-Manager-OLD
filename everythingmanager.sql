PGDMP     7        
            y            everythingmanager    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16386    everythingmanager    DATABASE     e   CREATE DATABASE everythingmanager WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
 !   DROP DATABASE everythingmanager;
                testuser    false            �            1259    16408    notes    TABLE     w   CREATE TABLE public.notes (
    id integer NOT NULL,
    description text,
    todo_id integer,
    deleted integer
);
    DROP TABLE public.notes;
       public         heap    postgres    false            �            1259    16443    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.notes_id_seq;
       public          postgres    false    201            �           0    0    notes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.notes_id_seq OWNED BY public.notes.id;
          public          postgres    false    203            �            1259    16400    toDo    TABLE     u   CREATE TABLE public."toDo" (
    id integer NOT NULL,
    description text,
    type integer,
    deleted integer
);
    DROP TABLE public."toDo";
       public         heap    postgres    false            �            1259    16427    toDo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."toDo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."toDo_id_seq";
       public          postgres    false    200            �           0    0    toDo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."toDo_id_seq" OWNED BY public."toDo".id;
          public          postgres    false    202            0           2604    16445    notes id    DEFAULT     d   ALTER TABLE ONLY public.notes ALTER COLUMN id SET DEFAULT nextval('public.notes_id_seq'::regclass);
 7   ALTER TABLE public.notes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    201            /           2604    16429    toDo id    DEFAULT     f   ALTER TABLE ONLY public."toDo" ALTER COLUMN id SET DEFAULT nextval('public."toDo_id_seq"'::regclass);
 8   ALTER TABLE public."toDo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    200            �          0    16408    notes 
   TABLE DATA           B   COPY public.notes (id, description, todo_id, deleted) FROM stdin;
    public          postgres    false    201   ?       �          0    16400    toDo 
   TABLE DATA           @   COPY public."toDo" (id, description, type, deleted) FROM stdin;
    public          postgres    false    200   \       �           0    0    notes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.notes_id_seq', 1, false);
          public          postgres    false    203            �           0    0    toDo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."toDo_id_seq"', 1, false);
          public          postgres    false    202            4           2606    16450    notes notes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_pkey;
       public            postgres    false    201            2           2606    16434    toDo toDo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."toDo"
    ADD CONSTRAINT "toDo_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."toDo" DROP CONSTRAINT "toDo_pkey";
       public            postgres    false    200            �      x������ � �      �      x������ � �     
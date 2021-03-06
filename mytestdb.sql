PGDMP     7    !                z           mytestdb    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    mytestdb    DATABASE     l   CREATE DATABASE mytestdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE mytestdb;
                postgres    false            ?            1259    16405    EmployeeApp_departments    TABLE     ?   CREATE TABLE public."EmployeeApp_departments" (
    "DepartmentId" integer NOT NULL,
    "DepartmentName" character varying(500) NOT NULL
);
 -   DROP TABLE public."EmployeeApp_departments";
       public         heap    postgres    false            ?            1259    16404 (   EmployeeApp_departments_DepartmentId_seq    SEQUENCE     ?   CREATE SEQUENCE public."EmployeeApp_departments_DepartmentId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."EmployeeApp_departments_DepartmentId_seq";
       public          postgres    false    212                       0    0 (   EmployeeApp_departments_DepartmentId_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."EmployeeApp_departments_DepartmentId_seq" OWNED BY public."EmployeeApp_departments"."DepartmentId";
          public          postgres    false    211            ?            1259    16412    EmployeeApp_employee    TABLE       CREATE TABLE public."EmployeeApp_employee" (
    "EmployeeId" integer NOT NULL,
    "EmployeeName" character varying(500) NOT NULL,
    "Department" character varying(500) NOT NULL,
    "DateOfJoining" date NOT NULL,
    "PhotoFileName" character varying(500) NOT NULL
);
 *   DROP TABLE public."EmployeeApp_employee";
       public         heap    postgres    false            ?            1259    16411 #   EmployeeApp_employee_EmployeeId_seq    SEQUENCE     ?   CREATE SEQUENCE public."EmployeeApp_employee_EmployeeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."EmployeeApp_employee_EmployeeId_seq";
       public          postgres    false    214                       0    0 #   EmployeeApp_employee_EmployeeId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."EmployeeApp_employee_EmployeeId_seq" OWNED BY public."EmployeeApp_employee"."EmployeeId";
          public          postgres    false    213            ?            1259    16396    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16395    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            g           2604    16408 $   EmployeeApp_departments DepartmentId    DEFAULT     ?   ALTER TABLE ONLY public."EmployeeApp_departments" ALTER COLUMN "DepartmentId" SET DEFAULT nextval('public."EmployeeApp_departments_DepartmentId_seq"'::regclass);
 W   ALTER TABLE public."EmployeeApp_departments" ALTER COLUMN "DepartmentId" DROP DEFAULT;
       public          postgres    false    212    211    212            h           2604    16415    EmployeeApp_employee EmployeeId    DEFAULT     ?   ALTER TABLE ONLY public."EmployeeApp_employee" ALTER COLUMN "EmployeeId" SET DEFAULT nextval('public."EmployeeApp_employee_EmployeeId_seq"'::regclass);
 R   ALTER TABLE public."EmployeeApp_employee" ALTER COLUMN "EmployeeId" DROP DEFAULT;
       public          postgres    false    214    213    214            f           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?          0    16405    EmployeeApp_departments 
   TABLE DATA           U   COPY public."EmployeeApp_departments" ("DepartmentId", "DepartmentName") FROM stdin;
    public          postgres    false    212   Z       ?          0    16412    EmployeeApp_employee 
   TABLE DATA           ~   COPY public."EmployeeApp_employee" ("EmployeeId", "EmployeeName", "Department", "DateOfJoining", "PhotoFileName") FROM stdin;
    public          postgres    false    214   ?       ?          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   ?       	           0    0 (   EmployeeApp_departments_DepartmentId_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."EmployeeApp_departments_DepartmentId_seq"', 1, false);
          public          postgres    false    211            
           0    0 #   EmployeeApp_employee_EmployeeId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."EmployeeApp_employee_EmployeeId_seq"', 1, false);
          public          postgres    false    213                       0    0    django_migrations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_migrations_id_seq', 1, true);
          public          postgres    false    209            l           2606    16410 4   EmployeeApp_departments EmployeeApp_departments_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."EmployeeApp_departments"
    ADD CONSTRAINT "EmployeeApp_departments_pkey" PRIMARY KEY ("DepartmentId");
 b   ALTER TABLE ONLY public."EmployeeApp_departments" DROP CONSTRAINT "EmployeeApp_departments_pkey";
       public            postgres    false    212            n           2606    16419 .   EmployeeApp_employee EmployeeApp_employee_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."EmployeeApp_employee"
    ADD CONSTRAINT "EmployeeApp_employee_pkey" PRIMARY KEY ("EmployeeId");
 \   ALTER TABLE ONLY public."EmployeeApp_employee" DROP CONSTRAINT "EmployeeApp_employee_pkey";
       public            postgres    false    214            j           2606    16403 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?      x?3???2?.-(?/*?????? 3??      ?   /   x?3?t?O???4202?50?52?L??ϫ??/-?+?K?????? ??	?      ?   I   x?3?t?-?ɯLMu,(?4000????,?L??4202?50?52S04?21?22ӳ0??41?60?26?????? S??     
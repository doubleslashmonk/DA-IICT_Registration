toc.dat                                                                                             100600  004000  002000  00000027122 12144700652 007307  0                                                                                                    ustar00                                                                                                                                                                                                                                                        PGDMP                           q            MscITRegistration    9.2.4    9.2.4 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           1262    16393    MscITRegistration    DATABASE     y   CREATE DATABASE "MscITRegistration" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
 #   DROP DATABASE "MscITRegistration";
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6         �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6         �            3079    11765    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    175         �            1259    16394    Actor    TABLE     y  CREATE TABLE "Actor" (
    "ActorId" integer NOT NULL,
    "ActorFirstName" text NOT NULL,
    "ActorMiddleName" text,
    "ActorLastName" text NOT NULL,
    "ActorPhoneNumber" numeric(8,0) NOT NULL,
    "EmailAddress" text NOT NULL,
    "ActorOfficeAddress" text NOT NULL,
    "RoleId" integer NOT NULL,
    "IsVerified" boolean NOT NULL,
    "ActorPassword" text NOT NULL
);
    DROP TABLE public."Actor";
       public         postgres    false    6         �            1259    16400    Centre    TABLE     <  CREATE TABLE "Centre" (
    "CentreId" integer NOT NULL,
    "CentreName" text NOT NULL,
    "AddressLine1" text NOT NULL,
    "AddressLine2" text,
    "CentrePostalCode" numeric(6,0) NOT NULL,
    "CityId" integer NOT NULL,
    "CentreContactNumber" numeric(13,0) NOT NULL,
    "CentreCapacity" integer NOT NULL
);
    DROP TABLE public."Centre";
       public         postgres    false    6         �            1259    16406    City    TABLE     t   CREATE TABLE "City" (
    "CityId" integer NOT NULL,
    "CityName" text NOT NULL,
    "CityState" text NOT NULL
);
    DROP TABLE public."City";
       public         postgres    false    6         �            1259    24606    Degree    TABLE     ~  CREATE TABLE "Degree" (
    "DegreeId" integer NOT NULL,
    "DegreeName" text NOT NULL,
    "University" text NOT NULL,
    "DegreeMonth" numeric(2,0) NOT NULL,
    "DegreeYear" numeric(4,0) NOT NULL,
    "RegistrationId" numeric(10,0) NOT NULL,
    "ObtainedPercentage" numeric(2,0),
    "MaxGPA" numeric(2,0),
    "ObtainedGPA" numeric(2,2),
    "DegreeType" boolean NOT NULL
);
    DROP TABLE public."Degree";
       public         postgres    false    6         �            1259    16418    Exam    TABLE     �   CREATE TABLE "Exam" (
    "ExamId" integer NOT NULL,
    "ExamName" text NOT NULL,
    "MaxMarks" numeric(4,0) NOT NULL,
    "ObtainedMarks" numeric(4,2) NOT NULL,
    "RegistrationId" numeric(10,0) NOT NULL
);
    DROP TABLE public."Exam";
       public         postgres    false    6         �            1259    16424    Registration    TABLE     r  CREATE TABLE "Registration" (
    "RegistrationId" numeric(10,0) NOT NULL,
    "StudentFirstName" text NOT NULL,
    "StudentMiddleName" text,
    "StudentLastName" text NOT NULL,
    "StudentGuardianName" text NOT NULL,
    "StudentGender" boolean NOT NULL,
    "StudentDOB" date NOT NULL,
    "ContactPersonName" text NOT NULL,
    "StudentAddressLine1" text NOT NULL,
    "StudentAddressLine2" text,
    "StudentCity" text NOT NULL,
    "StudentState" text NOT NULL,
    "StudentPostalCode" numeric(6,0) NOT NULL,
    "STDCode" numeric(5,0),
    "PhoneNumber" numeric(8,0),
    "MobileNumber" numeric(10,0) NOT NULL,
    "StudentEmailAddress" text NOT NULL,
    "CityPreference1" text NOT NULL,
    "CityPreference2" text NOT NULL,
    "CityPreference3" text NOT NULL,
    "DemandDraftNumber" numeric(6,0) NOT NULL,
    "DemandDraftDate" date NOT NULL,
    "BankBranch" text NOT NULL,
    "IsApproved" boolean NOT NULL,
    "HallTicketPath" text,
    "AllocatedCentreId" integer,
    "BankName" text NOT NULL,
    "IsEmailVerified" boolean NOT NULL,
    "StudentPhotoPath" text NOT NULL,
    "RegistrationDateAndTime" date NOT NULL
);
 "   DROP TABLE public."Registration";
       public         postgres    false    6         �           0    0 +   COLUMN "Registration"."StudentAddressLine1"    COMMENT     ?   COMMENT ON COLUMN "Registration"."StudentAddressLine1" IS '
';
            public       postgres    false    172         �            1259    16430    Role    TABLE     U   CREATE TABLE "Role" (
    "RoleId" integer NOT NULL,
    "RoleName" text NOT NULL
);
    DROP TABLE public."Role";
       public         postgres    false    6         �          0    16394    Actor 
   TABLE DATA               �   COPY "Actor" ("ActorId", "ActorFirstName", "ActorMiddleName", "ActorLastName", "ActorPhoneNumber", "EmailAddress", "ActorOfficeAddress", "RoleId", "IsVerified", "ActorPassword") FROM stdin;
    public       postgres    false    168       2000.dat �          0    16400    Centre 
   TABLE DATA               �   COPY "Centre" ("CentreId", "CentreName", "AddressLine1", "AddressLine2", "CentrePostalCode", "CityId", "CentreContactNumber", "CentreCapacity") FROM stdin;
    public       postgres    false    169       2001.dat �          0    16406    City 
   TABLE DATA               <   COPY "City" ("CityId", "CityName", "CityState") FROM stdin;
    public       postgres    false    170       2002.dat �          0    24606    Degree 
   TABLE DATA               �   COPY "Degree" ("DegreeId", "DegreeName", "University", "DegreeMonth", "DegreeYear", "RegistrationId", "ObtainedPercentage", "MaxGPA", "ObtainedGPA", "DegreeType") FROM stdin;
    public       postgres    false    174       2006.dat �          0    16418    Exam 
   TABLE DATA               ^   COPY "Exam" ("ExamId", "ExamName", "MaxMarks", "ObtainedMarks", "RegistrationId") FROM stdin;
    public       postgres    false    171       2003.dat �          0    16424    Registration 
   TABLE DATA               O  COPY "Registration" ("RegistrationId", "StudentFirstName", "StudentMiddleName", "StudentLastName", "StudentGuardianName", "StudentGender", "StudentDOB", "ContactPersonName", "StudentAddressLine1", "StudentAddressLine2", "StudentCity", "StudentState", "StudentPostalCode", "STDCode", "PhoneNumber", "MobileNumber", "StudentEmailAddress", "CityPreference1", "CityPreference2", "CityPreference3", "DemandDraftNumber", "DemandDraftDate", "BankBranch", "IsApproved", "HallTicketPath", "AllocatedCentreId", "BankName", "IsEmailVerified", "StudentPhotoPath", "RegistrationDateAndTime") FROM stdin;
    public       postgres    false    172       2004.dat �          0    16430    Role 
   TABLE DATA               /   COPY "Role" ("RoleId", "RoleName") FROM stdin;
    public       postgres    false    173       2005.dat �           2606    16437 
   Actor_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY "Actor"
    ADD CONSTRAINT "Actor_pkey" PRIMARY KEY ("ActorId");
 >   ALTER TABLE ONLY public."Actor" DROP CONSTRAINT "Actor_pkey";
       public         postgres    false    168    168         �           2606    16439    Centre_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Centre"
    ADD CONSTRAINT "Centre_pkey" PRIMARY KEY ("CentreId");
 @   ALTER TABLE ONLY public."Centre" DROP CONSTRAINT "Centre_pkey";
       public         postgres    false    169    169         �           2606    16441 	   City_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY "City"
    ADD CONSTRAINT "City_pkey" PRIMARY KEY ("CityId");
 <   ALTER TABLE ONLY public."City" DROP CONSTRAINT "City_pkey";
       public         postgres    false    170    170         �           2606    24613    Degree_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "Degree"
    ADD CONSTRAINT "Degree_pkey" PRIMARY KEY ("DegreeId", "RegistrationId");
 @   ALTER TABLE ONLY public."Degree" DROP CONSTRAINT "Degree_pkey";
       public         postgres    false    174    174    174         �           2606    16445 	   Exam_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Exam"
    ADD CONSTRAINT "Exam_pkey" PRIMARY KEY ("ExamId", "RegistrationId");
 <   ALTER TABLE ONLY public."Exam" DROP CONSTRAINT "Exam_pkey";
       public         postgres    false    171    171    171         �           2606    16447    Registration_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "Registration"
    ADD CONSTRAINT "Registration_pkey" PRIMARY KEY ("RegistrationId");
 L   ALTER TABLE ONLY public."Registration" DROP CONSTRAINT "Registration_pkey";
       public         postgres    false    172    172         �           2606    16449 	   Role_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY "Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("RoleId");
 <   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
       public         postgres    false    173    173         �           2606    24586    Actor_RoleId_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY "Actor"
    ADD CONSTRAINT "Actor_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES "Role"("RoleId");
 E   ALTER TABLE ONLY public."Actor" DROP CONSTRAINT "Actor_RoleId_fkey";
       public       postgres    false    168    1992    173         �           2606    24601    Centre_CityId_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY "Centre"
    ADD CONSTRAINT "Centre_CityId_fkey" FOREIGN KEY ("CityId") REFERENCES "City"("CityId");
 G   ALTER TABLE ONLY public."Centre" DROP CONSTRAINT "Centre_CityId_fkey";
       public       postgres    false    169    1986    170         �           2606    24614    Degree_RegistrationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Degree"
    ADD CONSTRAINT "Degree_RegistrationId_fkey" FOREIGN KEY ("RegistrationId") REFERENCES "Registration"("RegistrationId");
 O   ALTER TABLE ONLY public."Degree" DROP CONSTRAINT "Degree_RegistrationId_fkey";
       public       postgres    false    1990    174    172         �           2606    16465    Exam_RegistrationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Exam"
    ADD CONSTRAINT "Exam_RegistrationId_fkey" FOREIGN KEY ("RegistrationId") REFERENCES "Registration"("RegistrationId");
 K   ALTER TABLE ONLY public."Exam" DROP CONSTRAINT "Exam_RegistrationId_fkey";
       public       postgres    false    1990    172    171         �           2606    24624 #   Registration_AllocatedCentreId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Registration"
    ADD CONSTRAINT "Registration_AllocatedCentreId_fkey" FOREIGN KEY ("AllocatedCentreId") REFERENCES "Centre"("CentreId");
 ^   ALTER TABLE ONLY public."Registration" DROP CONSTRAINT "Registration_AllocatedCentreId_fkey";
       public       postgres    false    1984    169    172                                                                                                                                                                                                                                                                                                                                                                                                                                                      2000.dat                                                                                            100600  004000  002000  00000000005 12144700652 007072  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2001.dat                                                                                            100600  004000  002000  00000000005 12144700652 007073  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2002.dat                                                                                            100600  004000  002000  00000000005 12144700652 007074  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2006.dat                                                                                            100600  004000  002000  00000000005 12144700652 007100  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2003.dat                                                                                            100600  004000  002000  00000000005 12144700652 007075  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2004.dat                                                                                            100600  004000  002000  00000000005 12144700652 007076  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2005.dat                                                                                            100600  004000  002000  00000000005 12144700652 007077  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         100600  004000  002000  00000027155 12144700652 010242  0                                                                                                    ustar00                                                                                                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public."Registration" DROP CONSTRAINT "Registration_AllocatedCentreId_fkey";
ALTER TABLE ONLY public."Exam" DROP CONSTRAINT "Exam_RegistrationId_fkey";
ALTER TABLE ONLY public."Degree" DROP CONSTRAINT "Degree_RegistrationId_fkey";
ALTER TABLE ONLY public."Centre" DROP CONSTRAINT "Centre_CityId_fkey";
ALTER TABLE ONLY public."Actor" DROP CONSTRAINT "Actor_RoleId_fkey";
ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
ALTER TABLE ONLY public."Registration" DROP CONSTRAINT "Registration_pkey";
ALTER TABLE ONLY public."Exam" DROP CONSTRAINT "Exam_pkey";
ALTER TABLE ONLY public."Degree" DROP CONSTRAINT "Degree_pkey";
ALTER TABLE ONLY public."City" DROP CONSTRAINT "City_pkey";
ALTER TABLE ONLY public."Centre" DROP CONSTRAINT "Centre_pkey";
ALTER TABLE ONLY public."Actor" DROP CONSTRAINT "Actor_pkey";
DROP TABLE public."Role";
DROP TABLE public."Registration";
DROP TABLE public."Exam";
DROP TABLE public."Degree";
DROP TABLE public."City";
DROP TABLE public."Centre";
DROP TABLE public."Actor";
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Actor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Actor" (
    "ActorId" integer NOT NULL,
    "ActorFirstName" text NOT NULL,
    "ActorMiddleName" text,
    "ActorLastName" text NOT NULL,
    "ActorPhoneNumber" numeric(8,0) NOT NULL,
    "EmailAddress" text NOT NULL,
    "ActorOfficeAddress" text NOT NULL,
    "RoleId" integer NOT NULL,
    "IsVerified" boolean NOT NULL,
    "ActorPassword" text NOT NULL
);


ALTER TABLE public."Actor" OWNER TO postgres;

--
-- Name: Centre; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Centre" (
    "CentreId" integer NOT NULL,
    "CentreName" text NOT NULL,
    "AddressLine1" text NOT NULL,
    "AddressLine2" text,
    "CentrePostalCode" numeric(6,0) NOT NULL,
    "CityId" integer NOT NULL,
    "CentreContactNumber" numeric(13,0) NOT NULL,
    "CentreCapacity" integer NOT NULL
);


ALTER TABLE public."Centre" OWNER TO postgres;

--
-- Name: City; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "City" (
    "CityId" integer NOT NULL,
    "CityName" text NOT NULL,
    "CityState" text NOT NULL
);


ALTER TABLE public."City" OWNER TO postgres;

--
-- Name: Degree; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Degree" (
    "DegreeId" integer NOT NULL,
    "DegreeName" text NOT NULL,
    "University" text NOT NULL,
    "DegreeMonth" numeric(2,0) NOT NULL,
    "DegreeYear" numeric(4,0) NOT NULL,
    "RegistrationId" numeric(10,0) NOT NULL,
    "ObtainedPercentage" numeric(2,0),
    "MaxGPA" numeric(2,0),
    "ObtainedGPA" numeric(2,2),
    "DegreeType" boolean NOT NULL
);


ALTER TABLE public."Degree" OWNER TO postgres;

--
-- Name: Exam; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Exam" (
    "ExamId" integer NOT NULL,
    "ExamName" text NOT NULL,
    "MaxMarks" numeric(4,0) NOT NULL,
    "ObtainedMarks" numeric(4,2) NOT NULL,
    "RegistrationId" numeric(10,0) NOT NULL
);


ALTER TABLE public."Exam" OWNER TO postgres;

--
-- Name: Registration; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Registration" (
    "RegistrationId" numeric(10,0) NOT NULL,
    "StudentFirstName" text NOT NULL,
    "StudentMiddleName" text,
    "StudentLastName" text NOT NULL,
    "StudentGuardianName" text NOT NULL,
    "StudentGender" boolean NOT NULL,
    "StudentDOB" date NOT NULL,
    "ContactPersonName" text NOT NULL,
    "StudentAddressLine1" text NOT NULL,
    "StudentAddressLine2" text,
    "StudentCity" text NOT NULL,
    "StudentState" text NOT NULL,
    "StudentPostalCode" numeric(6,0) NOT NULL,
    "STDCode" numeric(5,0),
    "PhoneNumber" numeric(8,0),
    "MobileNumber" numeric(10,0) NOT NULL,
    "StudentEmailAddress" text NOT NULL,
    "CityPreference1" text NOT NULL,
    "CityPreference2" text NOT NULL,
    "CityPreference3" text NOT NULL,
    "DemandDraftNumber" numeric(6,0) NOT NULL,
    "DemandDraftDate" date NOT NULL,
    "BankBranch" text NOT NULL,
    "IsApproved" boolean NOT NULL,
    "HallTicketPath" text,
    "AllocatedCentreId" integer,
    "BankName" text NOT NULL,
    "IsEmailVerified" boolean NOT NULL,
    "StudentPhotoPath" text NOT NULL,
    "RegistrationDateAndTime" date NOT NULL
);


ALTER TABLE public."Registration" OWNER TO postgres;

--
-- Name: COLUMN "Registration"."StudentAddressLine1"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN "Registration"."StudentAddressLine1" IS '
';


--
-- Name: Role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Role" (
    "RoleId" integer NOT NULL,
    "RoleName" text NOT NULL
);


ALTER TABLE public."Role" OWNER TO postgres;

--
-- Data for Name: Actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Actor" ("ActorId", "ActorFirstName", "ActorMiddleName", "ActorLastName", "ActorPhoneNumber", "EmailAddress", "ActorOfficeAddress", "RoleId", "IsVerified", "ActorPassword") FROM stdin;
\.
COPY "Actor" ("ActorId", "ActorFirstName", "ActorMiddleName", "ActorLastName", "ActorPhoneNumber", "EmailAddress", "ActorOfficeAddress", "RoleId", "IsVerified", "ActorPassword") FROM '$$PATH$$/2000.dat';

--
-- Data for Name: Centre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Centre" ("CentreId", "CentreName", "AddressLine1", "AddressLine2", "CentrePostalCode", "CityId", "CentreContactNumber", "CentreCapacity") FROM stdin;
\.
COPY "Centre" ("CentreId", "CentreName", "AddressLine1", "AddressLine2", "CentrePostalCode", "CityId", "CentreContactNumber", "CentreCapacity") FROM '$$PATH$$/2001.dat';

--
-- Data for Name: City; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "City" ("CityId", "CityName", "CityState") FROM stdin;
\.
COPY "City" ("CityId", "CityName", "CityState") FROM '$$PATH$$/2002.dat';

--
-- Data for Name: Degree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Degree" ("DegreeId", "DegreeName", "University", "DegreeMonth", "DegreeYear", "RegistrationId", "ObtainedPercentage", "MaxGPA", "ObtainedGPA", "DegreeType") FROM stdin;
\.
COPY "Degree" ("DegreeId", "DegreeName", "University", "DegreeMonth", "DegreeYear", "RegistrationId", "ObtainedPercentage", "MaxGPA", "ObtainedGPA", "DegreeType") FROM '$$PATH$$/2006.dat';

--
-- Data for Name: Exam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Exam" ("ExamId", "ExamName", "MaxMarks", "ObtainedMarks", "RegistrationId") FROM stdin;
\.
COPY "Exam" ("ExamId", "ExamName", "MaxMarks", "ObtainedMarks", "RegistrationId") FROM '$$PATH$$/2003.dat';

--
-- Data for Name: Registration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Registration" ("RegistrationId", "StudentFirstName", "StudentMiddleName", "StudentLastName", "StudentGuardianName", "StudentGender", "StudentDOB", "ContactPersonName", "StudentAddressLine1", "StudentAddressLine2", "StudentCity", "StudentState", "StudentPostalCode", "STDCode", "PhoneNumber", "MobileNumber", "StudentEmailAddress", "CityPreference1", "CityPreference2", "CityPreference3", "DemandDraftNumber", "DemandDraftDate", "BankBranch", "IsApproved", "HallTicketPath", "AllocatedCentreId", "BankName", "IsEmailVerified", "StudentPhotoPath", "RegistrationDateAndTime") FROM stdin;
\.
COPY "Registration" ("RegistrationId", "StudentFirstName", "StudentMiddleName", "StudentLastName", "StudentGuardianName", "StudentGender", "StudentDOB", "ContactPersonName", "StudentAddressLine1", "StudentAddressLine2", "StudentCity", "StudentState", "StudentPostalCode", "STDCode", "PhoneNumber", "MobileNumber", "StudentEmailAddress", "CityPreference1", "CityPreference2", "CityPreference3", "DemandDraftNumber", "DemandDraftDate", "BankBranch", "IsApproved", "HallTicketPath", "AllocatedCentreId", "BankName", "IsEmailVerified", "StudentPhotoPath", "RegistrationDateAndTime") FROM '$$PATH$$/2004.dat';

--
-- Data for Name: Role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Role" ("RoleId", "RoleName") FROM stdin;
\.
COPY "Role" ("RoleId", "RoleName") FROM '$$PATH$$/2005.dat';

--
-- Name: Actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Actor"
    ADD CONSTRAINT "Actor_pkey" PRIMARY KEY ("ActorId");


--
-- Name: Centre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Centre"
    ADD CONSTRAINT "Centre_pkey" PRIMARY KEY ("CentreId");


--
-- Name: City_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "City"
    ADD CONSTRAINT "City_pkey" PRIMARY KEY ("CityId");


--
-- Name: Degree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Degree"
    ADD CONSTRAINT "Degree_pkey" PRIMARY KEY ("DegreeId", "RegistrationId");


--
-- Name: Exam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Exam"
    ADD CONSTRAINT "Exam_pkey" PRIMARY KEY ("ExamId", "RegistrationId");


--
-- Name: Registration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Registration"
    ADD CONSTRAINT "Registration_pkey" PRIMARY KEY ("RegistrationId");


--
-- Name: Role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("RoleId");


--
-- Name: Actor_RoleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Actor"
    ADD CONSTRAINT "Actor_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES "Role"("RoleId");


--
-- Name: Centre_CityId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Centre"
    ADD CONSTRAINT "Centre_CityId_fkey" FOREIGN KEY ("CityId") REFERENCES "City"("CityId");


--
-- Name: Degree_RegistrationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Degree"
    ADD CONSTRAINT "Degree_RegistrationId_fkey" FOREIGN KEY ("RegistrationId") REFERENCES "Registration"("RegistrationId");


--
-- Name: Exam_RegistrationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Exam"
    ADD CONSTRAINT "Exam_RegistrationId_fkey" FOREIGN KEY ("RegistrationId") REFERENCES "Registration"("RegistrationId");


--
-- Name: Registration_AllocatedCentreId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Registration"
    ADD CONSTRAINT "Registration_AllocatedCentreId_fkey" FOREIGN KEY ("AllocatedCentreId") REFERENCES "Centre"("CentreId");


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
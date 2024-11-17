--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    id integer NOT NULL,
    year bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    class_name character varying(255)
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- Name: classes_exam_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes_exam_links (
    id integer NOT NULL,
    class_id integer,
    exam_id integer,
    class_order double precision
);


ALTER TABLE public.classes_exam_links OWNER TO postgres;

--
-- Name: classes_exam_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_exam_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classes_exam_links_id_seq OWNER TO postgres;

--
-- Name: classes_exam_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_exam_links_id_seq OWNED BY public.classes_exam_links.id;


--
-- Name: classes_grade_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes_grade_links (
    id integer NOT NULL,
    class_id integer,
    grade_id integer,
    class_order double precision
);


ALTER TABLE public.classes_grade_links OWNER TO postgres;

--
-- Name: classes_grade_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_grade_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classes_grade_links_id_seq OWNER TO postgres;

--
-- Name: classes_grade_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_grade_links_id_seq OWNED BY public.classes_grade_links.id;


--
-- Name: classes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classes_id_seq OWNER TO postgres;

--
-- Name: classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;


--
-- Name: exam_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam_types (
    id integer NOT NULL,
    name_of_type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.exam_types OWNER TO postgres;

--
-- Name: exam_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exam_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exam_types_id_seq OWNER TO postgres;

--
-- Name: exam_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exam_types_id_seq OWNED BY public.exam_types.id;


--
-- Name: exams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exams (
    id integer NOT NULL,
    date_exam date,
    max_score integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.exams OWNER TO postgres;

--
-- Name: exams_exam_type_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exams_exam_type_links (
    id integer NOT NULL,
    exam_id integer,
    exam_type_id integer
);


ALTER TABLE public.exams_exam_type_links OWNER TO postgres;

--
-- Name: exams_exam_type_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exams_exam_type_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exams_exam_type_links_id_seq OWNER TO postgres;

--
-- Name: exams_exam_type_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exams_exam_type_links_id_seq OWNED BY public.exams_exam_type_links.id;


--
-- Name: exams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exams_id_seq OWNER TO postgres;

--
-- Name: exams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exams_id_seq OWNED BY public.exams.id;


--
-- Name: exams_student_mark_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exams_student_mark_links (
    id integer NOT NULL,
    exam_id integer,
    student_mark_id integer,
    exam_order double precision
);


ALTER TABLE public.exams_student_mark_links OWNER TO postgres;

--
-- Name: exams_student_mark_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exams_student_mark_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exams_student_mark_links_id_seq OWNER TO postgres;

--
-- Name: exams_student_mark_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exams_student_mark_links_id_seq OWNED BY public.exams_student_mark_links.id;


--
-- Name: exams_subject_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exams_subject_links (
    id integer NOT NULL,
    exam_id integer,
    subject_id integer
);


ALTER TABLE public.exams_subject_links OWNER TO postgres;

--
-- Name: exams_subject_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exams_subject_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exams_subject_links_id_seq OWNER TO postgres;

--
-- Name: exams_subject_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exams_subject_links_id_seq OWNED BY public.exams_subject_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    name_grade character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grades_id_seq OWNER TO postgres;

--
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: registers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registers (
    id integer NOT NULL,
    student_name character varying(255),
    student_last_name character varying(255),
    password character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.registers OWNER TO postgres;

--
-- Name: registers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.registers_id_seq OWNER TO postgres;

--
-- Name: registers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registers_id_seq OWNED BY public.registers.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO postgres;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO postgres;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO postgres;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNER TO postgres;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_releases OWNER TO postgres;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO postgres;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: student_marks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_marks (
    id integer NOT NULL,
    mark integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.student_marks OWNER TO postgres;

--
-- Name: student_marks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_marks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_marks_id_seq OWNER TO postgres;

--
-- Name: student_marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_marks_id_seq OWNED BY public.student_marks.id;


--
-- Name: student_marks_student_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_marks_student_links (
    id integer NOT NULL,
    student_mark_id integer,
    student_id integer
);


ALTER TABLE public.student_marks_student_links OWNER TO postgres;

--
-- Name: student_marks_student_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_marks_student_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_marks_student_links_id_seq OWNER TO postgres;

--
-- Name: student_marks_student_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_marks_student_links_id_seq OWNED BY public.student_marks_student_links.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    last_student_name character varying(255),
    father_name character varying(255),
    mother_name character varying(255),
    grand_father_name character varying(255),
    phone_number bigint,
    whatsapp_number bigint,
    mother_phonenumber bigint,
    father_phonenumber bigint,
    address text,
    birth_date date,
    constraints_schoolid bigint,
    social_situation character varying(255),
    living_situation character varying(255)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_class_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_class_links (
    id integer NOT NULL,
    student_id integer,
    class_id integer,
    student_order double precision
);


ALTER TABLE public.students_class_links OWNER TO postgres;

--
-- Name: students_class_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_class_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_class_links_id_seq OWNER TO postgres;

--
-- Name: students_class_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_class_links_id_seq OWNED BY public.students_class_links.id;


--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: subject_class_teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject_class_teachers (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.subject_class_teachers OWNER TO postgres;

--
-- Name: subject_class_teachers_class_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject_class_teachers_class_links (
    id integer NOT NULL,
    subject_class_teacher_id integer,
    class_id integer
);


ALTER TABLE public.subject_class_teachers_class_links OWNER TO postgres;

--
-- Name: subject_class_teachers_class_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_class_teachers_class_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subject_class_teachers_class_links_id_seq OWNER TO postgres;

--
-- Name: subject_class_teachers_class_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_class_teachers_class_links_id_seq OWNED BY public.subject_class_teachers_class_links.id;


--
-- Name: subject_class_teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_class_teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subject_class_teachers_id_seq OWNER TO postgres;

--
-- Name: subject_class_teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_class_teachers_id_seq OWNED BY public.subject_class_teachers.id;


--
-- Name: subject_class_teachers_subject_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject_class_teachers_subject_links (
    id integer NOT NULL,
    subject_class_teacher_id integer,
    subject_id integer
);


ALTER TABLE public.subject_class_teachers_subject_links OWNER TO postgres;

--
-- Name: subject_class_teachers_subject_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_class_teachers_subject_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subject_class_teachers_subject_links_id_seq OWNER TO postgres;

--
-- Name: subject_class_teachers_subject_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_class_teachers_subject_links_id_seq OWNED BY public.subject_class_teachers_subject_links.id;


--
-- Name: subject_class_teachers_teacher_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject_class_teachers_teacher_links (
    id integer NOT NULL,
    subject_class_teacher_id integer,
    teacher_id integer
);


ALTER TABLE public.subject_class_teachers_teacher_links OWNER TO postgres;

--
-- Name: subject_class_teachers_teacher_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_class_teachers_teacher_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subject_class_teachers_teacher_links_id_seq OWNER TO postgres;

--
-- Name: subject_class_teachers_teacher_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_class_teachers_teacher_links_id_seq OWNED BY public.subject_class_teachers_teacher_links.id;


--
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    name_subject character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subjects_id_seq OWNER TO postgres;

--
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    birth_date date,
    birth_city character varying(255),
    qualification text,
    phone_number bigint,
    starting_date date,
    departure_date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teachers_id_seq OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: classes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);


--
-- Name: classes_exam_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_exam_links ALTER COLUMN id SET DEFAULT nextval('public.classes_exam_links_id_seq'::regclass);


--
-- Name: classes_grade_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_grade_links ALTER COLUMN id SET DEFAULT nextval('public.classes_grade_links_id_seq'::regclass);


--
-- Name: exam_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_types ALTER COLUMN id SET DEFAULT nextval('public.exam_types_id_seq'::regclass);


--
-- Name: exams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams ALTER COLUMN id SET DEFAULT nextval('public.exams_id_seq'::regclass);


--
-- Name: exams_exam_type_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_exam_type_links ALTER COLUMN id SET DEFAULT nextval('public.exams_exam_type_links_id_seq'::regclass);


--
-- Name: exams_student_mark_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_student_mark_links ALTER COLUMN id SET DEFAULT nextval('public.exams_student_mark_links_id_seq'::regclass);


--
-- Name: exams_subject_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_subject_links ALTER COLUMN id SET DEFAULT nextval('public.exams_subject_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: registers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registers ALTER COLUMN id SET DEFAULT nextval('public.registers_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: student_marks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks ALTER COLUMN id SET DEFAULT nextval('public.student_marks_id_seq'::regclass);


--
-- Name: student_marks_student_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks_student_links ALTER COLUMN id SET DEFAULT nextval('public.student_marks_student_links_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: students_class_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_class_links ALTER COLUMN id SET DEFAULT nextval('public.students_class_links_id_seq'::regclass);


--
-- Name: subject_class_teachers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers ALTER COLUMN id SET DEFAULT nextval('public.subject_class_teachers_id_seq'::regclass);


--
-- Name: subject_class_teachers_class_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_class_links ALTER COLUMN id SET DEFAULT nextval('public.subject_class_teachers_class_links_id_seq'::regclass);


--
-- Name: subject_class_teachers_subject_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_subject_links ALTER COLUMN id SET DEFAULT nextval('public.subject_class_teachers_subject_links_id_seq'::regclass);


--
-- Name: subject_class_teachers_teacher_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_teacher_links ALTER COLUMN id SET DEFAULT nextval('public.subject_class_teachers_teacher_links_id_seq'::regclass);


--
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	{}	\N	{}	[]	2024-05-16 10:26:32.492	2024-05-16 10:26:32.492	\N	\N
2	plugin::upload.configure-view	{}	\N	{}	[]	2024-05-16 10:26:32.501	2024-05-16 10:26:32.501	\N	\N
3	plugin::upload.assets.create	{}	\N	{}	[]	2024-05-16 10:26:32.508	2024-05-16 10:26:32.508	\N	\N
4	plugin::upload.assets.update	{}	\N	{}	[]	2024-05-16 10:26:32.511	2024-05-16 10:26:32.511	\N	\N
5	plugin::upload.assets.download	{}	\N	{}	[]	2024-05-16 10:26:32.515	2024-05-16 10:26:32.515	\N	\N
6	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-05-16 10:26:32.518	2024-05-16 10:26:32.518	\N	\N
7	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-05-16 10:26:32.524	2024-05-16 10:26:32.524	\N	\N
8	plugin::upload.configure-view	{}	\N	{}	[]	2024-05-16 10:26:32.53	2024-05-16 10:26:32.53	\N	\N
9	plugin::upload.assets.create	{}	\N	{}	[]	2024-05-16 10:26:32.534	2024-05-16 10:26:32.534	\N	\N
10	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-05-16 10:26:32.538	2024-05-16 10:26:32.538	\N	\N
11	plugin::upload.assets.download	{}	\N	{}	[]	2024-05-16 10:26:32.542	2024-05-16 10:26:32.542	\N	\N
12	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-05-16 10:26:32.545	2024-05-16 10:26:32.545	\N	\N
16	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-05-16 10:26:32.585	2024-05-16 10:26:32.585	\N	\N
17	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-05-16 10:26:32.59	2024-05-16 10:26:32.59	\N	\N
18	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-05-16 10:26:32.593	2024-05-16 10:26:32.593	\N	\N
19	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-05-16 10:26:32.597	2024-05-16 10:26:32.597	\N	\N
20	plugin::content-type-builder.read	{}	\N	{}	[]	2024-05-16 10:26:32.601	2024-05-16 10:26:32.601	\N	\N
21	plugin::email.settings.read	{}	\N	{}	[]	2024-05-16 10:26:32.604	2024-05-16 10:26:32.604	\N	\N
22	plugin::upload.read	{}	\N	{}	[]	2024-05-16 10:26:32.609	2024-05-16 10:26:32.609	\N	\N
23	plugin::upload.assets.create	{}	\N	{}	[]	2024-05-16 10:26:32.612	2024-05-16 10:26:32.612	\N	\N
24	plugin::upload.assets.update	{}	\N	{}	[]	2024-05-16 10:26:32.615	2024-05-16 10:26:32.615	\N	\N
25	plugin::upload.assets.download	{}	\N	{}	[]	2024-05-16 10:26:32.618	2024-05-16 10:26:32.618	\N	\N
26	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-05-16 10:26:32.623	2024-05-16 10:26:32.623	\N	\N
27	plugin::upload.configure-view	{}	\N	{}	[]	2024-05-16 10:26:32.629	2024-05-16 10:26:32.629	\N	\N
28	plugin::upload.settings.read	{}	\N	{}	[]	2024-05-16 10:26:32.632	2024-05-16 10:26:32.632	\N	\N
29	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-05-16 10:26:32.636	2024-05-16 10:26:32.636	\N	\N
30	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-05-16 10:26:32.641	2024-05-16 10:26:32.641	\N	\N
31	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-05-16 10:26:32.645	2024-05-16 10:26:32.645	\N	\N
32	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-05-16 10:26:32.649	2024-05-16 10:26:32.649	\N	\N
33	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-05-16 10:26:32.653	2024-05-16 10:26:32.653	\N	\N
34	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-05-16 10:26:32.657	2024-05-16 10:26:32.657	\N	\N
35	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-05-16 10:26:32.66	2024-05-16 10:26:32.66	\N	\N
36	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-05-16 10:26:32.663	2024-05-16 10:26:32.663	\N	\N
37	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-05-16 10:26:32.666	2024-05-16 10:26:32.666	\N	\N
38	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-05-16 10:26:32.671	2024-05-16 10:26:32.671	\N	\N
39	plugin::i18n.locale.create	{}	\N	{}	[]	2024-05-16 10:26:32.676	2024-05-16 10:26:32.676	\N	\N
40	plugin::i18n.locale.read	{}	\N	{}	[]	2024-05-16 10:26:32.681	2024-05-16 10:26:32.681	\N	\N
41	plugin::i18n.locale.update	{}	\N	{}	[]	2024-05-16 10:26:32.686	2024-05-16 10:26:32.686	\N	\N
42	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-05-16 10:26:32.691	2024-05-16 10:26:32.691	\N	\N
43	admin::marketplace.read	{}	\N	{}	[]	2024-05-16 10:26:32.697	2024-05-16 10:26:32.697	\N	\N
44	admin::webhooks.create	{}	\N	{}	[]	2024-05-16 10:26:32.701	2024-05-16 10:26:32.701	\N	\N
45	admin::webhooks.read	{}	\N	{}	[]	2024-05-16 10:26:32.705	2024-05-16 10:26:32.705	\N	\N
46	admin::webhooks.update	{}	\N	{}	[]	2024-05-16 10:26:32.71	2024-05-16 10:26:32.71	\N	\N
47	admin::webhooks.delete	{}	\N	{}	[]	2024-05-16 10:26:32.714	2024-05-16 10:26:32.714	\N	\N
48	admin::users.create	{}	\N	{}	[]	2024-05-16 10:26:32.719	2024-05-16 10:26:32.719	\N	\N
49	admin::users.read	{}	\N	{}	[]	2024-05-16 10:26:32.724	2024-05-16 10:26:32.724	\N	\N
50	admin::users.update	{}	\N	{}	[]	2024-05-16 10:26:32.729	2024-05-16 10:26:32.729	\N	\N
51	admin::users.delete	{}	\N	{}	[]	2024-05-16 10:26:32.734	2024-05-16 10:26:32.734	\N	\N
52	admin::roles.create	{}	\N	{}	[]	2024-05-16 10:26:32.739	2024-05-16 10:26:32.739	\N	\N
53	admin::roles.read	{}	\N	{}	[]	2024-05-16 10:26:32.743	2024-05-16 10:26:32.743	\N	\N
54	admin::roles.update	{}	\N	{}	[]	2024-05-16 10:26:32.747	2024-05-16 10:26:32.747	\N	\N
55	admin::roles.delete	{}	\N	{}	[]	2024-05-16 10:26:32.75	2024-05-16 10:26:32.75	\N	\N
56	admin::api-tokens.access	{}	\N	{}	[]	2024-05-16 10:26:32.754	2024-05-16 10:26:32.754	\N	\N
57	admin::api-tokens.create	{}	\N	{}	[]	2024-05-16 10:26:32.759	2024-05-16 10:26:32.759	\N	\N
58	admin::api-tokens.read	{}	\N	{}	[]	2024-05-16 10:26:32.763	2024-05-16 10:26:32.763	\N	\N
59	admin::api-tokens.update	{}	\N	{}	[]	2024-05-16 10:26:32.768	2024-05-16 10:26:32.768	\N	\N
60	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-05-16 10:26:32.772	2024-05-16 10:26:32.772	\N	\N
61	admin::api-tokens.delete	{}	\N	{}	[]	2024-05-16 10:26:32.776	2024-05-16 10:26:32.776	\N	\N
62	admin::project-settings.update	{}	\N	{}	[]	2024-05-16 10:26:32.78	2024-05-16 10:26:32.78	\N	\N
63	admin::project-settings.read	{}	\N	{}	[]	2024-05-16 10:26:32.784	2024-05-16 10:26:32.784	\N	\N
64	admin::transfer.tokens.access	{}	\N	{}	[]	2024-05-16 10:26:32.788	2024-05-16 10:26:32.788	\N	\N
65	admin::transfer.tokens.create	{}	\N	{}	[]	2024-05-16 10:26:32.793	2024-05-16 10:26:32.793	\N	\N
66	admin::transfer.tokens.read	{}	\N	{}	[]	2024-05-16 10:26:32.797	2024-05-16 10:26:32.797	\N	\N
67	admin::transfer.tokens.update	{}	\N	{}	[]	2024-05-16 10:26:32.801	2024-05-16 10:26:32.801	\N	\N
68	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-05-16 10:26:32.806	2024-05-16 10:26:32.806	\N	\N
69	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-05-16 10:26:32.811	2024-05-16 10:26:32.811	\N	\N
73	plugin::content-manager.explorer.delete	{}	api::student.student	{}	[]	2024-05-18 13:50:50.829	2024-05-18 13:50:50.829	\N	\N
74	plugin::content-manager.explorer.publish	{}	api::student.student	{}	[]	2024-05-18 13:50:50.833	2024-05-18 13:50:50.833	\N	\N
81	plugin::content-manager.explorer.delete	{}	api::teacher.teacher	{}	[]	2024-05-18 22:40:11.936	2024-05-18 22:40:11.936	\N	\N
82	plugin::content-manager.explorer.publish	{}	api::teacher.teacher	{}	[]	2024-05-18 22:40:11.942	2024-05-18 22:40:11.942	\N	\N
86	plugin::content-manager.explorer.delete	{}	api::grade.grade	{}	[]	2024-05-18 22:42:40.916	2024-05-18 22:42:40.916	\N	\N
87	plugin::content-manager.explorer.publish	{}	api::grade.grade	{}	[]	2024-05-18 22:42:40.922	2024-05-18 22:42:40.922	\N	\N
91	plugin::content-manager.explorer.delete	{}	api::subject.subject	{}	[]	2024-05-18 23:15:31.041	2024-05-18 23:15:31.041	\N	\N
92	plugin::content-manager.explorer.publish	{}	api::subject.subject	{}	[]	2024-05-18 23:15:31.047	2024-05-18 23:15:31.047	\N	\N
99	plugin::content-manager.explorer.delete	{}	api::class.class	{}	[]	2024-05-18 23:20:03.71	2024-05-18 23:20:03.71	\N	\N
100	plugin::content-manager.explorer.publish	{}	api::class.class	{}	[]	2024-05-18 23:20:03.715	2024-05-18 23:20:03.715	\N	\N
110	plugin::content-manager.explorer.create	{}	api::grade.grade	{"fields": ["name_grade", "classes"]}	[]	2024-05-19 18:58:57.381	2024-05-19 18:58:57.381	\N	\N
111	plugin::content-manager.explorer.read	{}	api::grade.grade	{"fields": ["name_grade", "classes"]}	[]	2024-05-19 18:58:57.391	2024-05-19 18:58:57.391	\N	\N
112	plugin::content-manager.explorer.update	{}	api::grade.grade	{"fields": ["name_grade", "classes"]}	[]	2024-05-19 18:58:57.397	2024-05-19 18:58:57.397	\N	\N
119	plugin::content-manager.explorer.delete	{}	api::exam-type.exam-type	{}	[]	2024-05-19 19:38:27.723	2024-05-19 19:38:27.723	\N	\N
120	plugin::content-manager.explorer.publish	{}	api::exam-type.exam-type	{}	[]	2024-05-19 19:38:27.726	2024-05-19 19:38:27.726	\N	\N
123	plugin::content-manager.explorer.create	{}	api::subject-class-teacher.subject-class-teacher	{"fields": ["class", "subject", "teacher"]}	[]	2024-05-19 19:45:17.558	2024-05-19 19:45:17.558	\N	\N
124	plugin::content-manager.explorer.create	{}	api::teacher.teacher	{"fields": ["first_name", "last_name", "birth_date", "birth_city", "qualification", "phone_number", "starting_date", "departure_date", "subject_class_teacher"]}	[]	2024-05-19 19:45:17.564	2024-05-19 19:45:17.564	\N	\N
127	plugin::content-manager.explorer.read	{}	api::subject-class-teacher.subject-class-teacher	{"fields": ["class", "subject", "teacher"]}	[]	2024-05-19 19:45:17.58	2024-05-19 19:45:17.58	\N	\N
128	plugin::content-manager.explorer.read	{}	api::teacher.teacher	{"fields": ["first_name", "last_name", "birth_date", "birth_city", "qualification", "phone_number", "starting_date", "departure_date", "subject_class_teacher"]}	[]	2024-05-19 19:45:17.584	2024-05-19 19:45:17.584	\N	\N
131	plugin::content-manager.explorer.update	{}	api::subject-class-teacher.subject-class-teacher	{"fields": ["class", "subject", "teacher"]}	[]	2024-05-19 19:45:17.599	2024-05-19 19:45:17.599	\N	\N
132	plugin::content-manager.explorer.update	{}	api::teacher.teacher	{"fields": ["first_name", "last_name", "birth_date", "birth_city", "qualification", "phone_number", "starting_date", "departure_date", "subject_class_teacher"]}	[]	2024-05-19 19:45:17.604	2024-05-19 19:45:17.604	\N	\N
133	plugin::content-manager.explorer.delete	{}	api::subject-class-teacher.subject-class-teacher	{}	[]	2024-05-19 19:45:17.609	2024-05-19 19:45:17.609	\N	\N
134	plugin::content-manager.explorer.publish	{}	api::subject-class-teacher.subject-class-teacher	{}	[]	2024-05-19 19:45:17.614	2024-05-19 19:45:17.614	\N	\N
137	plugin::content-manager.explorer.create	{}	api::exam-type.exam-type	{"fields": ["name_of_type", "exam"]}	[]	2024-05-19 19:50:42.902	2024-05-19 19:50:42.902	\N	\N
138	plugin::content-manager.explorer.create	{}	api::subject.subject	{"fields": ["name_subject", "subject_class_teacher", "exam"]}	[]	2024-05-19 19:50:42.907	2024-05-19 19:50:42.907	\N	\N
141	plugin::content-manager.explorer.read	{}	api::exam-type.exam-type	{"fields": ["name_of_type", "exam"]}	[]	2024-05-19 19:50:42.918	2024-05-19 19:50:42.918	\N	\N
142	plugin::content-manager.explorer.read	{}	api::subject.subject	{"fields": ["name_subject", "subject_class_teacher", "exam"]}	[]	2024-05-19 19:50:42.923	2024-05-19 19:50:42.923	\N	\N
145	plugin::content-manager.explorer.update	{}	api::exam-type.exam-type	{"fields": ["name_of_type", "exam"]}	[]	2024-05-19 19:50:42.936	2024-05-19 19:50:42.936	\N	\N
146	plugin::content-manager.explorer.update	{}	api::subject.subject	{"fields": ["name_subject", "subject_class_teacher", "exam"]}	[]	2024-05-19 19:50:42.942	2024-05-19 19:50:42.942	\N	\N
147	plugin::content-manager.explorer.delete	{}	api::exam.exam	{}	[]	2024-05-19 19:50:42.946	2024-05-19 19:50:42.946	\N	\N
148	plugin::content-manager.explorer.publish	{}	api::exam.exam	{}	[]	2024-05-19 19:50:42.951	2024-05-19 19:50:42.951	\N	\N
155	plugin::content-manager.explorer.delete	{}	api::student-mark.student-mark	{}	[]	2024-05-19 19:52:51.445	2024-05-19 19:52:51.445	\N	\N
156	plugin::content-manager.explorer.publish	{}	api::student-mark.student-mark	{}	[]	2024-05-19 19:52:51.449	2024-05-19 19:52:51.449	\N	\N
157	plugin::content-manager.explorer.create	{}	api::class.class	{"fields": ["year", "class_name", "grade", "subject_class_teacher", "exam", "students"]}	[]	2024-05-19 19:56:06.904	2024-05-19 19:56:06.904	\N	\N
159	plugin::content-manager.explorer.read	{}	api::class.class	{"fields": ["year", "class_name", "grade", "subject_class_teacher", "exam", "students"]}	[]	2024-05-19 19:56:06.918	2024-05-19 19:56:06.918	\N	\N
161	plugin::content-manager.explorer.update	{}	api::class.class	{"fields": ["year", "class_name", "grade", "subject_class_teacher", "exam", "students"]}	[]	2024-05-19 19:56:06.927	2024-05-19 19:56:06.927	\N	\N
163	plugin::content-manager.explorer.create	{}	api::register.register	{"fields": ["student_name", "student_last_name", "password"]}	[]	2024-05-20 08:40:11.021	2024-05-20 08:40:11.021	\N	\N
164	plugin::content-manager.explorer.read	{}	api::register.register	{"fields": ["student_name", "student_last_name", "password"]}	[]	2024-05-20 08:40:11.031	2024-05-20 08:40:11.031	\N	\N
165	plugin::content-manager.explorer.update	{}	api::register.register	{"fields": ["student_name", "student_last_name", "password"]}	[]	2024-05-20 08:40:11.038	2024-05-20 08:40:11.038	\N	\N
166	plugin::content-manager.explorer.delete	{}	api::register.register	{}	[]	2024-05-20 08:40:11.044	2024-05-20 08:40:11.044	\N	\N
167	plugin::content-manager.explorer.publish	{}	api::register.register	{}	[]	2024-05-20 08:40:11.049	2024-05-20 08:40:11.049	\N	\N
207	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-09-23 20:47:34.93	2024-09-23 20:47:34.93	\N	\N
208	plugin::content-manager.explorer.create	{}	api::exam.exam	{"fields": ["date_exam", "max_score", "exam_type", "subject", "classes", "student_mark"]}	[]	2024-09-23 20:47:34.947	2024-09-23 20:47:34.947	\N	\N
209	plugin::content-manager.explorer.create	{}	api::student.student	{"fields": ["first_name", "last_student_name", "father_name", "mother_name", "grand_father_name", "phone_number", "whatsapp_number", "mother_phonenumber", "father_phonenumber", "address", "birth_date", "constraints_schoolid", "social_situation", "living_situation", "class"]}	[]	2024-09-23 20:47:34.952	2024-09-23 20:47:34.952	\N	\N
210	plugin::content-manager.explorer.create	{}	api::student-mark.student-mark	{"fields": ["mark", "exams", "student"]}	[]	2024-09-23 20:47:34.956	2024-09-23 20:47:34.956	\N	\N
211	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-09-23 20:47:34.961	2024-09-23 20:47:34.961	\N	\N
212	plugin::content-manager.explorer.read	{}	api::exam.exam	{"fields": ["date_exam", "max_score", "exam_type", "subject", "classes", "student_mark"]}	[]	2024-09-23 20:47:34.967	2024-09-23 20:47:34.967	\N	\N
213	plugin::content-manager.explorer.read	{}	api::student.student	{"fields": ["first_name", "last_student_name", "father_name", "mother_name", "grand_father_name", "phone_number", "whatsapp_number", "mother_phonenumber", "father_phonenumber", "address", "birth_date", "constraints_schoolid", "social_situation", "living_situation", "class"]}	[]	2024-09-23 20:47:34.972	2024-09-23 20:47:34.972	\N	\N
214	plugin::content-manager.explorer.read	{}	api::student-mark.student-mark	{"fields": ["mark", "exams", "student"]}	[]	2024-09-23 20:47:34.977	2024-09-23 20:47:34.977	\N	\N
215	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-09-23 20:47:34.982	2024-09-23 20:47:34.982	\N	\N
216	plugin::content-manager.explorer.update	{}	api::exam.exam	{"fields": ["date_exam", "max_score", "exam_type", "subject", "classes", "student_mark"]}	[]	2024-09-23 20:47:34.987	2024-09-23 20:47:34.987	\N	\N
217	plugin::content-manager.explorer.update	{}	api::student.student	{"fields": ["first_name", "last_student_name", "father_name", "mother_name", "grand_father_name", "phone_number", "whatsapp_number", "mother_phonenumber", "father_phonenumber", "address", "birth_date", "constraints_schoolid", "social_situation", "living_situation", "class"]}	[]	2024-09-23 20:47:34.992	2024-09-23 20:47:34.992	\N	\N
218	plugin::content-manager.explorer.update	{}	api::student-mark.student-mark	{"fields": ["mark", "exams", "student"]}	[]	2024-09-23 20:47:34.997	2024-09-23 20:47:34.997	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
73	73	1	61
74	74	1	62
81	81	1	69
82	82	1	70
86	86	1	74
87	87	1	75
91	91	1	79
92	92	1	80
99	99	1	87
100	100	1	88
110	110	1	98
111	111	1	99
112	112	1	100
119	119	1	107
120	120	1	108
123	123	1	111
124	124	1	112
127	127	1	115
128	128	1	116
131	131	1	119
132	132	1	120
133	133	1	121
134	134	1	122
137	137	1	125
138	138	1	126
141	141	1	129
142	142	1	130
145	145	1	133
146	146	1	134
147	147	1	135
148	148	1	136
155	155	1	143
156	156	1	144
157	157	1	145
159	159	1	147
161	161	1	149
163	163	1	151
164	164	1	152
165	165	1	153
166	166	1	154
167	167	1	155
207	207	1	156
208	208	1	157
209	209	1	158
210	210	1	159
211	211	1	160
212	212	1	161
213	213	1	162
214	214	1	163
215	215	1	164
216	216	1	165
217	217	1	166
218	218	1	167
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-05-16 10:26:32.474	2024-05-16 10:26:32.474	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-05-16 10:26:32.485	2024-05-16 10:26:32.485	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-05-16 10:26:32.487	2024-05-16 10:26:32.487	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	highschool	devlopment	\N	highschoolkhawla@gmail.com	$2a$10$uHTcx0sSRMG.MXDwq2hiAO/7RIc.0G/LtHwo.5Nc0qF9.EWboN1ce	\N	\N	t	f	\N	2024-05-16 10:29:53.296	2024-05-16 10:29:53.296	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes (id, year, created_at, updated_at, published_at, created_by_id, updated_by_id, class_name) FROM stdin;
2	2024	2024-06-02 19:43:31.052	2024-06-02 19:43:34.835	2024-06-02 19:43:34.827	1	1	اولى
1	2024	2024-06-02 19:41:03.154	2024-08-23 23:12:04.672	2024-06-02 19:43:45.151	1	1	اولى
3	2024	2024-09-12 08:52:27.624	2024-09-12 08:52:29.583	2024-09-12 08:52:29.58	1	1	وحيدة
4	2024	2024-09-12 12:48:07.992	2024-09-12 12:57:19.553	2024-09-12 12:57:19.549	1	1	وحيدة
\.


--
-- Data for Name: classes_exam_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes_exam_links (id, class_id, exam_id, class_order) FROM stdin;
2	1	1	1
3	2	2	0
\.


--
-- Data for Name: classes_grade_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes_grade_links (id, class_id, grade_id, class_order) FROM stdin;
1	1	1	1
2	2	2	1
3	3	5	1
4	4	6	1
\.


--
-- Data for Name: exam_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam_types (id, name_of_type, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	امتحان	2024-06-02 19:45:04.808	2024-06-02 19:45:06.847	2024-06-02 19:45:06.844	1	1
2	مذاكرة تحريرية	2024-06-02 19:45:20.362	2024-06-02 19:45:21.108	2024-06-02 19:45:21.105	1	1
3	مذاكرة شفهية	2024-06-02 19:45:31.162	2024-06-02 19:45:31.916	2024-06-02 19:45:31.912	1	1
4	تسميع شفهي	2024-06-02 19:45:43.002	2024-06-02 21:16:00.299	2024-06-02 21:16:00.296	1	1
\.


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exams (id, date_exam, max_score, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2024-05-28	100	2024-06-02 19:44:40.127	2024-06-02 19:46:47.265	2024-06-02 19:46:47.26	1	1
2	2024-09-03	50	2024-09-09 11:16:49.745	2024-09-20 15:58:47.335	2024-09-20 15:58:47.328	1	1
\.


--
-- Data for Name: exams_exam_type_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exams_exam_type_links (id, exam_id, exam_type_id) FROM stdin;
1	1	3
3	2	1
\.


--
-- Data for Name: exams_student_mark_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exams_student_mark_links (id, exam_id, student_mark_id, exam_order) FROM stdin;
\.


--
-- Data for Name: exams_subject_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exams_subject_links (id, exam_id, subject_id) FROM stdin;
1	1	1
3	2	18
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (id, name_grade, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	سابع	2024-05-19 21:55:45.475	2024-05-19 21:55:50.116	2024-05-19 21:55:50.112	1	1
2	ثامن	2024-05-19 21:56:10.568	2024-05-19 21:56:12.847	2024-05-19 21:56:12.845	1	1
3	تاسع	2024-09-12 08:50:50.522	2024-09-12 08:50:53.679	2024-09-12 08:50:53.675	1	1
4	عاشر	2024-09-12 08:51:01.088	2024-09-12 08:51:02.082	2024-09-12 08:51:02.079	1	1
5	حادي عشر	2024-09-12 08:51:11.566	2024-09-12 08:51:12.665	2024-09-12 08:51:12.662	1	1
6	بكالوريا	2024-09-12 08:51:21.285	2024-09-12 08:51:23.213	2024-09-12 08:51:23.21	1	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-05-16 10:26:32.442	2024-05-16 10:26:32.442	\N	\N
\.


--
-- Data for Name: registers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registers (id, student_name, student_last_name, password, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	aa	yy	$2a$10$wyoZJDtHcmjaZKNcQGwQA.sHFcTocse6fAwq6m4ze5SSi.RsdMnKK	2024-05-20 08:43:30.378	2024-05-20 08:43:42.503	2024-05-20 08:43:42.5	1	1
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	api::class.class.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
2	api::class.class.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
3	api::exam.exam.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
4	api::exam.exam.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
5	api::exam-type.exam-type.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
6	api::exam-type.exam-type.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
7	api::grade.grade.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
8	api::grade.grade.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
10	api::student.student.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
11	api::student.student.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
12	api::student-mark.student-mark.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
13	api::student-mark.student-mark.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
14	api::subject.subject.find	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
15	api::subject.subject.findOne	2024-08-16 22:55:14.46	2024-08-16 22:55:14.46	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	3	1	2
4	4	1	3
5	5	1	4
6	6	1	5
7	7	1	6
8	8	1	7
10	10	1	9
11	11	1	10
12	12	1	10
13	13	1	11
14	14	1	11
15	15	1	12
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	showing-mark		custom	0ccdfd938c9ee6eb7f7dc82ae07f720143261d0571e8cc530638c8f5d17e76b1279e41391fc23b0c420a475da802c5271a44002efa759e2caad87b9b90219035	\N	2024-08-23 22:55:14.435	604800000	2024-08-16 22:55:14.435	2024-08-16 22:55:56.344	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::class.class":{"kind":"collectionType","collectionName":"classes","info":{"singularName":"class","pluralName":"classes","displayName":"class","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"year":{"type":"biginteger"},"class_name":{"type":"string"},"grade":{"type":"relation","relation":"manyToOne","target":"api::grade.grade","inversedBy":"classes"},"subject_class_teacher":{"type":"relation","relation":"oneToOne","target":"api::subject-class-teacher.subject-class-teacher","mappedBy":"class"},"exam":{"type":"relation","relation":"manyToOne","target":"api::exam.exam","inversedBy":"classes"},"students":{"type":"relation","relation":"oneToMany","target":"api::student.student","mappedBy":"class"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"classes","info":{"singularName":"class","pluralName":"classes","displayName":"class","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"year":{"type":"biginteger"},"class_name":{"type":"string"},"grade":{"type":"relation","relation":"manyToOne","target":"api::grade.grade","inversedBy":"classes"},"subject_class_teacher":{"type":"relation","relation":"oneToOne","target":"api::subject-class-teacher.subject-class-teacher","mappedBy":"class"},"exam":{"type":"relation","relation":"manyToOne","target":"api::exam.exam","inversedBy":"classes"},"students":{"type":"relation","relation":"oneToMany","target":"api::student.student","mappedBy":"class"}},"kind":"collectionType"},"modelType":"contentType","modelName":"class","connection":"default","uid":"api::class.class","apiName":"class","globalId":"Class","actions":{},"lifecycles":{}},"api::exam.exam":{"kind":"collectionType","collectionName":"exams","info":{"singularName":"exam","pluralName":"exams","displayName":"exam"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"date_exam":{"type":"date"},"max_score":{"type":"integer"},"exam_type":{"type":"relation","relation":"oneToOne","target":"api::exam-type.exam-type","inversedBy":"exam"},"subject":{"type":"relation","relation":"oneToOne","target":"api::subject.subject","inversedBy":"exam"},"classes":{"type":"relation","relation":"oneToMany","target":"api::class.class","mappedBy":"exam"},"student_mark":{"type":"relation","relation":"manyToOne","target":"api::student-mark.student-mark","inversedBy":"exams"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"exams","info":{"singularName":"exam","pluralName":"exams","displayName":"exam"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"date_exam":{"type":"date"},"max_score":{"type":"integer"},"exam_type":{"type":"relation","relation":"oneToOne","target":"api::exam-type.exam-type","inversedBy":"exam"},"subject":{"type":"relation","relation":"oneToOne","target":"api::subject.subject","inversedBy":"exam"},"classes":{"type":"relation","relation":"oneToMany","target":"api::class.class","mappedBy":"exam"},"student_mark":{"type":"relation","relation":"manyToOne","target":"api::student-mark.student-mark","inversedBy":"exams"}},"kind":"collectionType"},"modelType":"contentType","modelName":"exam","connection":"default","uid":"api::exam.exam","apiName":"exam","globalId":"Exam","actions":{},"lifecycles":{}},"api::exam-type.exam-type":{"kind":"collectionType","collectionName":"exam_types","info":{"singularName":"exam-type","pluralName":"exam-types","displayName":"exam_type"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_of_type":{"type":"string"},"exam":{"type":"relation","relation":"oneToOne","target":"api::exam.exam","mappedBy":"exam_type"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"exam_types","info":{"singularName":"exam-type","pluralName":"exam-types","displayName":"exam_type"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_of_type":{"type":"string"},"exam":{"type":"relation","relation":"oneToOne","target":"api::exam.exam","mappedBy":"exam_type"}},"kind":"collectionType"},"modelType":"contentType","modelName":"exam-type","connection":"default","uid":"api::exam-type.exam-type","apiName":"exam-type","globalId":"ExamType","actions":{},"lifecycles":{}},"api::grade.grade":{"kind":"collectionType","collectionName":"grades","info":{"singularName":"grade","pluralName":"grades","displayName":"grade","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_grade":{"type":"string"},"classes":{"type":"relation","relation":"oneToMany","target":"api::class.class","mappedBy":"grade"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"grades","info":{"singularName":"grade","pluralName":"grades","displayName":"grade","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_grade":{"type":"string"},"classes":{"type":"relation","relation":"oneToMany","target":"api::class.class","mappedBy":"grade"}},"kind":"collectionType"},"modelType":"contentType","modelName":"grade","connection":"default","uid":"api::grade.grade","apiName":"grade","globalId":"Grade","actions":{},"lifecycles":{}},"api::register.register":{"kind":"collectionType","collectionName":"registers","info":{"singularName":"register","pluralName":"registers","displayName":"register"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"student_name":{"type":"string"},"student_last_name":{"type":"string"},"password":{"type":"password"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"registers","info":{"singularName":"register","pluralName":"registers","displayName":"register"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"student_name":{"type":"string"},"student_last_name":{"type":"string"},"password":{"type":"password"}},"kind":"collectionType"},"modelType":"contentType","modelName":"register","connection":"default","uid":"api::register.register","apiName":"register","globalId":"Register","actions":{},"lifecycles":{}},"api::student.student":{"kind":"collectionType","collectionName":"students","info":{"singularName":"student","pluralName":"students","displayName":"student","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"first_name":{"type":"string"},"last_student_name":{"type":"string"},"father_name":{"type":"string"},"mother_name":{"type":"string"},"grand_father_name":{"type":"string"},"phone_number":{"type":"biginteger"},"whatsapp_number":{"type":"biginteger"},"mother_phonenumber":{"type":"biginteger"},"father_phonenumber":{"type":"biginteger"},"address":{"type":"text"},"birth_date":{"type":"date"},"constraints_schoolid":{"type":"biginteger"},"social_situation":{"type":"string"},"living_situation":{"type":"string"},"class":{"type":"relation","relation":"manyToOne","target":"api::class.class","inversedBy":"students"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"students","info":{"singularName":"student","pluralName":"students","displayName":"student","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"first_name":{"type":"string"},"last_student_name":{"type":"string"},"father_name":{"type":"string"},"mother_name":{"type":"string"},"grand_father_name":{"type":"string"},"phone_number":{"type":"biginteger"},"whatsapp_number":{"type":"biginteger"},"mother_phonenumber":{"type":"biginteger"},"father_phonenumber":{"type":"biginteger"},"address":{"type":"text"},"birth_date":{"type":"date"},"constraints_schoolid":{"type":"biginteger"},"social_situation":{"type":"string"},"living_situation":{"type":"string"},"class":{"type":"relation","relation":"manyToOne","target":"api::class.class","inversedBy":"students"}},"kind":"collectionType"},"modelType":"contentType","modelName":"student","connection":"default","uid":"api::student.student","apiName":"student","globalId":"Student","actions":{},"lifecycles":{}},"api::student-mark.student-mark":{"kind":"collectionType","collectionName":"student_marks","info":{"singularName":"student-mark","pluralName":"student-marks","displayName":"student_mark"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mark":{"type":"integer"},"exams":{"type":"relation","relation":"oneToMany","target":"api::exam.exam","mappedBy":"student_mark"},"student":{"type":"relation","relation":"oneToOne","target":"api::student.student"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"student_marks","info":{"singularName":"student-mark","pluralName":"student-marks","displayName":"student_mark"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mark":{"type":"integer"},"exams":{"type":"relation","relation":"oneToMany","target":"api::exam.exam","mappedBy":"student_mark"},"student":{"type":"relation","relation":"oneToOne","target":"api::student.student"}},"kind":"collectionType"},"modelType":"contentType","modelName":"student-mark","connection":"default","uid":"api::student-mark.student-mark","apiName":"student-mark","globalId":"StudentMark","actions":{},"lifecycles":{}},"api::subject.subject":{"kind":"collectionType","collectionName":"subjects","info":{"singularName":"subject","pluralName":"subjects","displayName":"subject"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_subject":{"type":"string"},"subject_class_teacher":{"type":"relation","relation":"oneToOne","target":"api::subject-class-teacher.subject-class-teacher","mappedBy":"subject"},"exam":{"type":"relation","relation":"oneToOne","target":"api::exam.exam","mappedBy":"subject"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"subjects","info":{"singularName":"subject","pluralName":"subjects","displayName":"subject"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name_subject":{"type":"string"},"subject_class_teacher":{"type":"relation","relation":"oneToOne","target":"api::subject-class-teacher.subject-class-teacher","mappedBy":"subject"},"exam":{"type":"relation","relation":"oneToOne","target":"api::exam.exam","mappedBy":"subject"}},"kind":"collectionType"},"modelType":"contentType","modelName":"subject","connection":"default","uid":"api::subject.subject","apiName":"subject","globalId":"Subject","actions":{},"lifecycles":{}},"api::subject-class-teacher.subject-class-teacher":{"kind":"collectionType","collectionName":"subject_class_teachers","info":{"singularName":"subject-class-teacher","pluralName":"subject-class-teachers","displayName":"subject_class_teacher"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"class":{"type":"relation","relation":"oneToOne","target":"api::class.class","inversedBy":"subject_class_teacher"},"subject":{"type":"relation","relation":"oneToOne","target":"api::subject.subject","inversedBy":"subject_class_teacher"},"teacher":{"type":"relation","relation":"oneToOne","target":"api::teacher.teacher","inversedBy":"subject_class_teacher"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"subject_class_teachers","info":{"singularName":"subject-class-teacher","pluralName":"subject-class-teachers","displayName":"subject_class_teacher"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"class":{"type":"relation","relation":"oneToOne","target":"api::class.class","inversedBy":"subject_class_teacher"},"subject":{"type":"relation","relation":"oneToOne","target":"api::subject.subject","inversedBy":"subject_class_teacher"},"teacher":{"type":"relation","relation":"oneToOne","target":"api::teacher.teacher","inversedBy":"subject_class_teacher"}},"kind":"collectionType"},"modelType":"contentType","modelName":"subject-class-teacher","connection":"default","uid":"api::subject-class-teacher.subject-class-teacher","apiName":"subject-class-teacher","globalId":"SubjectClassTeacher","actions":{},"lifecycles":{}},"api::teacher.teacher":{"kind":"collectionType","collectionName":"teachers","info":{"singularName":"teacher","pluralName":"teachers","displayName":"teacher"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"first_name":{"type":"string"},"last_name":{"type":"string"},"birth_date":{"type":"date"},"birth_city":{"type":"string"},"qualification":{"type":"text"},"phone_number":{"type":"biginteger"},"starting_date":{"type":"date"},"departure_date":{"type":"date"},"subject_class_teacher":{"type":"relation","relation":"oneToOne","target":"api::subject-class-teacher.subject-class-teacher","mappedBy":"teacher"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"teachers","info":{"singularName":"teacher","pluralName":"teachers","displayName":"teacher"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"first_name":{"type":"string"},"last_name":{"type":"string"},"birth_date":{"type":"date"},"birth_city":{"type":"string"},"qualification":{"type":"text"},"phone_number":{"type":"biginteger"},"starting_date":{"type":"date"},"departure_date":{"type":"date"},"subject_class_teacher":{"type":"relation","relation":"oneToOne","target":"api::subject-class-teacher.subject-class-teacher","mappedBy":"teacher"}},"kind":"collectionType"},"modelType":"contentType","modelName":"teacher","connection":"default","uid":"api::teacher.teacher","apiName":"teacher","globalId":"Teacher","actions":{},"lifecycles":{}}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
17	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
18	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
20	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
21	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
22	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
23	plugin_i18n_default_locale	"en"	string	\N	\N
26	plugin_content_manager_configuration_content_types::api::teacher.teacher	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"first_name","defaultSortBy":"first_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"first_name":{"edit":{"label":"first_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"first_name","searchable":true,"sortable":true}},"last_name":{"edit":{"label":"last_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"last_name","searchable":true,"sortable":true}},"birth_date":{"edit":{"label":"birth_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"birth_date","searchable":true,"sortable":true}},"birth_city":{"edit":{"label":"birth_city","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"birth_city","searchable":true,"sortable":true}},"qualification":{"edit":{"label":"qualification","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"qualification","searchable":true,"sortable":true}},"phone_number":{"edit":{"label":"phone_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_number","searchable":true,"sortable":true}},"starting_date":{"edit":{"label":"starting_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"starting_date","searchable":true,"sortable":true}},"departure_date":{"edit":{"label":"departure_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"departure_date","searchable":true,"sortable":true}},"subject_class_teacher":{"edit":{"label":"subject_class_teacher","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"subject_class_teacher","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","first_name","last_name","birth_date"],"edit":[[{"name":"first_name","size":6},{"name":"last_name","size":6}],[{"name":"birth_date","size":4},{"name":"birth_city","size":6}],[{"name":"qualification","size":6},{"name":"phone_number","size":4}],[{"name":"starting_date","size":4},{"name":"departure_date","size":4}],[{"name":"subject_class_teacher","size":6}]]},"uid":"api::teacher.teacher"}	object	\N	\N
19	plugin_upload_metrics	{"weeklySchedule":"23 41 8 * * 3","lastWeeklyUpdate":1726638083058}	object	\N	\N
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"email","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::grade.grade	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name_grade","defaultSortBy":"name_grade","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name_grade":{"edit":{"label":"name_grade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_grade","searchable":true,"sortable":true}},"classes":{"edit":{"label":"classes","description":"","placeholder":"","visible":true,"editable":true,"mainField":"class_name"},"list":{"label":"classes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name_grade","createdAt","updatedAt"],"edit":[[{"name":"name_grade","size":6},{"name":"classes","size":6}]]},"uid":"api::grade.grade"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::exam-type.exam-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name_of_type","defaultSortBy":"name_of_type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name_of_type":{"edit":{"label":"name_of_type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_of_type","searchable":true,"sortable":true}},"exam":{"edit":{"label":"exam","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"exam","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name_of_type","createdAt","updatedAt"],"edit":[[{"name":"name_of_type","size":6},{"name":"exam","size":6}]]},"uid":"api::exam-type.exam-type"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::subject-class-teacher.subject-class-teacher	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"class":{"edit":{"label":"class","description":"","placeholder":"","visible":true,"editable":true,"mainField":"class_name"},"list":{"label":"class","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name_subject"},"list":{"label":"subject","searchable":true,"sortable":true}},"teacher":{"edit":{"label":"teacher","description":"","placeholder":"","visible":true,"editable":true,"mainField":"first_name"},"list":{"label":"teacher","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","class","subject","teacher"],"edit":[[{"name":"class","size":6},{"name":"subject","size":6}],[{"name":"teacher","size":6}]]},"uid":"api::subject-class-teacher.subject-class-teacher"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::subject.subject	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name_subject","defaultSortBy":"name_subject","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name_subject":{"edit":{"label":"name_subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_subject","searchable":true,"sortable":true}},"subject_class_teacher":{"edit":{"label":"subject_class_teacher","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"subject_class_teacher","searchable":true,"sortable":true}},"exam":{"edit":{"label":"exam","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"exam","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name_subject","createdAt","updatedAt"],"edit":[[{"name":"name_subject","size":6},{"name":"subject_class_teacher","size":6}],[{"name":"exam","size":6}]]},"uid":"api::subject.subject"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::class.class	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"grade":{"edit":{"label":"grade","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name_grade"},"list":{"label":"grade","searchable":true,"sortable":true}},"subject_class_teacher":{"edit":{"label":"subject_class_teacher","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"subject_class_teacher","searchable":true,"sortable":true}},"exam":{"edit":{"label":"exam","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"exam","searchable":true,"sortable":true}},"students":{"edit":{"label":"students","description":"","placeholder":"","visible":true,"editable":true,"mainField":"first_name"},"list":{"label":"students","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","year","class_name","grade"],"edit":[[{"name":"year","size":4},{"name":"class_name","size":6}],[{"name":"grade","size":6},{"name":"subject_class_teacher","size":6}],[{"name":"exam","size":6},{"name":"students","size":6}]]},"uid":"api::class.class"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::exam.exam	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"date_exam":{"edit":{"label":"date_exam","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date_exam","searchable":true,"sortable":true}},"max_score":{"edit":{"label":"max_score","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"max_score","searchable":true,"sortable":true}},"exam_type":{"edit":{"label":"exam_type","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name_of_type"},"list":{"label":"exam_type","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name_subject"},"list":{"label":"subject","searchable":true,"sortable":true}},"classes":{"edit":{"label":"classes","description":"","placeholder":"","visible":true,"editable":true,"mainField":"class_name"},"list":{"label":"classes","searchable":false,"sortable":false}},"student_mark":{"edit":{"label":"student_mark","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"student_mark","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","date_exam","max_score","exam_type"],"edit":[[{"name":"date_exam","size":4},{"name":"max_score","size":4}],[{"name":"exam_type","size":6},{"name":"subject","size":6}],[{"name":"classes","size":6},{"name":"student_mark","size":6}]]},"uid":"api::exam.exam"}	object	\N	\N
34	plugin_content_manager_configuration_content_types::api::register.register	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"student_name","defaultSortBy":"student_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"student_name":{"edit":{"label":"student_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"student_name","searchable":true,"sortable":true}},"student_last_name":{"edit":{"label":"student_last_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"student_last_name","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","student_name","student_last_name","createdAt"],"edit":[[{"name":"student_name","size":6},{"name":"student_last_name","size":6}],[{"name":"password","size":6}]]},"uid":"api::register.register"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::student.student	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"first_name","defaultSortBy":"first_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"first_name":{"edit":{"label":"first_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"first_name","searchable":true,"sortable":true}},"last_student_name":{"edit":{"label":"last_student_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"last_student_name","searchable":true,"sortable":true}},"father_name":{"edit":{"label":"father_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"father_name","searchable":true,"sortable":true}},"mother_name":{"edit":{"label":"mother_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mother_name","searchable":true,"sortable":true}},"grand_father_name":{"edit":{"label":"grand_father_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"grand_father_name","searchable":true,"sortable":true}},"phone_number":{"edit":{"label":"phone_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_number","searchable":true,"sortable":true}},"whatsapp_number":{"edit":{"label":"whatsapp_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"whatsapp_number","searchable":true,"sortable":true}},"mother_phonenumber":{"edit":{"label":"mother_phonenumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mother_phonenumber","searchable":true,"sortable":true}},"father_phonenumber":{"edit":{"label":"father_phonenumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"father_phonenumber","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"birth_date":{"edit":{"label":"birth_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"birth_date","searchable":true,"sortable":true}},"constraints_schoolid":{"edit":{"label":"constraints_schoolid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"constraints_schoolid","searchable":true,"sortable":true}},"social_situation":{"edit":{"label":"social_situation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"social_situation","searchable":true,"sortable":true}},"living_situation":{"edit":{"label":"living_situation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"living_situation","searchable":true,"sortable":true}},"class":{"edit":{"label":"class","description":"","placeholder":"","visible":true,"editable":true,"mainField":"class_name"},"list":{"label":"class","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","first_name","createdAt","updatedAt"],"edit":[[{"name":"first_name","size":6},{"name":"last_student_name","size":6}],[{"name":"father_name","size":6},{"name":"mother_name","size":6}],[{"name":"grand_father_name","size":6},{"name":"phone_number","size":4}],[{"name":"whatsapp_number","size":4},{"name":"mother_phonenumber","size":4},{"name":"father_phonenumber","size":4}],[{"name":"address","size":6},{"name":"birth_date","size":4}],[{"name":"constraints_schoolid","size":4},{"name":"social_situation","size":6}],[{"name":"living_situation","size":6},{"name":"class","size":6}]]},"uid":"api::student.student"}	object	\N	\N
33	plugin_content_manager_configuration_content_types::api::student-mark.student-mark	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mark":{"edit":{"label":"mark","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mark","searchable":true,"sortable":true}},"exams":{"edit":{"label":"exams","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"exams","searchable":false,"sortable":false}},"student":{"edit":{"label":"student","description":"","placeholder":"","visible":true,"editable":true,"mainField":"first_name"},"list":{"label":"student","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","mark","exams","student"],"edit":[[{"name":"mark","size":4},{"name":"exams","size":6}],[{"name":"student","size":6}]]},"uid":"api::student-mark.student-mark"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
32	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"classes","indexes":[{"name":"classes_created_by_id_fk","columns":["created_by_id"]},{"name":"classes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"classes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"classes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"year","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exams","indexes":[{"name":"exams_created_by_id_fk","columns":["created_by_id"]},{"name":"exams_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"exams_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"exams_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"date_exam","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max_score","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exam_types","indexes":[{"name":"exam_types_created_by_id_fk","columns":["created_by_id"]},{"name":"exam_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"exam_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"exam_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name_of_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades","indexes":[{"name":"grades_created_by_id_fk","columns":["created_by_id"]},{"name":"grades_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"grades_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"grades_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name_grade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"registers","indexes":[{"name":"registers_created_by_id_fk","columns":["created_by_id"]},{"name":"registers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"registers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"registers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"student_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"student_last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"students","indexes":[{"name":"students_created_by_id_fk","columns":["created_by_id"]},{"name":"students_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"students_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"students_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_student_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"father_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mother_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"grand_father_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_number","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"whatsapp_number","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mother_phonenumber","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"father_phonenumber","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"constraints_schoolid","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"social_situation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"living_situation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"student_marks","indexes":[{"name":"student_marks_created_by_id_fk","columns":["created_by_id"]},{"name":"student_marks_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"student_marks_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"student_marks_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"mark","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subjects","indexes":[{"name":"subjects_created_by_id_fk","columns":["created_by_id"]},{"name":"subjects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"subjects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"subjects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name_subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subject_class_teachers","indexes":[{"name":"subject_class_teachers_created_by_id_fk","columns":["created_by_id"]},{"name":"subject_class_teachers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"subject_class_teachers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"subject_class_teachers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"teachers","indexes":[{"name":"teachers_created_by_id_fk","columns":["created_by_id"]},{"name":"teachers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"teachers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"teachers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"qualification","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_number","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"starting_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"departure_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"classes_grade_links","indexes":[{"name":"classes_grade_links_fk","columns":["class_id"]},{"name":"classes_grade_links_inv_fk","columns":["grade_id"]},{"name":"classes_grade_links_unique","columns":["class_id","grade_id"],"type":"unique"},{"name":"classes_grade_links_order_inv_fk","columns":["class_order"]}],"foreignKeys":[{"name":"classes_grade_links_fk","columns":["class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"},{"name":"classes_grade_links_inv_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"classes_exam_links","indexes":[{"name":"classes_exam_links_fk","columns":["class_id"]},{"name":"classes_exam_links_inv_fk","columns":["exam_id"]},{"name":"classes_exam_links_unique","columns":["class_id","exam_id"],"type":"unique"},{"name":"classes_exam_links_order_inv_fk","columns":["class_order"]}],"foreignKeys":[{"name":"classes_exam_links_fk","columns":["class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"},{"name":"classes_exam_links_inv_fk","columns":["exam_id"],"referencedColumns":["id"],"referencedTable":"exams","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"exam_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exams_exam_type_links","indexes":[{"name":"exams_exam_type_links_fk","columns":["exam_id"]},{"name":"exams_exam_type_links_inv_fk","columns":["exam_type_id"]},{"name":"exams_exam_type_links_unique","columns":["exam_id","exam_type_id"],"type":"unique"}],"foreignKeys":[{"name":"exams_exam_type_links_fk","columns":["exam_id"],"referencedColumns":["id"],"referencedTable":"exams","onDelete":"CASCADE"},{"name":"exams_exam_type_links_inv_fk","columns":["exam_type_id"],"referencedColumns":["id"],"referencedTable":"exam_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"exam_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"exam_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exams_subject_links","indexes":[{"name":"exams_subject_links_fk","columns":["exam_id"]},{"name":"exams_subject_links_inv_fk","columns":["subject_id"]},{"name":"exams_subject_links_unique","columns":["exam_id","subject_id"],"type":"unique"}],"foreignKeys":[{"name":"exams_subject_links_fk","columns":["exam_id"],"referencedColumns":["id"],"referencedTable":"exams","onDelete":"CASCADE"},{"name":"exams_subject_links_inv_fk","columns":["subject_id"],"referencedColumns":["id"],"referencedTable":"subjects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"exam_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subject_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exams_student_mark_links","indexes":[{"name":"exams_student_mark_links_fk","columns":["exam_id"]},{"name":"exams_student_mark_links_inv_fk","columns":["student_mark_id"]},{"name":"exams_student_mark_links_unique","columns":["exam_id","student_mark_id"],"type":"unique"},{"name":"exams_student_mark_links_order_inv_fk","columns":["exam_order"]}],"foreignKeys":[{"name":"exams_student_mark_links_fk","columns":["exam_id"],"referencedColumns":["id"],"referencedTable":"exams","onDelete":"CASCADE"},{"name":"exams_student_mark_links_inv_fk","columns":["student_mark_id"],"referencedColumns":["id"],"referencedTable":"student_marks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"exam_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_mark_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"exam_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"students_class_links","indexes":[{"name":"students_class_links_fk","columns":["student_id"]},{"name":"students_class_links_inv_fk","columns":["class_id"]},{"name":"students_class_links_unique","columns":["student_id","class_id"],"type":"unique"},{"name":"students_class_links_order_inv_fk","columns":["student_order"]}],"foreignKeys":[{"name":"students_class_links_fk","columns":["student_id"],"referencedColumns":["id"],"referencedTable":"students","onDelete":"CASCADE"},{"name":"students_class_links_inv_fk","columns":["class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"student_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"student_marks_student_links","indexes":[{"name":"student_marks_student_links_fk","columns":["student_mark_id"]},{"name":"student_marks_student_links_inv_fk","columns":["student_id"]},{"name":"student_marks_student_links_unique","columns":["student_mark_id","student_id"],"type":"unique"}],"foreignKeys":[{"name":"student_marks_student_links_fk","columns":["student_mark_id"],"referencedColumns":["id"],"referencedTable":"student_marks","onDelete":"CASCADE"},{"name":"student_marks_student_links_inv_fk","columns":["student_id"],"referencedColumns":["id"],"referencedTable":"students","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"student_mark_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subject_class_teachers_class_links","indexes":[{"name":"subject_class_teachers_class_links_fk","columns":["subject_class_teacher_id"]},{"name":"subject_class_teachers_class_links_inv_fk","columns":["class_id"]},{"name":"subject_class_teachers_class_links_unique","columns":["subject_class_teacher_id","class_id"],"type":"unique"}],"foreignKeys":[{"name":"subject_class_teachers_class_links_fk","columns":["subject_class_teacher_id"],"referencedColumns":["id"],"referencedTable":"subject_class_teachers","onDelete":"CASCADE"},{"name":"subject_class_teachers_class_links_inv_fk","columns":["class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"subject_class_teacher_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subject_class_teachers_subject_links","indexes":[{"name":"subject_class_teachers_subject_links_fk","columns":["subject_class_teacher_id"]},{"name":"subject_class_teachers_subject_links_inv_fk","columns":["subject_id"]},{"name":"subject_class_teachers_subject_links_unique","columns":["subject_class_teacher_id","subject_id"],"type":"unique"}],"foreignKeys":[{"name":"subject_class_teachers_subject_links_fk","columns":["subject_class_teacher_id"],"referencedColumns":["id"],"referencedTable":"subject_class_teachers","onDelete":"CASCADE"},{"name":"subject_class_teachers_subject_links_inv_fk","columns":["subject_id"],"referencedColumns":["id"],"referencedTable":"subjects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"subject_class_teacher_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subject_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"subject_class_teachers_teacher_links","indexes":[{"name":"subject_class_teachers_teacher_links_fk","columns":["subject_class_teacher_id"]},{"name":"subject_class_teachers_teacher_links_inv_fk","columns":["teacher_id"]},{"name":"subject_class_teachers_teacher_links_unique","columns":["subject_class_teacher_id","teacher_id"],"type":"unique"}],"foreignKeys":[{"name":"subject_class_teachers_teacher_links_fk","columns":["subject_class_teacher_id"],"referencedColumns":["id"],"referencedTable":"subject_class_teachers","onDelete":"CASCADE"},{"name":"subject_class_teachers_teacher_links_inv_fk","columns":["teacher_id"],"referencedColumns":["id"],"referencedTable":"teachers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"subject_class_teacher_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"teacher_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-09-23 20:43:42.745	683d3e3007193ec509982c470b60f916
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: student_marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_marks (id, mark, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	80	2024-06-02 19:47:05.857	2024-09-09 11:22:56.504	2024-06-02 19:47:08.143	1	1
2	90	2024-06-02 21:15:34.858	2024-09-09 11:23:04.546	2024-06-02 21:15:36.123	1	1
3	45	2024-09-09 11:17:52.037	2024-09-09 11:24:24.508	2024-09-09 11:24:24.503	1	1
\.


--
-- Data for Name: student_marks_student_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_marks_student_links (id, student_mark_id, student_id) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, first_name, created_at, updated_at, published_at, created_by_id, updated_by_id, last_student_name, father_name, mother_name, grand_father_name, phone_number, whatsapp_number, mother_phonenumber, father_phonenumber, address, birth_date, constraints_schoolid, social_situation, living_situation) FROM stdin;
2	اية	2024-06-02 21:01:14.365	2024-08-23 23:59:04.261	2024-06-02 21:01:15.442	1	1	السعيدي	احمد	منال	عبد الرحمن	5843474	945821650	945821650	968296653	جانب تكسي البشير	2011-02-15	1136	غير يتيمة	جيد
1	ايات	2024-06-02 19:39:46.948	2024-09-06 20:39:23.909	2024-06-02 19:39:51.984	1	1	كناكري	عمر	صفاء	درويش	5848602	962824215	962824215	968423983	طلعة الفرن	2011-01-04	1135	غير يتيمة	جيد
3	تيست	2024-06-02 21:09:57.621	2024-09-09 09:47:33.698	2024-06-02 21:10:00.013	1	1	تتت	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	اسماء	2024-09-12 08:57:54.165	2024-09-12 10:30:56.228	2024-09-12 10:30:56.221	1	1	حاج علي	باسم	منى	احمد	5842669	9	988456725	944646114	السوايد - جانب روضة المحبة	2009-01-01	661	غير يتيمة	جيد
27	حنان	2024-09-12 13:21:56.698	2024-09-12 13:21:57.608	2024-09-12 13:21:57.605	1	1	غية	عبد الله	هدلة	محمد	\N	\N	\N	\N	\N	2006-11-07	926	\N	جيد
6	ايناس	2024-09-12 09:12:51.491	2024-09-12 10:31:46.611	2024-09-12 10:31:46.604	1	1	جعرش	خالد	فايزة	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	جنى	2024-09-12 09:15:13.021	2024-09-12 10:31:54.274	2024-09-12 10:31:54.269	1	1	شبلي	علاء الدين	ديما الدبس	\N	\N	\N	\N	\N	\N	2008-07-20	1112	\N	\N
8	خديجة	2024-09-12 09:18:45.282	2024-09-12 10:32:00.743	2024-09-12 10:32:00.739	1	1	المنسي	احمد	دجانة	خالد	\N	\N	\N	\N	\N	2005-03-05	725	\N	\N
9	ديالا	2024-09-12 09:22:04.982	2024-09-12 10:32:06.257	2024-09-12 10:32:06.253	1	1	طبش	جهاد	هناء	محمد	915571	\N	\N	955296043	\N	2008-04-01	1113	\N	\N
10	زينب	2024-09-12 09:26:57.666	2024-09-12 10:32:13.154	2024-09-12 10:32:13.149	1	1	زياد	عمر	احلام	\N	5842813	\N	\N	944912101	البيادر - خلف الثانوية	2008-04-26	1114	\N	ضعيف
18	لمار	2024-09-12 09:48:43.222	2024-09-12 10:34:35.002	2024-09-12 10:34:29.974	1	1	الشامي	رامز	زاهرة	\N	5844921	\N	\N	\N	\N	2008-05-06	1119	\N	ضعيف
33	شيماء	2024-09-16 08:36:07.04	2024-09-16 08:36:08.861	2024-09-16 08:36:08.857	1	1	احمد	عمر	هدلة	\N	5965589	951516236	\N	\N	\N	2007-01-20	541	يتيمة	\N
13	سلاف	2024-09-12 09:40:11.197	2024-09-12 10:33:09.791	2024-09-12 10:33:04.858	1	1	النسب	لؤي	امنة	\N	5845699	\N	\N	\N	\N	2009-01-06	1115	\N	\N
19	مايا 	2024-09-12 09:50:04.156	2024-09-12 10:34:48.384	2024-09-12 10:34:48.381	1	1	سلمان	خالد	زهرية	\N	5841120	\N	\N	\N	\N	2008-01-12	1121	\N	\N
14	سنا	2024-09-12 09:42:29.409	2024-09-12 10:33:23.14	2024-09-12 10:33:15.794	1	1	الاطرش	نور الدين	مؤمنة الجابري	\N	5843758	956427705	\N	\N	\N	2008-08-12	627	\N	\N
28	ذكرى	2024-09-12 13:28:09.499	2024-09-12 13:31:32.342	2024-09-12 13:28:11.585	1	1	المحمد	هيثم	هيفاء	احمد	\N	952335810	954055976	952335810	منين - حارة الفوقا- الجامع الكبير بجانب الشيخ جندل	2007-01-20	927	غير يتيمة	ضعيف
21	مروة	2024-09-12 10:03:49.081	2024-09-12 10:37:00.405	2024-09-12 10:37:00.399	1	1	المطر	عبد الله	اميرة	جمعة	\N	\N	\N	\N	\N	\N	1124	\N	ضعيف
22	مريم	2024-09-12 10:03:59.76	2024-09-12 10:37:12.126	2024-09-12 10:37:12.123	1	1	مطلق	ياسر	اقبال	علي	5845433	\N	\N	\N	\N	\N	1122	\N	\N
35	غنيمة	2024-09-16 08:44:57.458	2024-09-16 08:44:58.718	2024-09-16 08:44:58.714	1	1	الحلبية	زياد	غالية	محمد رياض	5845903	\N	937751778	945823233	منين السوايد - جانب الفرن الالي	2008-01-01	936	غير يتيمة	\N
17	فوزية	2024-09-12 09:47:13.831	2024-09-12 10:34:22.146	2024-09-12 10:34:22.143	1	1	عواد	محمد فيصل	كوثر عواد	\N	5843449	\N	\N	\N	\N	2008-10-01	646	\N	\N
11	سارة	2024-09-12 09:31:31.499	2024-09-12 22:28:36.168	2024-09-12 10:32:49.4	1	1	حسين	اسامة	غدران	\N	\N	\N	\N	\N	\N	2008-01-15	1125	\N	\N
23	هبة	2024-09-12 10:08:18.741	2024-09-12 10:37:24.782	2024-09-12 10:37:19.741	1	1	ياسمينة	احمد	عائشة	عبدو	5848379	\N	\N	\N	\N	\N	1280	\N	\N
24	هديل	2024-09-12 10:30:15.495	2024-09-12 10:37:37.895	2024-09-12 10:37:37.89	1	1	غنوم	مصطفى	ازهار	\N	\N	\N	\N	\N	\N	2009-01-03	1123	\N	ضعيف
20	مرام	2024-09-12 09:55:12.873	2024-09-12 11:23:18.01	2024-09-12 10:34:54.675	1	1	الهارون	محمد	منى	سمعو	5845461	945841511	940382617	945841511	منين - جانب جامع الرضوان	2008-05-01	1281	غيريتيمة	ضعيف
5	اية	2024-09-12 09:05:54.487	2024-09-12 11:29:16.593	2024-09-12 10:31:01.328	1	1	داود	عبد الرحمن	علا	مصطفى	5844961	\N	940317618	947729304	منين - حقول العدس	2009-01-01	1110	غيريتيمة	جيد
15	شهد	2024-09-12 09:43:52.985	2024-09-12 11:58:12.168	2024-09-12 10:33:48.973	1	1	دياب	وسام	مؤمنة	\N	5846243	\N	\N	\N	\N	2008-10-07	1117	\N	\N
16	شهد	2024-09-12 09:45:38.229	2024-09-12 11:59:09.574	2024-09-12 10:33:55.856	1	1	عيد	احمد	ميساء	\N	\N	932238709	\N	\N	\N	2008-03-26	1118	\N	\N
12	سيدرة	2024-09-12 09:32:59.441	2024-09-12 12:03:12.276	2024-09-12 10:33:35.444	1	1	علي	جمال	امنة سكاف	\N	5844589	94852237	\N	\N	\N	2008-08-14	1116	\N	\N
29	سارة	2024-09-12 13:43:09.525	2024-09-16 08:21:05.132	2024-09-12 13:43:11.659	1	1	اللحام	زياد	مروى	محمد	\N	\N	\N	\N	\N	2008-01-28	929	\N	\N
25	ايات	2024-09-12 12:45:56.376	2024-09-12 12:48:33.502	2024-09-12 12:45:58.49	1	1	الرفاعي	اسامة	فاتن	احمد	5847823	991410145	991410145	\N	منين - جانب جامع الرضوان	2006-08-05	554	غير يتيمة	ضعيف
26	حلا	2024-09-12 12:56:40.906	2024-09-12 12:56:51.224	2024-09-12 12:56:51.215	1	1	قمر	عماد	سمر المروش	\N	\N	\N	\N	\N	\N	2007-08-04	925	\N	ضعيف
30	سلام	2024-09-16 08:25:19.261	2024-09-16 08:25:20.82	2024-09-16 08:25:20.815	1	1	محيسن	احمد	امل	\N	\N	\N	\N	\N	\N	2006-04-03	530	\N	\N
31	شهد	2024-09-16 08:30:44.323	2024-09-16 08:30:45.696	2024-09-16 08:30:45.692	1	1	زين الدين	بديع	قمر	\N	5841800	951970319	\N	\N	\N	2007-06-01	564	\N	\N
32	شهد	2024-09-16 08:32:39.859	2024-09-16 08:34:27.334	2024-09-16 08:32:41.317	1	1	ياسمينة	صالح	فهمية	\N	5845314	\N	\N	\N	\N	2007-02-10	566	\N	\N
36	لانا	2024-09-16 08:54:00.291	2024-09-16 08:54:02.103	2024-09-16 08:54:02.099	1	1	مراد	مصطفى	حليمة	\N	5848378	988743707	\N	\N	\N	2006-03-25	937	\N	\N
37	ملك	2024-09-16 08:58:58.807	2024-09-16 08:59:00.167	2024-09-16 08:59:00.164	1	1	السعيدي	خالد	علا	\N	5840483	\N	\N	\N	منين - جانب الشرعية	2006-01-23	941	\N	\N
34	عولا	2024-09-16 08:40:49.593	2024-09-16 12:43:53.395	2024-09-16 12:43:53.39	1	1	رشيد	صفوان	مريم	\N	\N	9684918630	\N	\N	\N	2008-01-30	568	\N	\N
\.


--
-- Data for Name: students_class_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_class_links (id, student_id, class_id, student_order) FROM stdin;
1	1	1	0
2	2	1	1
3	3	2	1
4	4	3	1
5	5	3	2
6	20	3	3
7	6	3	4
8	7	3	5
9	8	3	6
10	9	3	7
11	10	3	8
12	21	3	9
13	22	3	10
14	24	3	11
15	11	3	12
16	13	3	13
17	14	3	14
18	12	3	15
19	15	3	16
20	16	3	17
21	17	3	18
22	18	3	19
23	19	3	20
24	23	3	21
25	25	4	1
26	26	4	2
27	27	4	3
28	28	4	4
29	32	4	5
30	34	4	6
31	35	4	7
32	36	4	8
33	37	4	9
\.


--
-- Data for Name: subject_class_teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject_class_teachers (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: subject_class_teachers_class_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject_class_teachers_class_links (id, subject_class_teacher_id, class_id) FROM stdin;
\.


--
-- Data for Name: subject_class_teachers_subject_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject_class_teachers_subject_links (id, subject_class_teacher_id, subject_id) FROM stdin;
\.


--
-- Data for Name: subject_class_teachers_teacher_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject_class_teachers_teacher_links (id, subject_class_teacher_id, teacher_id) FROM stdin;
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, name_subject, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	التجويد والاستحفاظ	2024-06-02 19:42:15.548	2024-06-02 19:42:17.981	2024-06-02 19:42:17.978	1	1
3	التفسير	2024-09-12 12:20:59.695	2024-09-12 12:21:01.103	2024-09-12 12:21:01.1	1	1
4	الحديث النبوي	2024-09-12 12:21:11.555	2024-09-12 12:21:12.608	2024-09-12 12:21:12.58	1	1
5	الفقه الاسلامي	2024-09-12 12:21:22.694	2024-09-12 12:21:23.732	2024-09-12 12:21:23.729	1	1
6	العقيدة الاسلامية	2024-09-12 12:21:34.054	2024-09-12 12:21:35.028	2024-09-12 12:21:35.025	1	1
7	الدعوة والخطابة	2024-09-12 12:21:49.036	2024-09-12 12:21:50.032	2024-09-12 12:21:50.029	1	1
2	الرياضيات	2024-09-09 11:17:12.755	2024-09-12 12:22:28.55	2024-09-12 12:22:28.547	1	1
9	الشمائل	2024-09-12 12:25:48.7	2024-09-12 12:25:49.689	2024-09-12 12:25:49.686	1	1
10	السيرة النبوية	2024-09-12 12:25:59.669	2024-09-12 12:26:00.558	2024-09-12 12:26:00.523	1	1
11	علوم القرآن 	2024-09-12 12:26:18.931	2024-09-12 12:26:19.864	2024-09-12 12:26:19.86	1	1
12	مصطلح الحديث	2024-09-12 12:26:31.741	2024-09-12 12:26:32.758	2024-09-12 12:26:32.756	1	1
13	اصول الفقه	2024-09-12 12:26:41.918	2024-09-12 12:26:42.778	2024-09-12 12:26:42.776	1	1
14	علم الفرائض	2024-09-12 12:26:52.193	2024-09-12 12:26:54.066	2024-09-12 12:26:54.064	1	1
15	اللغة العربية	2024-09-12 12:27:08.766	2024-09-12 12:27:09.656	2024-09-12 12:27:09.653	1	1
16	اللغة الانكليزية	2024-09-12 12:27:21.253	2024-09-12 12:27:22.222	2024-09-12 12:27:22.219	1	1
17	اللغة الفرنسية	2024-09-12 12:27:34.265	2024-09-12 12:27:35.172	2024-09-12 12:27:35.168	1	1
19	علوم	2024-09-12 12:35:13.498	2024-09-12 12:35:14.591	2024-09-12 12:35:14.588	1	1
18	التاريخ	2024-09-12 12:28:00.551	2024-09-12 12:35:43.259	2024-09-12 12:35:43.255	1	1
20	جغرافية	2024-09-12 12:37:17.162	2024-09-12 12:37:18.077	2024-09-12 12:37:18.074	1	1
22	تكنلوجيا المعلومات	2024-09-12 12:37:49.79	2024-09-12 12:37:50.793	2024-09-12 12:37:50.791	1	1
23	الفلسفة	2024-09-12 12:37:59.595	2024-09-12 12:38:00.474	2024-09-12 12:38:00.472	1	1
24	الفيزياء	2024-09-12 12:38:16.853	2024-09-12 12:38:17.795	2024-09-12 12:38:17.792	1	1
21	الكيمياء	2024-09-12 12:37:35.545	2024-09-12 12:38:38.289	2024-09-12 12:37:36.525	1	1
25	التربية الوطنية	2024-09-12 12:38:51.954	2024-09-12 12:38:52.86	2024-09-12 12:38:52.857	1	1
8	فن الحوار	2024-09-12 12:22:43.572	2024-09-20 15:58:12.784	2024-09-20 15:58:12.778	1	1
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (id, first_name, last_name, birth_date, birth_city, qualification, phone_number, starting_date, departure_date, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-05-16 10:26:32.393	2024-05-16 10:26:32.393	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-05-16 10:26:32.393	2024-05-16 10:26:32.393	\N	\N
3	plugin::users-permissions.auth.callback	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
4	plugin::users-permissions.auth.connect	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
6	plugin::users-permissions.auth.resetPassword	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
7	plugin::users-permissions.auth.register	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2024-05-16 10:26:32.408	2024-05-16 10:26:32.408	\N	\N
10	api::grade.grade.find	2024-05-19 22:18:01.74	2024-05-19 22:18:01.74	\N	\N
11	api::grade.grade.findOne	2024-05-19 22:18:01.74	2024-05-19 22:18:01.74	\N	\N
12	api::grade.grade.create	2024-05-19 22:18:01.74	2024-05-19 22:18:01.74	\N	\N
13	api::grade.grade.update	2024-05-19 22:18:01.74	2024-05-19 22:18:01.74	\N	\N
14	api::grade.grade.delete	2024-05-19 22:18:01.74	2024-05-19 22:18:01.74	\N	\N
33	api::register.register.find	2024-05-20 08:40:42.568	2024-05-20 08:40:42.568	\N	\N
35	api::register.register.create	2024-05-20 08:40:42.568	2024-05-20 08:40:42.568	\N	\N
34	api::register.register.findOne	2024-05-20 08:40:42.568	2024-05-20 08:40:42.568	\N	\N
36	api::class.class.find	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
37	api::class.class.findOne	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
38	api::class.class.create	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
39	api::class.class.update	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
40	api::class.class.delete	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
41	api::exam.exam.find	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
42	api::exam.exam.findOne	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
43	api::exam.exam.create	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
44	api::exam.exam.update	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
45	api::exam.exam.delete	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
46	api::register.register.find	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
47	api::register.register.findOne	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
48	api::register.register.create	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
49	api::register.register.update	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
50	api::register.register.delete	2024-05-20 11:39:50.344	2024-05-20 11:39:50.344	\N	\N
52	api::student-mark.student-mark.findOne	2024-06-02 20:56:26.903	2024-06-02 20:56:26.903	\N	\N
51	api::student-mark.student-mark.find	2024-06-02 20:56:26.903	2024-06-02 20:56:26.903	\N	\N
56	api::student.student.findOne	2024-07-16 10:19:12.104	2024-07-16 10:19:12.104	\N	\N
55	api::student.student.find	2024-07-16 10:19:12.104	2024-07-16 10:19:12.104	\N	\N
59	api::student.student.update	2024-08-16 15:34:31.239	2024-08-16 15:34:31.239	\N	\N
57	api::student.student.create	2024-08-16 15:34:31.239	2024-08-16 15:34:31.239	\N	\N
58	api::student.student.delete	2024-08-16 15:34:31.239	2024-08-16 15:34:31.239	\N	\N
60	plugin::users-permissions.auth.connect	2024-09-02 12:33:15.208	2024-09-02 12:33:15.208	\N	\N
61	plugin::users-permissions.auth.callback	2024-09-02 12:33:15.208	2024-09-02 12:33:15.208	\N	\N
62	plugin::users-permissions.auth.register	2024-09-02 12:33:15.208	2024-09-02 12:33:15.208	\N	\N
64	plugin::users-permissions.user.find	2024-09-02 23:13:41.028	2024-09-02 23:13:41.028	\N	\N
65	plugin::users-permissions.user.find	2024-09-06 21:07:15.975	2024-09-06 21:07:15.975	\N	\N
66	plugin::users-permissions.user.findOne	2024-09-06 21:07:15.975	2024-09-06 21:07:15.975	\N	\N
67	plugin::users-permissions.user.findOne	2024-09-06 21:08:59.636	2024-09-06 21:08:59.636	\N	\N
68	api::subject.subject.find	2024-09-09 11:37:08.278	2024-09-09 11:37:08.278	\N	\N
69	api::subject.subject.findOne	2024-09-09 11:37:08.278	2024-09-09 11:37:08.278	\N	\N
70	api::exam-type.exam-type.find	2024-09-09 11:37:53.997	2024-09-09 11:37:53.997	\N	\N
71	api::exam-type.exam-type.findOne	2024-09-09 11:37:53.997	2024-09-09 11:37:53.997	\N	\N
76	api::student.student.findOne	2024-09-19 09:18:40.729	2024-09-19 09:18:40.729	\N	\N
80	api::exam-type.exam-type.create	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
81	api::exam-type.exam-type.update	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
82	api::exam-type.exam-type.delete	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
83	api::student-mark.student-mark.create	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
84	api::student-mark.student-mark.update	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
85	api::student-mark.student-mark.delete	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
86	api::subject.subject.create	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
87	api::subject.subject.update	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
88	api::subject.subject.delete	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
89	api::subject-class-teacher.subject-class-teacher.find	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
90	api::subject-class-teacher.subject-class-teacher.findOne	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
91	api::subject-class-teacher.subject-class-teacher.create	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
92	api::subject-class-teacher.subject-class-teacher.update	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
93	api::subject-class-teacher.subject-class-teacher.delete	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
94	api::teacher.teacher.find	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
95	api::teacher.teacher.findOne	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
96	api::teacher.teacher.create	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
97	api::teacher.teacher.update	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
98	api::teacher.teacher.delete	2024-09-19 09:33:53.314	2024-09-19 09:33:53.314	\N	\N
99	plugin::users-permissions.auth.forgotPassword	2024-09-20 15:39:43.292	2024-09-20 15:39:43.292	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	5	2	1
6	6	2	1
7	8	2	2
8	7	2	2
9	9	2	2
10	11	1	2
11	10	1	2
12	12	1	3
13	13	1	4
14	14	1	4
33	33	2	12
34	35	2	13
35	34	2	13
36	36	1	5
37	37	1	5
38	38	1	6
39	39	1	6
40	40	1	7
41	41	1	7
42	43	1	8
43	42	1	9
44	44	1	10
45	45	1	10
46	46	1	11
47	47	1	11
48	48	1	12
49	49	1	12
50	50	1	13
51	52	1	14
52	51	1	14
55	56	1	15
56	55	1	15
58	59	1	16
57	57	1	16
59	58	1	16
61	61	1	17
60	60	1	17
62	62	1	18
64	64	2	15
65	65	1	19
66	66	1	20
67	67	2	16
69	68	1	21
68	69	1	21
70	70	1	22
71	71	1	22
76	76	2	17
80	80	1	26
81	81	1	27
82	82	1	27
83	83	1	28
84	84	1	28
85	85	1	29
86	86	1	29
87	87	1	30
88	88	1	30
89	89	1	31
90	90	1	31
91	91	1	32
92	92	1	32
93	94	1	33
94	95	1	34
95	93	1	33
96	96	1	35
97	97	1	35
98	98	1	35
99	99	1	36
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	2024-05-16 10:26:32.384	2024-09-19 09:18:40.722	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	2024-05-16 10:26:32.38	2024-09-20 15:39:43.283	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Kapman	test@test.com	local	$2a$10$4GxSqyKF3QZAPDMJFyBnSOQB0qaAhDOaKhKbqTD4FwBRH5LcHfjY2	\N	\N	t	f	2024-06-02 19:06:09.912	2024-06-02 19:06:09.912	\N	\N
1	yyy	yy@gmail.com	local	$2a$10$g00a4BxuieVy1uiNm1tj2OAHUc6pkFTu4JooGuyx9rWZbiRP9xHE2	\N	\N	t	f	2024-06-02 17:58:19.44	2024-08-26 21:47:51.741	1	1
3	aya	aya@school.com	local	$2a$10$7fnjLNAeSdeL1ho/EOm.q.Lf927w8xReTNrfqtrC2WkWo8hjNqlN6	\N	\N	t	f	2024-09-01 19:59:59.13	2024-09-01 19:59:59.13	1	1
4	test	test@hh.com	local	$2a$10$RDgvd3YqJiechqD8CeslKu6XZ1XWghWM0V.a4g//OjCSZEZAwfkeq	\N	\N	t	f	2024-09-06 20:41:14.045	2024-09-06 20:41:14.045	1	1
5	maramharon11	maramharon11@school.com	local	$2a$10$2brJzWAUeR.3jSo0MVJiSOoMuD.AAwBhKjPcIzZ4Yw/HKe1dSSlcm	\N	\N	t	f	2024-09-12 11:22:05.705	2024-09-12 11:22:05.705	1	1
6	solafnasab11	solafnasab11@school.com	local	$2a$10$Z5BaRTuxR.xE4g/qSSLP/e/5MKItbFg6D/RgNQpLIeo64a8APGM3u	\N	\N	t	f	2024-09-12 11:26:24.673	2024-09-12 11:26:49.671	1	1
7	ayadawod11	ayadawod11@school.com	local	$2a$10$rmBFBMXmjZTqn4kD2CcoOuTVP96An1L3YRbjohjrSeH2suuAdExQy	\N	\N	t	f	2024-09-12 11:28:40.984	2024-09-12 11:28:40.984	1	1
8	asmaahajali11	asmaahajali11@school.com	local	$2a$10$WyfVDXhQTKC.cvx8RJtpy.2fafK4xBoYO0enUtqnpGjOZEaD4Sidq	\N	\N	t	f	2024-09-12 11:35:04.153	2024-09-12 11:35:04.153	1	1
9	hadelganom11	hadelganom11@school.com	local	$2a$10$Q.DHDWYR6DTCJbpldx3RMuWUDToFBzzk4IW28YaxxqEPzWQI1tSTi	\N	\N	t	f	2024-09-12 11:36:45.858	2024-09-12 11:36:45.858	1	1
11	maryammotlak11	maryammotlak11@school.com	local	$2a$10$duA7J7wEJvBO3Dj.AYIVoeXP.6Gne5R4wrX1bPJKnMSnFQJmopcee	\N	\N	t	f	2024-09-12 11:40:29.148	2024-09-12 11:40:29.148	1	1
12	marwamatar11	marwamatar11@school.com	local	$2a$10$L9ZSfaAgzPOr8tb/TljISOSvfWgxuj3fi9F8vDeeQFMjS.ch4IxVG	\N	\N	t	f	2024-09-12 11:42:08.46	2024-09-12 11:42:08.46	1	1
13	mayakhaled11	mayakhaled11@school.com	local	$2a$10$ruBCfTFzG7F.yIa3An7II.X.lNoFWjF.U8EcV/LH6lzYP0WMqCqT6	\N	\N	t	f	2024-09-12 11:48:09.856	2024-09-12 11:48:09.856	1	1
14	lamarshami11	lamarshami11@school.com	local	$2a$10$M7BFf3KgFjsLnPdL9mBAQebse6eB4qSUwARoL5o00jSab9eRLGPjy	\N	\N	t	f	2024-09-12 11:49:29.239	2024-09-12 11:49:29.239	1	1
15	fozyaawad11	fozyaawad11@school.com	local	$2a$10$vhnKeoqKa6cINXFWbZTOk..aAwZbvurcrCg9euzg9ZSlZs3zO0BQ6	\N	\N	t	f	2024-09-12 11:54:09.475	2024-09-12 11:54:09.475	1	1
16	shahadeid11	shahadeid11@school.com	local	$2a$10$aqw7voBfaahoy7vvh5wTDuzfUxBFTWW6ptOjMgHjU6AHqEMRoiu6K	\N	\N	t	f	2024-09-12 11:55:36.409	2024-09-12 11:55:36.409	1	1
17	shahaddiab11	shahaddiab11@school.com	local	$2a$10$jgr7cYvx9t0ETcbjVm/G3OmvBmBjHELeh.JzWwYkO521SzZGZr9MW	\N	\N	t	f	2024-09-12 11:57:04.065	2024-09-12 11:57:04.065	1	1
18	sanaatrash11	sanaatrash11@school.com	local	$2a$10$.ehmvQAkbe4r52jbgML9nO/3xsI6l//C55xdk41dZf/9mPLOEzcZy	\N	\N	t	f	2024-09-12 11:59:57.309	2024-09-12 11:59:57.309	1	1
19	sedraali11	sedraali11@school.com	local	$2a$10$BMbMLRccjnZEritu3vbFoOXMhyVwmMZkx2XtQBIc2x1xcTSac7MU6	\N	\N	t	f	2024-09-12 12:02:15.79	2024-09-12 12:02:15.79	1	1
20	sarahssuin11	sarahssuin11@school.com	local	$2a$10$R6AJOOrQneQ6QN4NO/5DuuA4MaUlV7Zl.Bg99d34rQGzTs3yJszhO	\N	\N	t	f	2024-09-12 12:04:19.3	2024-09-12 12:04:19.3	1	1
21	dyalatabsh11	dyalatabsh11@school.com	local	$2a$10$K2iJC6adAcsBeDYpZgAObuIgW.xSiPJqJHR2LZXjeXrlfu.6hOk7q	\N	\N	t	f	2024-09-12 12:06:28.998	2024-09-12 12:06:28.998	1	1
22	zenabzyad11	zenabzyad11@school.com	local	$2a$10$pLVC4tsuGM3cW0KeGD6FjeaYhjrblwYx30em9HjUVk1UNfzkkcK7.	\N	\N	t	f	2024-09-12 12:07:21.374	2024-09-12 12:07:21.374	1	1
23	khadejamansi11	khadejamansi11@school.com	local	$2a$10$wJQZgogOtM3RT9lWr6FJu.mQwzyhm67iu/qYhvFwezIKgL9/cdqdm	\N	\N	t	f	2024-09-12 12:09:21.901	2024-09-12 12:09:21.901	1	1
24	janashalabi11	janashalabi11@school.com	local	$2a$10$qB7Er.E9.EH8xbBDAPwP7OjfSTAMd8Y0JXmzybpit0gf8ARNdmQ3C	\N	\N	t	f	2024-09-12 12:10:11.341	2024-09-12 12:10:11.341	1	1
25	inasjarash11	inasjarash11@school.com	local	$2a$10$xRQK3D7bLl04OJXupckQVOQl9DHPYMfoBxOAOOTXlpr13IPDhS5gq	\N	\N	t	f	2024-09-12 12:12:08.01	2024-09-12 12:12:08.01	1	1
26	ayarefai12	ayarefai12@school.com	local	$2a$10$RZCMHWOjRQZCVLZYQSmsfuV/rCWAcTyBdfWyf1ymROreaLfX/cYmO	\N	\N	t	f	2024-09-12 12:47:05.959	2024-09-12 12:47:05.959	1	1
27	halaqamar12	halaqamar12@school.com	local	$2a$10$6RFQy58.t6aDPCEUrNiZ4uFHgkghUFwUwbl16X.AkgFyMi5SibNbm	\N	\N	t	f	2024-09-12 12:58:14.22	2024-09-12 12:58:14.22	1	1
28	hanangaya12	hanangaya12@school.com	local	$2a$10$G04zss0Fg1YljOsx2C1hDu8aE6yOEylhKfKg0gi2x7l8X3bnNUx7y	\N	\N	t	f	2024-09-12 13:23:45.499	2024-09-12 13:23:45.499	1	1
29	zekraalmohmed12	zekraalmohmed12@school.com	local	$2a$10$3ZWTxpINvnXR1zr1kPv.nODP/2bSfscihLzgWuvADpIn.Xa0mAb2G	\N	\N	t	f	2024-09-12 13:30:52.411	2024-09-12 13:30:52.411	1	1
30	saraallaham12	saraallaham12@school.com	local	$2a$10$BqG83hHTGnFKhjenMx8ESeAuqiAluClqL9UryAZ1z0DUvL9yMt6Fa	\N	\N	t	f	2024-09-12 22:27:36.776	2024-09-12 22:27:36.776	1	1
31	salammhisen12	salammhisen12@school.com	local	$2a$10$73SMFSioOvcZFC0PO4mnVOR7dFaKgXFj0iu2Nb9AQ6..eWxrZgcDG	\N	\N	t	f	2024-09-16 08:27:39.697	2024-09-16 08:27:39.697	1	1
32	shahadzeinalden12	shahadzeinalden12@school.com	local	$2a$10$V3/z5Mc2inIPBHWh1zvchOeLigm3YWv1rwQiWH5SY15Go6PcLjnre	\N	\N	t	f	2024-09-16 08:28:29.164	2024-09-16 08:28:29.164	1	1
33	shahadyasmina12	shahadyasmina12@school.com	local	$2a$10$876xbQc8crfVlalMcc/L8u5oCPuciYmWR2yd7ZzGt4pxviZT90kgm	\N	\N	t	f	2024-09-16 08:34:03.987	2024-09-16 08:34:03.987	1	1
34	shaimaahmad12	shaimaahmad12@school.com	local	$2a$10$VbxN.tBzORwYD5ElMWtsfO1o014PNf24ZX7jahTKk87/tJLM8qHXy	\N	\N	t	f	2024-09-16 08:37:30.006	2024-09-16 08:37:30.006	1	1
35	olarashed12	olarashed12@school.com	local	$2a$10$nLMXU/k9v2zX95e2D5edj.lEUFq01ARqyuSlPnISmvT0uS47Qxjt6	\N	\N	t	f	2024-09-16 08:39:09.359	2024-09-16 08:39:09.359	1	1
36	ganemahalabia12	ganemahalabia12@school.com	local	$2a$10$mw5F1uxPQk77/47c7eHOz.WRobM7GtZSDMAn22Z.E7ocYTuRG0EA6	\N	\N	t	f	2024-09-16 08:48:55.392	2024-09-16 08:48:55.392	1	1
37	lanamorad12	lanamorad12@school.com	local	$2a$10$k5m2i81fzExY.OeIOPD3xOnrX1qqprIt9BHTNWsvtl/O6j2KW8Uly	\N	\N	t	f	2024-09-16 08:50:32.818	2024-09-16 08:50:32.818	1	1
38	malaksaedi12	malaksaedi12@school.com	local	$2a$10$5eG9dO6v303cCuY1GIaeBeDMh3oo9Aj.OjpMVIzQKtF6VMz.6jSam	\N	\N	t	f	2024-09-16 09:01:00.247	2024-09-16 09:01:00.247	1	1
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
2	2	1	1
4	1	1	2
5	3	1	3
6	4	1	4
7	5	1	5
8	6	1	6
9	7	1	7
10	8	1	8
11	9	1	9
13	11	1	10
14	12	1	11
15	13	1	12
16	14	1	13
17	15	1	14
18	16	1	15
19	17	1	16
20	18	1	17
21	19	1	18
22	20	1	19
23	21	1	20
24	22	1	21
25	23	1	22
26	24	1	23
27	25	1	24
28	26	1	25
29	27	1	26
30	28	1	27
31	29	1	28
32	30	1	29
33	31	1	30
34	32	1	31
35	33	1	32
36	34	1	33
37	35	1	34
38	36	1	35
39	37	1	36
40	38	1	37
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 218, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 218, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: classes_exam_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_exam_links_id_seq', 3, true);


--
-- Name: classes_grade_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_grade_links_id_seq', 4, true);


--
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_id_seq', 4, true);


--
-- Name: exam_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exam_types_id_seq', 4, true);


--
-- Name: exams_exam_type_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exams_exam_type_links_id_seq', 3, true);


--
-- Name: exams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exams_id_seq', 2, true);


--
-- Name: exams_student_mark_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exams_student_mark_links_id_seq', 1, false);


--
-- Name: exams_subject_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exams_subject_links_id_seq', 3, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grades_id_seq', 6, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: registers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registers_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 15, true);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 15, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 37, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 32, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: student_marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_marks_id_seq', 3, true);


--
-- Name: student_marks_student_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_marks_student_links_id_seq', 1, false);


--
-- Name: students_class_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_class_links_id_seq', 33, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 37, true);


--
-- Name: subject_class_teachers_class_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_class_teachers_class_links_id_seq', 1, false);


--
-- Name: subject_class_teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_class_teachers_id_seq', 1, false);


--
-- Name: subject_class_teachers_subject_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_class_teachers_subject_links_id_seq', 1, false);


--
-- Name: subject_class_teachers_teacher_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_class_teachers_teacher_links_id_seq', 1, false);


--
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 25, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 99, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 99, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 38, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 40, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: classes_exam_links classes_exam_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_exam_links
    ADD CONSTRAINT classes_exam_links_pkey PRIMARY KEY (id);


--
-- Name: classes_exam_links classes_exam_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_exam_links
    ADD CONSTRAINT classes_exam_links_unique UNIQUE (class_id, exam_id);


--
-- Name: classes_grade_links classes_grade_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_grade_links
    ADD CONSTRAINT classes_grade_links_pkey PRIMARY KEY (id);


--
-- Name: classes_grade_links classes_grade_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_grade_links
    ADD CONSTRAINT classes_grade_links_unique UNIQUE (class_id, grade_id);


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- Name: exam_types exam_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_types
    ADD CONSTRAINT exam_types_pkey PRIMARY KEY (id);


--
-- Name: exams_exam_type_links exams_exam_type_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_exam_type_links
    ADD CONSTRAINT exams_exam_type_links_pkey PRIMARY KEY (id);


--
-- Name: exams_exam_type_links exams_exam_type_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_exam_type_links
    ADD CONSTRAINT exams_exam_type_links_unique UNIQUE (exam_id, exam_type_id);


--
-- Name: exams exams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_pkey PRIMARY KEY (id);


--
-- Name: exams_student_mark_links exams_student_mark_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_student_mark_links
    ADD CONSTRAINT exams_student_mark_links_pkey PRIMARY KEY (id);


--
-- Name: exams_student_mark_links exams_student_mark_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_student_mark_links
    ADD CONSTRAINT exams_student_mark_links_unique UNIQUE (exam_id, student_mark_id);


--
-- Name: exams_subject_links exams_subject_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_subject_links
    ADD CONSTRAINT exams_subject_links_pkey PRIMARY KEY (id);


--
-- Name: exams_subject_links exams_subject_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_subject_links
    ADD CONSTRAINT exams_subject_links_unique UNIQUE (exam_id, subject_id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: registers registers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registers
    ADD CONSTRAINT registers_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: student_marks student_marks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks
    ADD CONSTRAINT student_marks_pkey PRIMARY KEY (id);


--
-- Name: student_marks_student_links student_marks_student_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks_student_links
    ADD CONSTRAINT student_marks_student_links_pkey PRIMARY KEY (id);


--
-- Name: student_marks_student_links student_marks_student_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks_student_links
    ADD CONSTRAINT student_marks_student_links_unique UNIQUE (student_mark_id, student_id);


--
-- Name: students_class_links students_class_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_class_links
    ADD CONSTRAINT students_class_links_pkey PRIMARY KEY (id);


--
-- Name: students_class_links students_class_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_class_links
    ADD CONSTRAINT students_class_links_unique UNIQUE (student_id, class_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: subject_class_teachers_class_links subject_class_teachers_class_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_class_links
    ADD CONSTRAINT subject_class_teachers_class_links_pkey PRIMARY KEY (id);


--
-- Name: subject_class_teachers_class_links subject_class_teachers_class_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_class_links
    ADD CONSTRAINT subject_class_teachers_class_links_unique UNIQUE (subject_class_teacher_id, class_id);


--
-- Name: subject_class_teachers subject_class_teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers
    ADD CONSTRAINT subject_class_teachers_pkey PRIMARY KEY (id);


--
-- Name: subject_class_teachers_subject_links subject_class_teachers_subject_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_subject_links
    ADD CONSTRAINT subject_class_teachers_subject_links_pkey PRIMARY KEY (id);


--
-- Name: subject_class_teachers_subject_links subject_class_teachers_subject_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_subject_links
    ADD CONSTRAINT subject_class_teachers_subject_links_unique UNIQUE (subject_class_teacher_id, subject_id);


--
-- Name: subject_class_teachers_teacher_links subject_class_teachers_teacher_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_teacher_links
    ADD CONSTRAINT subject_class_teachers_teacher_links_pkey PRIMARY KEY (id);


--
-- Name: subject_class_teachers_teacher_links subject_class_teachers_teacher_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_teacher_links
    ADD CONSTRAINT subject_class_teachers_teacher_links_unique UNIQUE (subject_class_teacher_id, teacher_id);


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: classes_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_created_by_id_fk ON public.classes USING btree (created_by_id);


--
-- Name: classes_exam_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_exam_links_fk ON public.classes_exam_links USING btree (class_id);


--
-- Name: classes_exam_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_exam_links_inv_fk ON public.classes_exam_links USING btree (exam_id);


--
-- Name: classes_exam_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_exam_links_order_inv_fk ON public.classes_exam_links USING btree (class_order);


--
-- Name: classes_grade_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_grade_links_fk ON public.classes_grade_links USING btree (class_id);


--
-- Name: classes_grade_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_grade_links_inv_fk ON public.classes_grade_links USING btree (grade_id);


--
-- Name: classes_grade_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_grade_links_order_inv_fk ON public.classes_grade_links USING btree (class_order);


--
-- Name: classes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_updated_by_id_fk ON public.classes USING btree (updated_by_id);


--
-- Name: exam_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_types_created_by_id_fk ON public.exam_types USING btree (created_by_id);


--
-- Name: exam_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_types_updated_by_id_fk ON public.exam_types USING btree (updated_by_id);


--
-- Name: exams_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_created_by_id_fk ON public.exams USING btree (created_by_id);


--
-- Name: exams_exam_type_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_exam_type_links_fk ON public.exams_exam_type_links USING btree (exam_id);


--
-- Name: exams_exam_type_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_exam_type_links_inv_fk ON public.exams_exam_type_links USING btree (exam_type_id);


--
-- Name: exams_student_mark_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_student_mark_links_fk ON public.exams_student_mark_links USING btree (exam_id);


--
-- Name: exams_student_mark_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_student_mark_links_inv_fk ON public.exams_student_mark_links USING btree (student_mark_id);


--
-- Name: exams_student_mark_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_student_mark_links_order_inv_fk ON public.exams_student_mark_links USING btree (exam_order);


--
-- Name: exams_subject_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_subject_links_fk ON public.exams_subject_links USING btree (exam_id);


--
-- Name: exams_subject_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_subject_links_inv_fk ON public.exams_subject_links USING btree (subject_id);


--
-- Name: exams_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exams_updated_by_id_fk ON public.exams USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: grades_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grades_created_by_id_fk ON public.grades USING btree (created_by_id);


--
-- Name: grades_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grades_updated_by_id_fk ON public.grades USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: registers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX registers_created_by_id_fk ON public.registers USING btree (created_by_id);


--
-- Name: registers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX registers_updated_by_id_fk ON public.registers USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: student_marks_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_marks_created_by_id_fk ON public.student_marks USING btree (created_by_id);


--
-- Name: student_marks_student_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_marks_student_links_fk ON public.student_marks_student_links USING btree (student_mark_id);


--
-- Name: student_marks_student_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_marks_student_links_inv_fk ON public.student_marks_student_links USING btree (student_id);


--
-- Name: student_marks_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_marks_updated_by_id_fk ON public.student_marks USING btree (updated_by_id);


--
-- Name: students_class_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_class_links_fk ON public.students_class_links USING btree (student_id);


--
-- Name: students_class_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_class_links_inv_fk ON public.students_class_links USING btree (class_id);


--
-- Name: students_class_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_class_links_order_inv_fk ON public.students_class_links USING btree (student_order);


--
-- Name: students_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_created_by_id_fk ON public.students USING btree (created_by_id);


--
-- Name: students_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_updated_by_id_fk ON public.students USING btree (updated_by_id);


--
-- Name: subject_class_teachers_class_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_class_links_fk ON public.subject_class_teachers_class_links USING btree (subject_class_teacher_id);


--
-- Name: subject_class_teachers_class_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_class_links_inv_fk ON public.subject_class_teachers_class_links USING btree (class_id);


--
-- Name: subject_class_teachers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_created_by_id_fk ON public.subject_class_teachers USING btree (created_by_id);


--
-- Name: subject_class_teachers_subject_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_subject_links_fk ON public.subject_class_teachers_subject_links USING btree (subject_class_teacher_id);


--
-- Name: subject_class_teachers_subject_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_subject_links_inv_fk ON public.subject_class_teachers_subject_links USING btree (subject_id);


--
-- Name: subject_class_teachers_teacher_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_teacher_links_fk ON public.subject_class_teachers_teacher_links USING btree (subject_class_teacher_id);


--
-- Name: subject_class_teachers_teacher_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_teacher_links_inv_fk ON public.subject_class_teachers_teacher_links USING btree (teacher_id);


--
-- Name: subject_class_teachers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subject_class_teachers_updated_by_id_fk ON public.subject_class_teachers USING btree (updated_by_id);


--
-- Name: subjects_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subjects_created_by_id_fk ON public.subjects USING btree (created_by_id);


--
-- Name: subjects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subjects_updated_by_id_fk ON public.subjects USING btree (updated_by_id);


--
-- Name: teachers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_created_by_id_fk ON public.teachers USING btree (created_by_id);


--
-- Name: teachers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_updated_by_id_fk ON public.teachers USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: classes classes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: classes_exam_links classes_exam_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_exam_links
    ADD CONSTRAINT classes_exam_links_fk FOREIGN KEY (class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: classes_exam_links classes_exam_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_exam_links
    ADD CONSTRAINT classes_exam_links_inv_fk FOREIGN KEY (exam_id) REFERENCES public.exams(id) ON DELETE CASCADE;


--
-- Name: classes_grade_links classes_grade_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_grade_links
    ADD CONSTRAINT classes_grade_links_fk FOREIGN KEY (class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: classes_grade_links classes_grade_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_grade_links
    ADD CONSTRAINT classes_grade_links_inv_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- Name: classes classes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exam_types exam_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_types
    ADD CONSTRAINT exam_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exam_types exam_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_types
    ADD CONSTRAINT exam_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exams exams_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exams_exam_type_links exams_exam_type_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_exam_type_links
    ADD CONSTRAINT exams_exam_type_links_fk FOREIGN KEY (exam_id) REFERENCES public.exams(id) ON DELETE CASCADE;


--
-- Name: exams_exam_type_links exams_exam_type_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_exam_type_links
    ADD CONSTRAINT exams_exam_type_links_inv_fk FOREIGN KEY (exam_type_id) REFERENCES public.exam_types(id) ON DELETE CASCADE;


--
-- Name: exams_student_mark_links exams_student_mark_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_student_mark_links
    ADD CONSTRAINT exams_student_mark_links_fk FOREIGN KEY (exam_id) REFERENCES public.exams(id) ON DELETE CASCADE;


--
-- Name: exams_student_mark_links exams_student_mark_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_student_mark_links
    ADD CONSTRAINT exams_student_mark_links_inv_fk FOREIGN KEY (student_mark_id) REFERENCES public.student_marks(id) ON DELETE CASCADE;


--
-- Name: exams_subject_links exams_subject_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_subject_links
    ADD CONSTRAINT exams_subject_links_fk FOREIGN KEY (exam_id) REFERENCES public.exams(id) ON DELETE CASCADE;


--
-- Name: exams_subject_links exams_subject_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams_subject_links
    ADD CONSTRAINT exams_subject_links_inv_fk FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: exams exams_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: grades grades_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: grades grades_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: registers registers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registers
    ADD CONSTRAINT registers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: registers registers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registers
    ADD CONSTRAINT registers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: student_marks student_marks_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks
    ADD CONSTRAINT student_marks_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: student_marks_student_links student_marks_student_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks_student_links
    ADD CONSTRAINT student_marks_student_links_fk FOREIGN KEY (student_mark_id) REFERENCES public.student_marks(id) ON DELETE CASCADE;


--
-- Name: student_marks_student_links student_marks_student_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks_student_links
    ADD CONSTRAINT student_marks_student_links_inv_fk FOREIGN KEY (student_id) REFERENCES public.students(id) ON DELETE CASCADE;


--
-- Name: student_marks student_marks_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_marks
    ADD CONSTRAINT student_marks_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: students_class_links students_class_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_class_links
    ADD CONSTRAINT students_class_links_fk FOREIGN KEY (student_id) REFERENCES public.students(id) ON DELETE CASCADE;


--
-- Name: students_class_links students_class_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_class_links
    ADD CONSTRAINT students_class_links_inv_fk FOREIGN KEY (class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: students students_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: students students_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subject_class_teachers_class_links subject_class_teachers_class_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_class_links
    ADD CONSTRAINT subject_class_teachers_class_links_fk FOREIGN KEY (subject_class_teacher_id) REFERENCES public.subject_class_teachers(id) ON DELETE CASCADE;


--
-- Name: subject_class_teachers_class_links subject_class_teachers_class_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_class_links
    ADD CONSTRAINT subject_class_teachers_class_links_inv_fk FOREIGN KEY (class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: subject_class_teachers subject_class_teachers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers
    ADD CONSTRAINT subject_class_teachers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subject_class_teachers_subject_links subject_class_teachers_subject_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_subject_links
    ADD CONSTRAINT subject_class_teachers_subject_links_fk FOREIGN KEY (subject_class_teacher_id) REFERENCES public.subject_class_teachers(id) ON DELETE CASCADE;


--
-- Name: subject_class_teachers_subject_links subject_class_teachers_subject_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_subject_links
    ADD CONSTRAINT subject_class_teachers_subject_links_inv_fk FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: subject_class_teachers_teacher_links subject_class_teachers_teacher_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_teacher_links
    ADD CONSTRAINT subject_class_teachers_teacher_links_fk FOREIGN KEY (subject_class_teacher_id) REFERENCES public.subject_class_teachers(id) ON DELETE CASCADE;


--
-- Name: subject_class_teachers_teacher_links subject_class_teachers_teacher_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers_teacher_links
    ADD CONSTRAINT subject_class_teachers_teacher_links_inv_fk FOREIGN KEY (teacher_id) REFERENCES public.teachers(id) ON DELETE CASCADE;


--
-- Name: subject_class_teachers subject_class_teachers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_class_teachers
    ADD CONSTRAINT subject_class_teachers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subjects subjects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subjects subjects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: teachers teachers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: teachers teachers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--


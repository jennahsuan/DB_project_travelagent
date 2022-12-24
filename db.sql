--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-12-24 17:17:47

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
-- TOC entry 209 (class 1259 OID 21194)
-- Name: accounts_guide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_guide (
    id bigint NOT NULL,
    name character varying(200),
    birthday date NOT NULL,
    language character varying(200) NOT NULL,
    seniority integer NOT NULL,
    user_id integer
);


ALTER TABLE public.accounts_guide OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 21197)
-- Name: accounts_guide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_guide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_guide_id_seq OWNER TO postgres;

--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 210
-- Name: accounts_guide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_guide_id_seq OWNED BY public.accounts_guide.id;


--
-- TOC entry 211 (class 1259 OID 21198)
-- Name: accounts_member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_member (
    id bigint NOT NULL,
    name character varying(200),
    phone character varying(128) NOT NULL,
    gender character varying(1) NOT NULL,
    birthday date NOT NULL,
    nation character varying(20) NOT NULL,
    "register_Date" date NOT NULL,
    user_id integer,
    email character varying(254)
);


ALTER TABLE public.accounts_member OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 21203)
-- Name: accounts_member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_member_id_seq OWNER TO postgres;

--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 212
-- Name: accounts_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_member_id_seq OWNED BY public.accounts_member.id;


--
-- TOC entry 213 (class 1259 OID 21204)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 21207)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 215 (class 1259 OID 21208)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 21211)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 217 (class 1259 OID 21212)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 21215)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 219 (class 1259 OID 21216)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 21221)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 21224)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 222 (class 1259 OID 21225)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 223 (class 1259 OID 21226)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 21229)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 225 (class 1259 OID 21230)
-- Name: calc_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calc_order (
    id bigint NOT NULL,
    order_tourist_count integer NOT NULL,
    member_id bigint NOT NULL,
    tour_id bigint NOT NULL,
    order_price integer
);


ALTER TABLE public.calc_order OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 21233)
-- Name: calc_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calc_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calc_order_id_seq OWNER TO postgres;

--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 226
-- Name: calc_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calc_order_id_seq OWNED BY public.calc_order.id;


--
-- TOC entry 227 (class 1259 OID 21234)
-- Name: calc_tourist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calc_tourist (
    id character varying(10) NOT NULL,
    name character varying(200) NOT NULL,
    food_concern character varying(200),
    allergic character varying(200),
    disease character varying(200),
    order_id bigint NOT NULL
);


ALTER TABLE public.calc_tourist OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 21239)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 21245)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 229
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 230 (class 1259 OID 21246)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 21249)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 232 (class 1259 OID 21250)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 21255)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 234 (class 1259 OID 21256)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 21261)
-- Name: itinerary_bus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itinerary_bus (
    id bigint NOT NULL,
    "driverName" character varying(50) NOT NULL,
    company character varying(50),
    year integer NOT NULL,
    seat_number integer NOT NULL
);


ALTER TABLE public.itinerary_bus OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 21264)
-- Name: itinerary_bus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itinerary_bus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itinerary_bus_id_seq OWNER TO postgres;

--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 236
-- Name: itinerary_bus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itinerary_bus_id_seq OWNED BY public.itinerary_bus.id;


--
-- TOC entry 237 (class 1259 OID 21265)
-- Name: itinerary_hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itinerary_hotel (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    location character varying(100) NOT NULL
);


ALTER TABLE public.itinerary_hotel OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 21268)
-- Name: itinerary_hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itinerary_hotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itinerary_hotel_id_seq OWNER TO postgres;

--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 238
-- Name: itinerary_hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itinerary_hotel_id_seq OWNED BY public.itinerary_hotel.id;


--
-- TOC entry 239 (class 1259 OID 21269)
-- Name: itinerary_itinerary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itinerary_itinerary (
    id bigint NOT NULL,
    hotel1_id bigint,
    lunch1_id bigint,
    lunch2_id bigint,
    site1_id bigint,
    site2_id bigint,
    site3_id bigint,
    site4_id bigint
);


ALTER TABLE public.itinerary_itinerary OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 21272)
-- Name: itinerary_itinerary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itinerary_itinerary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itinerary_itinerary_id_seq OWNER TO postgres;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 240
-- Name: itinerary_itinerary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itinerary_itinerary_id_seq OWNED BY public.itinerary_itinerary.id;


--
-- TOC entry 241 (class 1259 OID 21273)
-- Name: itinerary_restaurant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itinerary_restaurant (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    location character varying(100) NOT NULL
);


ALTER TABLE public.itinerary_restaurant OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 21276)
-- Name: itinerary_restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itinerary_restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itinerary_restaurant_id_seq OWNER TO postgres;

--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 242
-- Name: itinerary_restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itinerary_restaurant_id_seq OWNED BY public.itinerary_restaurant.id;


--
-- TOC entry 243 (class 1259 OID 21277)
-- Name: itinerary_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itinerary_site (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    location character varying(100) NOT NULL
);


ALTER TABLE public.itinerary_site OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 21280)
-- Name: itinerary_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itinerary_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itinerary_site_id_seq OWNER TO postgres;

--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 244
-- Name: itinerary_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itinerary_site_id_seq OWNED BY public.itinerary_site.id;


--
-- TOC entry 245 (class 1259 OID 21281)
-- Name: travelloapp_destination; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.travelloapp_destination (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    img character varying(100) NOT NULL,
    "desc" text NOT NULL,
    price integer NOT NULL,
    offer boolean NOT NULL
);


ALTER TABLE public.travelloapp_destination OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 21286)
-- Name: travelloapp_destination_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.travelloapp_destination_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travelloapp_destination_id_seq OWNER TO postgres;

--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 246
-- Name: travelloapp_destination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.travelloapp_destination_id_seq OWNED BY public.travelloapp_destination.id;


--
-- TOC entry 247 (class 1259 OID 21287)
-- Name: travelloapp_tour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.travelloapp_tour (
    id bigint NOT NULL,
    "startDate" date NOT NULL,
    price integer NOT NULL,
    field character varying(100),
    total_tourist integer NOT NULL,
    bus_id bigint,
    guide_id bigint,
    itinerary_plan_id bigint NOT NULL,
    max_tourist integer NOT NULL
);


ALTER TABLE public.travelloapp_tour OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 21290)
-- Name: travelloapp_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.travelloapp_tour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travelloapp_tour_id_seq OWNER TO postgres;

--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 248
-- Name: travelloapp_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.travelloapp_tour_id_seq OWNED BY public.travelloapp_tour.id;


--
-- TOC entry 3262 (class 2604 OID 21291)
-- Name: accounts_guide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_guide ALTER COLUMN id SET DEFAULT nextval('public.accounts_guide_id_seq'::regclass);


--
-- TOC entry 3263 (class 2604 OID 21292)
-- Name: accounts_member id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_member ALTER COLUMN id SET DEFAULT nextval('public.accounts_member_id_seq'::regclass);


--
-- TOC entry 3264 (class 2604 OID 21293)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3265 (class 2604 OID 21294)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3266 (class 2604 OID 21295)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3267 (class 2604 OID 21296)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3268 (class 2604 OID 21297)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3269 (class 2604 OID 21298)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3270 (class 2604 OID 21299)
-- Name: calc_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calc_order ALTER COLUMN id SET DEFAULT nextval('public.calc_order_id_seq'::regclass);


--
-- TOC entry 3271 (class 2604 OID 21300)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3273 (class 2604 OID 21301)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 21302)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3275 (class 2604 OID 21303)
-- Name: itinerary_bus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_bus ALTER COLUMN id SET DEFAULT nextval('public.itinerary_bus_id_seq'::regclass);


--
-- TOC entry 3276 (class 2604 OID 21304)
-- Name: itinerary_hotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_hotel ALTER COLUMN id SET DEFAULT nextval('public.itinerary_hotel_id_seq'::regclass);


--
-- TOC entry 3277 (class 2604 OID 21305)
-- Name: itinerary_itinerary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary ALTER COLUMN id SET DEFAULT nextval('public.itinerary_itinerary_id_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 21306)
-- Name: itinerary_restaurant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_restaurant ALTER COLUMN id SET DEFAULT nextval('public.itinerary_restaurant_id_seq'::regclass);


--
-- TOC entry 3279 (class 2604 OID 21307)
-- Name: itinerary_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_site ALTER COLUMN id SET DEFAULT nextval('public.itinerary_site_id_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 21308)
-- Name: travelloapp_destination id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_destination ALTER COLUMN id SET DEFAULT nextval('public.travelloapp_destination_id_seq'::regclass);


--
-- TOC entry 3281 (class 2604 OID 21309)
-- Name: travelloapp_tour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_tour ALTER COLUMN id SET DEFAULT nextval('public.travelloapp_tour_id_seq'::regclass);


--
-- TOC entry 3535 (class 0 OID 21194)
-- Dependencies: 209
-- Data for Name: accounts_guide; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.accounts_guide VALUES (6, 'Kathleen', '1981-07-18', 'cn', 21, NULL);
INSERT INTO public.accounts_guide VALUES (7, 'Michael', '1969-03-26', 'cn', 24, NULL);
INSERT INTO public.accounts_guide VALUES (8, 'Georgina', '2004-04-23', 'fr', 0, NULL);
INSERT INTO public.accounts_guide VALUES (9, 'Bobbi', '1960-10-25', 'rus', 24, NULL);
INSERT INTO public.accounts_guide VALUES (10, 'Sarah', '1978-10-30', 'cn', 21, NULL);
INSERT INTO public.accounts_guide VALUES (11, 'Dorothea', '1989-08-29', 'cn', 25, NULL);
INSERT INTO public.accounts_guide VALUES (12, 'William', '1987-01-26', 'kor', 33, NULL);
INSERT INTO public.accounts_guide VALUES (13, 'Christopher', '1964-05-14', 'eng', 2, NULL);
INSERT INTO public.accounts_guide VALUES (14, 'Athena', '1980-02-18', 'eng', 32, NULL);
INSERT INTO public.accounts_guide VALUES (15, 'Frances', '2003-05-07', 'rus', 30, NULL);
INSERT INTO public.accounts_guide VALUES (16, 'Thad', '1968-04-13', 'ind', 7, NULL);
INSERT INTO public.accounts_guide VALUES (17, 'Justine', '1969-10-04', 'eng', 13, NULL);
INSERT INTO public.accounts_guide VALUES (18, 'Susan', '1976-07-29', 'jp', 2, NULL);
INSERT INTO public.accounts_guide VALUES (19, 'Charles', '1965-06-19', 'cn', 24, NULL);
INSERT INTO public.accounts_guide VALUES (20, 'Tracy', '1978-03-08', 'cn', 4, NULL);
INSERT INTO public.accounts_guide VALUES (21, 'Kim', '1994-01-19', 'fr', 28, NULL);
INSERT INTO public.accounts_guide VALUES (22, 'Joseph', '1993-01-28', 'hun', 6, NULL);
INSERT INTO public.accounts_guide VALUES (23, 'Malissa', '1997-05-28', 'gre', 1, NULL);
INSERT INTO public.accounts_guide VALUES (24, 'Jamie', '2004-12-08', 'eng', 38, NULL);
INSERT INTO public.accounts_guide VALUES (25, 'David', '1992-04-19', 'por', 4, NULL);
INSERT INTO public.accounts_guide VALUES (26, 'Bruce', '1969-03-12', 'por', 0, NULL);
INSERT INTO public.accounts_guide VALUES (27, 'Tanya', '1985-03-02', 'gre', 8, NULL);
INSERT INTO public.accounts_guide VALUES (28, 'Jeremy', '1997-12-04', 'indo', 16, NULL);
INSERT INTO public.accounts_guide VALUES (29, 'Amal', '1988-09-13', 'cn', 36, NULL);
INSERT INTO public.accounts_guide VALUES (30, 'Gigi', '2004-04-08', 'eng', 10, NULL);
INSERT INTO public.accounts_guide VALUES (31, 'Larry', '1991-04-26', 'cn', 12, NULL);
INSERT INTO public.accounts_guide VALUES (32, 'Phyllis', '1975-02-21', 'gre', 14, NULL);
INSERT INTO public.accounts_guide VALUES (33, 'Amanda', '1998-07-17', 'eng', 12, NULL);
INSERT INTO public.accounts_guide VALUES (34, 'Todd', '1980-07-12', 'hun', 7, NULL);
INSERT INTO public.accounts_guide VALUES (35, 'Joseph', '1968-07-16', 'cn', 31, NULL);
INSERT INTO public.accounts_guide VALUES (36, 'George', '1970-08-04', 'cn', 36, NULL);
INSERT INTO public.accounts_guide VALUES (37, 'Edward', '1983-05-12', 'cn', 11, NULL);
INSERT INTO public.accounts_guide VALUES (38, 'Geraldine', '1965-06-01', 'eng', 2, NULL);
INSERT INTO public.accounts_guide VALUES (39, 'Chad', '1965-10-03', 'eng', 24, NULL);
INSERT INTO public.accounts_guide VALUES (40, 'Andrea', '1988-03-23', 'cn', 0, NULL);
INSERT INTO public.accounts_guide VALUES (41, 'William', '2003-07-28', 'eng', 8, NULL);
INSERT INTO public.accounts_guide VALUES (42, 'Norman', '1991-11-28', 'eng', 38, NULL);
INSERT INTO public.accounts_guide VALUES (43, 'Diane', '1979-07-31', 'eng', 2, NULL);
INSERT INTO public.accounts_guide VALUES (44, 'John', '1998-06-05', 'ind', 14, NULL);
INSERT INTO public.accounts_guide VALUES (45, 'Karen', '1964-09-17', 'cn', 36, NULL);
INSERT INTO public.accounts_guide VALUES (46, 'Alberto', '2004-11-10', 'scn', 14, NULL);
INSERT INTO public.accounts_guide VALUES (47, 'Barry', '1993-09-01', 'rus', 10, NULL);
INSERT INTO public.accounts_guide VALUES (48, 'William', '1992-09-29', 'eng', 36, NULL);
INSERT INTO public.accounts_guide VALUES (49, 'Juanita', '1995-07-23', 'eng', 11, NULL);
INSERT INTO public.accounts_guide VALUES (50, 'Cara', '1991-01-29', 'eng', 3, NULL);
INSERT INTO public.accounts_guide VALUES (51, 'Merry', '1990-12-27', 'jp', 1, NULL);
INSERT INTO public.accounts_guide VALUES (52, 'Rosalva', '1993-05-11', 'eng', 30, NULL);
INSERT INTO public.accounts_guide VALUES (53, 'Lisa', '1997-10-14', 'kor', 38, NULL);
INSERT INTO public.accounts_guide VALUES (54, 'David', '1976-06-15', 'scn', 31, NULL);
INSERT INTO public.accounts_guide VALUES (55, 'Martin', '1965-01-03', 'rus', 6, NULL);
INSERT INTO public.accounts_guide VALUES (56, 'Christina', '1961-02-23', 'eng', 17, NULL);
INSERT INTO public.accounts_guide VALUES (57, 'Peggy', '1980-11-30', 'eng', 32, NULL);
INSERT INTO public.accounts_guide VALUES (58, 'Judie', '2001-07-08', 'eng', 33, NULL);
INSERT INTO public.accounts_guide VALUES (59, 'William', '1966-08-16', 'cn', 39, NULL);
INSERT INTO public.accounts_guide VALUES (60, 'Mary', '1999-07-31', 'spa', 8, NULL);
INSERT INTO public.accounts_guide VALUES (61, 'Kim', '1975-09-10', 'indo', 39, NULL);
INSERT INTO public.accounts_guide VALUES (62, 'Ronald', '1986-04-03', 'eng', 27, NULL);
INSERT INTO public.accounts_guide VALUES (63, 'Ilda', '1972-04-03', 'hun', 29, NULL);
INSERT INTO public.accounts_guide VALUES (64, 'Irene', '1987-09-11', 'spa', 8, NULL);
INSERT INTO public.accounts_guide VALUES (65, 'Gabrielle', '1961-07-05', 'eng', 9, NULL);
INSERT INTO public.accounts_guide VALUES (66, 'Jennifer', '1981-03-05', 'eng', 39, NULL);
INSERT INTO public.accounts_guide VALUES (67, 'Vincent', '1999-12-31', 'cn', 25, NULL);
INSERT INTO public.accounts_guide VALUES (68, 'Shane', '1999-03-29', 'eng', 3, NULL);
INSERT INTO public.accounts_guide VALUES (69, 'James', '1980-08-20', 'eng', 5, NULL);
INSERT INTO public.accounts_guide VALUES (70, 'Ron', '1978-03-02', 'cn', 35, NULL);
INSERT INTO public.accounts_guide VALUES (71, 'Gary', '1999-06-05', 'eng', 7, NULL);
INSERT INTO public.accounts_guide VALUES (72, 'Rochelle', '1986-01-14', 'eng', 36, NULL);
INSERT INTO public.accounts_guide VALUES (73, 'William', '1972-11-26', 'eng', 24, NULL);
INSERT INTO public.accounts_guide VALUES (74, 'Marilyn', '1988-03-11', 'eng', 28, NULL);
INSERT INTO public.accounts_guide VALUES (75, 'Anthony', '1960-01-17', 'eng', 19, NULL);
INSERT INTO public.accounts_guide VALUES (76, 'Amanda', '1998-02-28', 'eng', 29, NULL);
INSERT INTO public.accounts_guide VALUES (77, 'Florine', '1991-03-02', 'eng', 39, NULL);
INSERT INTO public.accounts_guide VALUES (78, 'Samantha', '1967-04-22', 'eng', 19, NULL);
INSERT INTO public.accounts_guide VALUES (79, 'Ruby', '1978-01-03', 'eng', 7, NULL);
INSERT INTO public.accounts_guide VALUES (80, 'Faith', '1997-01-01', 'eng', 11, NULL);
INSERT INTO public.accounts_guide VALUES (81, 'Russell', '2002-02-25', 'cn', 24, NULL);
INSERT INTO public.accounts_guide VALUES (82, 'Victoria', '2003-05-05', 'jp', 33, NULL);
INSERT INTO public.accounts_guide VALUES (83, 'Glenda', '1965-09-03', 'sau', 34, NULL);
INSERT INTO public.accounts_guide VALUES (84, 'Keith', '1986-07-19', 'cn', 4, NULL);
INSERT INTO public.accounts_guide VALUES (85, 'Avis', '1999-10-25', 'hun', 2, NULL);
INSERT INTO public.accounts_guide VALUES (86, 'Rosalinda', '1971-11-30', 'tur', 2, NULL);
INSERT INTO public.accounts_guide VALUES (87, 'Marguerite', '1978-12-06', 'eng', 21, NULL);
INSERT INTO public.accounts_guide VALUES (88, 'Vincent', '1966-09-17', 'ind', 28, NULL);
INSERT INTO public.accounts_guide VALUES (89, 'Lillian', '1998-08-08', 'jp', 18, NULL);
INSERT INTO public.accounts_guide VALUES (90, 'Jon', '1997-05-04', 'tur', 39, NULL);
INSERT INTO public.accounts_guide VALUES (91, 'Dave', '1989-02-25', 'tur', 29, NULL);
INSERT INTO public.accounts_guide VALUES (92, 'Jill', '1969-03-05', 'cn', 4, NULL);
INSERT INTO public.accounts_guide VALUES (93, 'Marion', '1967-03-09', 'scn', 14, NULL);
INSERT INTO public.accounts_guide VALUES (94, 'Kenneth', '1974-11-06', 'kor', 22, NULL);
INSERT INTO public.accounts_guide VALUES (95, 'Leslie', '1979-06-04', 'cn', 3, NULL);
INSERT INTO public.accounts_guide VALUES (96, 'Cecilia', '1962-11-19', 'eng', 10, NULL);
INSERT INTO public.accounts_guide VALUES (97, 'Daniel', '1992-09-26', 'eng', 4, NULL);
INSERT INTO public.accounts_guide VALUES (98, 'Thomas', '1970-08-28', 'gre', 27, NULL);
INSERT INTO public.accounts_guide VALUES (99, 'Arthur', '1964-01-23', 'eng', 37, NULL);
INSERT INTO public.accounts_guide VALUES (100, 'Kyung', '1980-10-30', 'cn', 7, NULL);
INSERT INTO public.accounts_guide VALUES (1, 'Bertha', '2000-12-17', 'cn', 3, 8);
INSERT INTO public.accounts_guide VALUES (2, 'Timothy', '1997-04-06', 'cn', 26, 9);
INSERT INTO public.accounts_guide VALUES (3, 'James', '2002-09-06', 'spa', 0, 10);
INSERT INTO public.accounts_guide VALUES (4, 'Reginald', '2004-02-08', 'rus', 12, 11);
INSERT INTO public.accounts_guide VALUES (5, 'Bryan', '1960-03-07', 'eng', 8, 12);


--
-- TOC entry 3537 (class 0 OID 21198)
-- Dependencies: 211
-- Data for Name: accounts_member; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.accounts_member VALUES (6, 'Cheryl', '0989-795-812', 'F', '1997-06-11', 'Taiwan', '2016-11-02', NULL, 'cherylkoval97_0611@gmail.com');
INSERT INTO public.accounts_member VALUES (7, 'Sofia', '0961-809-552', 'F', '1994-06-08', 'Taiwan', '2010-07-25', NULL, 'sofiadavis940608@gmail.com');
INSERT INTO public.accounts_member VALUES (8, 'Annette', '0948-312-127', 'F', '1991-09-29', 'Iceland', '2016-11-28', NULL, 'annettebaker@hotmail.com');
INSERT INTO public.accounts_member VALUES (9, 'Nichelle', '0980-576-328', 'F', '1940-10-17', 'Taiwan', '2015-06-05', NULL, 'nichellenewton40@gmail.com');
INSERT INTO public.accounts_member VALUES (10, 'Fred', '0981-331-090', 'M', '1966-06-16', 'Taiwan', '2011-10-26', NULL, 'fredstringer@gmail.com');
INSERT INTO public.accounts_member VALUES (1, 'Joseph', '0982-004-441', 'M', '2013-05-07', 'Taiwan', '2016-04-26', 2, 'josephbash13@iCloud.com');
INSERT INTO public.accounts_member VALUES (3, 'Gregory', '0958-361-674', 'M', '2013-05-25', 'Taiwan', '2019-02-19', 3, 'gregorymuller0525@gmail.com');
INSERT INTO public.accounts_member VALUES (4, 'Young', '0912-089-850', 'M', '1975-06-04', 'Russia', '2020-05-18', 4, 'youngsutton0604@gmail.com');
INSERT INTO public.accounts_member VALUES (12, 'Ash', '0911111111', 'M', '2022-12-16', 'Taiwan', '2022-12-16', 7, 'qqq@qqq.com');
INSERT INTO public.accounts_member VALUES (2, 'Debi', '0961-300-252', 'F', '1986-02-11', 'Korea', '2018-10-18', 13, 'debihersey@hotmail.com');
INSERT INTO public.accounts_member VALUES (5, 'Joyce', '0916-150-520', 'F', '1987-07-15', 'Switzerland', '2013-08-23', 14, 'joyceclark1987@gmail.com');
INSERT INTO public.accounts_member VALUES (13, 't6', '0988123456', 'M', '2022-12-21', 'Japan', '2022-12-21', 16, 'ststst@iii.com');


--
-- TOC entry 3539 (class 0 OID 21204)
-- Dependencies: 213
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3541 (class 0 OID 21208)
-- Dependencies: 215
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3543 (class 0 OID 21212)
-- Dependencies: 217
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add member', 7, 'add_member');
INSERT INTO public.auth_permission VALUES (26, 'Can change member', 7, 'change_member');
INSERT INTO public.auth_permission VALUES (27, 'Can delete member', 7, 'delete_member');
INSERT INTO public.auth_permission VALUES (28, 'Can view member', 7, 'view_member');
INSERT INTO public.auth_permission VALUES (29, 'Can add guide', 8, 'add_guide');
INSERT INTO public.auth_permission VALUES (30, 'Can change guide', 8, 'change_guide');
INSERT INTO public.auth_permission VALUES (31, 'Can delete guide', 8, 'delete_guide');
INSERT INTO public.auth_permission VALUES (32, 'Can view guide', 8, 'view_guide');
INSERT INTO public.auth_permission VALUES (33, 'Can add bus', 9, 'add_bus');
INSERT INTO public.auth_permission VALUES (34, 'Can change bus', 9, 'change_bus');
INSERT INTO public.auth_permission VALUES (35, 'Can delete bus', 9, 'delete_bus');
INSERT INTO public.auth_permission VALUES (36, 'Can view bus', 9, 'view_bus');
INSERT INTO public.auth_permission VALUES (37, 'Can add hotel', 10, 'add_hotel');
INSERT INTO public.auth_permission VALUES (38, 'Can change hotel', 10, 'change_hotel');
INSERT INTO public.auth_permission VALUES (39, 'Can delete hotel', 10, 'delete_hotel');
INSERT INTO public.auth_permission VALUES (40, 'Can view hotel', 10, 'view_hotel');
INSERT INTO public.auth_permission VALUES (41, 'Can add restaurant', 11, 'add_restaurant');
INSERT INTO public.auth_permission VALUES (42, 'Can change restaurant', 11, 'change_restaurant');
INSERT INTO public.auth_permission VALUES (43, 'Can delete restaurant', 11, 'delete_restaurant');
INSERT INTO public.auth_permission VALUES (44, 'Can view restaurant', 11, 'view_restaurant');
INSERT INTO public.auth_permission VALUES (45, 'Can add site', 12, 'add_site');
INSERT INTO public.auth_permission VALUES (46, 'Can change site', 12, 'change_site');
INSERT INTO public.auth_permission VALUES (47, 'Can delete site', 12, 'delete_site');
INSERT INTO public.auth_permission VALUES (48, 'Can view site', 12, 'view_site');
INSERT INTO public.auth_permission VALUES (49, 'Can add itinerary', 13, 'add_itinerary');
INSERT INTO public.auth_permission VALUES (50, 'Can change itinerary', 13, 'change_itinerary');
INSERT INTO public.auth_permission VALUES (51, 'Can delete itinerary', 13, 'delete_itinerary');
INSERT INTO public.auth_permission VALUES (52, 'Can view itinerary', 13, 'view_itinerary');
INSERT INTO public.auth_permission VALUES (53, 'Can add destination', 14, 'add_destination');
INSERT INTO public.auth_permission VALUES (54, 'Can change destination', 14, 'change_destination');
INSERT INTO public.auth_permission VALUES (55, 'Can delete destination', 14, 'delete_destination');
INSERT INTO public.auth_permission VALUES (56, 'Can view destination', 14, 'view_destination');
INSERT INTO public.auth_permission VALUES (57, 'Can add tour', 15, 'add_tour');
INSERT INTO public.auth_permission VALUES (58, 'Can change tour', 15, 'change_tour');
INSERT INTO public.auth_permission VALUES (59, 'Can delete tour', 15, 'delete_tour');
INSERT INTO public.auth_permission VALUES (60, 'Can view tour', 15, 'view_tour');
INSERT INTO public.auth_permission VALUES (61, 'Can add Order', 16, 'add_order');
INSERT INTO public.auth_permission VALUES (62, 'Can change Order', 16, 'change_order');
INSERT INTO public.auth_permission VALUES (63, 'Can delete Order', 16, 'delete_order');
INSERT INTO public.auth_permission VALUES (64, 'Can view Order', 16, 'view_order');
INSERT INTO public.auth_permission VALUES (65, 'Can add tourist', 17, 'add_tourist');
INSERT INTO public.auth_permission VALUES (66, 'Can change tourist', 17, 'change_tourist');
INSERT INTO public.auth_permission VALUES (67, 'Can delete tourist', 17, 'delete_tourist');
INSERT INTO public.auth_permission VALUES (68, 'Can view tourist', 17, 'view_tourist');


--
-- TOC entry 3545 (class 0 OID 21216)
-- Dependencies: 219
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$260000$MXDDGS28XlzKGm6vppvDxB$j9PU6zdlJC4pAplQ0Cly1nHf0VeVxavkFbTMOCdXwmM=', '2022-12-09 20:26:42.499673+08', true, 'super', '', '', 'super@gmail.com', true, true, '2022-12-09 20:26:23.131124+08');
INSERT INTO public.auth_user VALUES (7, 'pbkdf2_sha256$260000$9Gbe0y7QkE1vijzjWlNbRl$sXl62sYXUTnthEX0S8Y0KtoJDwLmCj1Nr9xWU83UefU=', '2022-12-16 15:53:48.999321+08', false, 'Ashy', 'Ash', 'Ash', 'qqq@qqq.com', false, true, '2022-12-16 15:53:33.582026+08');
INSERT INTO public.auth_user VALUES (8, 'pbkdf2_sha256$260000$ay84ChiMJJuu62oCkUG8Pe$vz48nm+U0Do75u4Uk6vvWYV+Ox5+H3yiLC4a/8JrYrk=', NULL, true, 'Bertha', '', '', 'bertha@gmail.com', true, true, '2022-12-16 17:09:30.967571+08');
INSERT INTO public.auth_user VALUES (9, 'pbkdf2_sha256$260000$FtSJLqPiAtV4uVzqSN96vp$K94ZZzPCLA7zmSMe1PDecYQf7RTslXN1mvu4Jofbn6Q=', NULL, true, 'Timothy', '', '', 'timothy@timo.com', true, true, '2022-12-16 17:14:58.21118+08');
INSERT INTO public.auth_user VALUES (10, 'pbkdf2_sha256$260000$Kr0jzfatNaXy4s5B089BDV$CGftjj7jnM7kivL+uyzgyTYlx3pQRNvWS5trTv91V7Q=', NULL, true, 'James', '', '', 'james@jjj.com', true, true, '2022-12-16 17:15:21.879545+08');
INSERT INTO public.auth_user VALUES (11, 'pbkdf2_sha256$260000$sWF1fgLYF7YtfXKkVyv517$Rb7XQ/lbpSKzvDgA5eNTOUAUvHmwGpRRCcZtDF3hYV0=', NULL, true, 'Reginald', '', '', 'reginald@ewe.com', true, true, '2022-12-16 17:15:49.07833+08');
INSERT INTO public.auth_user VALUES (12, 'pbkdf2_sha256$260000$JG7xR8nfh96T5gMR6ZfqhG$VybKEXftUTjLT6yofh1pVMR66cpF4FI3yIg1XjHT7FQ=', NULL, true, 'Byran', '', '', 'byran@ewe.com', true, true, '2022-12-16 17:16:22.747362+08');
INSERT INTO public.auth_user VALUES (13, 'pbkdf2_sha256$260000$ygkzgatFd6IqhAyXjXzsXC$QfGKCnmvoallss/wJjkMpZuDJSOpxDuhhWsGGlK8ZFo=', NULL, false, 'Debi', 'Debi', 'Chen', 'debihersey@hotmail.com', false, true, '2022-12-16 17:24:35.461671+08');
INSERT INTO public.auth_user VALUES (14, 'pbkdf2_sha256$260000$cpDVV2pvMrbarCkkdi6u2d$Ki6866J/cXwqeKxGHgntW+wWptOqH0lD9mg8Ncl9vTI=', NULL, false, 'Joyce', 'Joyce', 'Lin', 'joyceclark1987@gmail.com', false, true, '2022-12-16 17:25:50.496532+08');
INSERT INTO public.auth_user VALUES (2, 'pbkdf2_sha256$260000$hvtAOXwoxhtCT4HwhuxLvO$RTgvgNY5vBNmvKwKxRTKhfb27hdjVdoJl2NRtfHuaC4=', NULL, false, 'Joseph', 'Joseph', 'Bash', 'josephbash13@iCloud.com', false, true, '2022-12-16 11:03:36.410782+08');
INSERT INTO public.auth_user VALUES (3, 'pbkdf2_sha256$260000$0joLRhwz2s8B68eXLlY7QM$2vWbwyhbz0gapeSTKFx+sqQ/WDW8euIRkHFQdpIFV5s=', NULL, false, 'Gregory', 'Gregory', 'Muller', 'gregorymuller0525@gmail.com', false, true, '2022-12-16 15:04:40.902569+08');
INSERT INTO public.auth_user VALUES (4, 'pbkdf2_sha256$260000$en70SOWXGoEts2iNRwOsKv$pDCufNbuB0NAxw8VVUBrI9kP9KNxF8dZR2ilpqRv6X8=', NULL, false, 'Young', 'Young', 'Sutton', 'youngsutton0604@gmail.com', false, true, '2022-12-16 15:09:19.279434+08');
INSERT INTO public.auth_user VALUES (16, 'pbkdf2_sha256$260000$fi8rxwnTDVoaKePSLAM88K$iBWRhw1BgMUdFR3GOTHvgd7g0BQD597LqyndgqDQoJo=', '2022-12-23 10:37:24.667141+08', false, 't6', 'Steve', 'Q', 'ststst@iii.com', false, true, '2022-12-21 13:12:27.184126+08');


--
-- TOC entry 3546 (class 0 OID 21221)
-- Dependencies: 220
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3549 (class 0 OID 21226)
-- Dependencies: 223
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3551 (class 0 OID 21230)
-- Dependencies: 225
-- Data for Name: calc_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.calc_order VALUES (1, 32, 4, 1, 1872000);
INSERT INTO public.calc_order VALUES (2, 22, 10, 1, 1287000);
INSERT INTO public.calc_order VALUES (17, 2, 13, 2, 8000);


--
-- TOC entry 3553 (class 0 OID 21234)
-- Dependencies: 227
-- Data for Name: calc_tourist; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.calc_tourist VALUES ('R118837420', 'Young', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('U142260900', 'John', 'no pork', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('H228809000', 'Angela', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('K131440230', 'John', 'pescatarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('H164049060', 'Matthew', 'pescatarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('V154934900', 'Bertram', 'pescatarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A257603360', 'Ruth', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('M282712170', 'Lisa', 'flexitarian', 'milk', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('U239818720', 'Michelle', 'pescatarian', 'milk', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('I186349840', 'Johnny', 'pescatarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('S134647020', 'Robert', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A124841090', 'John', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('H129602280', 'Jason', 'vegetarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A126408250', 'Aaron', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A156330150', 'Guillermo', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('J137471440', 'Rufus', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A288112400', 'Lillian', 'flexitarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A254687790', 'Linda', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A253713060', 'Carol', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A253534770', 'Kenya', 'without any', 'no', 'alzheimer disease', 1);
INSERT INTO public.calc_tourist VALUES ('V244155240', 'Mary', 'pescatarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('M154529640', 'Ray', 'vegetarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A116887780', 'Floyd', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A292660800', 'Addie', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A241246970', 'Mary', 'no pork', 'no', 'heart disease', 1);
INSERT INTO public.calc_tourist VALUES ('A232313520', 'Mary', 'without any', 'no', 'mental health conditions', 1);
INSERT INTO public.calc_tourist VALUES ('A247260460', 'Clara', 'vegetarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('K111711270', 'Thomas', 'pescatarian', 'milk', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A266071470', 'Joan', 'vegetarian', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('E174301040', 'Joshua', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('I293759930', 'Helen', 'flexitarian', 'no', 'mental health conditions', 1);
INSERT INTO public.calc_tourist VALUES ('O240904170', 'Patricia', 'without any', 'no', 'no', 1);
INSERT INTO public.calc_tourist VALUES ('A174535900', 'Fred', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A292716120', 'Joy', 'flexitarian', 'milk', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('I113818390', 'Gregory', 'pescatarian', 'no', 'alzheimer disease', 2);
INSERT INTO public.calc_tourist VALUES ('V153872320', 'Craig', 'pescatarian', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('P118476350', 'Clarence', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A190783040', 'Andre', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('J160146060', 'Alan', 'pescatarian', 'milk', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A170659940', 'James', 'pescatarian', 'shellfish', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A269993630', 'Maureen', 'vegetarian', 'no', 'heart disease', 2);
INSERT INTO public.calc_tourist VALUES ('A243812300', 'Thelma', 'flexitarian', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A244502420', 'Shauna', 'flexitarian', 'no', 'heart disease', 2);
INSERT INTO public.calc_tourist VALUES ('A137095680', 'Shelby', 'pescatarian', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('J153983170', 'Don', 'pescatarian', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A248436400', 'Julissa', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A233564280', 'Patricia', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A253151780', 'Mary', 'pescatarian', 'no', 'mental health conditions', 2);
INSERT INTO public.calc_tourist VALUES ('N218111170', 'Gloria', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('U120854980', 'Byron', 'without any', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('G149467420', 'Michael', 'no pork', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A229251820', 'Geri', 'vegetarian', 'no', 'alzheimer disease', 2);
INSERT INTO public.calc_tourist VALUES ('A110058610', 'George', 'pescatarian', 'no', 'no', 2);
INSERT INTO public.calc_tourist VALUES ('A116956220', 'Gary', 'without any', 'no', 'kidney', 2);
INSERT INTO public.calc_tourist VALUES ('H123456789', 'Andy', 'peanuts', 'peanuts', 'No', 17);
INSERT INTO public.calc_tourist VALUES ('H22345678', 'Ella', 'No', 'No', 'carsick', 17);


--
-- TOC entry 3554 (class 0 OID 21239)
-- Dependencies: 228
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3556 (class 0 OID 21246)
-- Dependencies: 230
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'accounts', 'member');
INSERT INTO public.django_content_type VALUES (8, 'accounts', 'guide');
INSERT INTO public.django_content_type VALUES (9, 'itinerary', 'bus');
INSERT INTO public.django_content_type VALUES (10, 'itinerary', 'hotel');
INSERT INTO public.django_content_type VALUES (11, 'itinerary', 'restaurant');
INSERT INTO public.django_content_type VALUES (12, 'itinerary', 'site');
INSERT INTO public.django_content_type VALUES (13, 'itinerary', 'itinerary');
INSERT INTO public.django_content_type VALUES (14, 'travelloapp', 'destination');
INSERT INTO public.django_content_type VALUES (15, 'travelloapp', 'tour');
INSERT INTO public.django_content_type VALUES (16, 'calc', 'order');
INSERT INTO public.django_content_type VALUES (17, 'calc', 'tourist');


--
-- TOC entry 3558 (class 0 OID 21250)
-- Dependencies: 232
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2022-12-09 20:24:07.451791+08');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2022-12-09 20:24:07.536658+08');
INSERT INTO public.django_migrations VALUES (3, 'accounts', '0001_initial', '2022-12-09 20:24:07.57008+08');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0001_initial', '2022-12-09 20:24:07.597456+08');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0002_logentry_remove_auto_add', '2022-12-09 20:24:07.606507+08');
INSERT INTO public.django_migrations VALUES (6, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-09 20:24:07.616321+08');
INSERT INTO public.django_migrations VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2022-12-09 20:24:07.636325+08');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2022-12-09 20:24:07.649347+08');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0003_alter_user_email_max_length', '2022-12-09 20:24:07.65902+08');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0004_alter_user_username_opts', '2022-12-09 20:24:07.667001+08');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0005_alter_user_last_login_null', '2022-12-09 20:24:07.67767+08');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0006_require_contenttypes_0002', '2022-12-09 20:24:07.679662+08');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2022-12-09 20:24:07.687937+08');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0008_alter_user_username_max_length', '2022-12-09 20:24:07.70292+08');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2022-12-09 20:24:07.714324+08');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0010_alter_group_name_max_length', '2022-12-09 20:24:07.726524+08');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0011_update_proxy_permissions', '2022-12-09 20:24:07.734758+08');
INSERT INTO public.django_migrations VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2022-12-09 20:24:07.745198+08');
INSERT INTO public.django_migrations VALUES (19, 'itinerary', '0001_initial', '2022-12-09 20:24:07.797631+08');
INSERT INTO public.django_migrations VALUES (20, 'travelloapp', '0001_initial', '2022-12-09 20:24:07.837958+08');
INSERT INTO public.django_migrations VALUES (21, 'calc', '0001_initial', '2022-12-09 20:24:07.887945+08');
INSERT INTO public.django_migrations VALUES (22, 'sessions', '0001_initial', '2022-12-09 20:24:07.901175+08');
INSERT INTO public.django_migrations VALUES (23, 'accounts', '0002_member_email', '2022-12-09 20:37:05.037976+08');
INSERT INTO public.django_migrations VALUES (24, 'accounts', '0003_alter_member_user', '2022-12-09 20:41:15.673218+08');
INSERT INTO public.django_migrations VALUES (25, 'travelloapp', '0002_auto_20221209_2106', '2022-12-09 21:06:25.01238+08');
INSERT INTO public.django_migrations VALUES (26, 'calc', '0002_order_order_price', '2022-12-09 21:30:19.714591+08');
INSERT INTO public.django_migrations VALUES (27, 'calc', '0003_auto_20221209_2134', '2022-12-09 21:34:59.652149+08');
INSERT INTO public.django_migrations VALUES (28, 'travelloapp', '0003_alter_tour_total_tourist', '2022-12-23 11:32:50.313026+08');


--
-- TOC entry 3560 (class 0 OID 21256)
-- Dependencies: 234
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session VALUES ('h5e1qejcnnvvjgldy85i8czuyyvy0nr0', '.eJxVjEEOwiAURO_C2hA-UD516b5nIMAHqRqalHZlvLs06UJ3k5k3782c37fi9pZWNxO7MjDs8lsGH5-pHgs9fL0vPC51W-fAD4Sfa-PTQul1O9k_QfGt9LdMygej0epsqWcZshw8UAIBqFAjGoEKSHalHgeKkAhGZbXIMUQZ2ecLBjk4JQ:1p8Xw4:Yc6ZMcNwVmSl9ABQ4WKyUgHdR7Eb-97P5mAByoR7jSE', '2023-01-06 10:37:24.671015+08');


--
-- TOC entry 3561 (class 0 OID 21261)
-- Dependencies: 235
-- Data for Name: itinerary_bus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.itinerary_bus VALUES (1, 'Eric', 'golden dragon', 2010, 20);
INSERT INTO public.itinerary_bus VALUES (2, 'Malcolm', 'golden dragon', 2016, 47);
INSERT INTO public.itinerary_bus VALUES (3, 'Laverne', 'higer', 2010, 25);
INSERT INTO public.itinerary_bus VALUES (4, 'Michelle', 'MAN', 2012, 56);
INSERT INTO public.itinerary_bus VALUES (5, 'Eleanor', 'scania', 2016, 47);
INSERT INTO public.itinerary_bus VALUES (6, 'Raymond', 'marcopolo', 2014, 25);
INSERT INTO public.itinerary_bus VALUES (7, 'Mary', 'golden dragon', 2013, 55);
INSERT INTO public.itinerary_bus VALUES (8, 'Judith', 'marcopolo', 2018, 55);
INSERT INTO public.itinerary_bus VALUES (9, 'William', 'golden dragon', 2022, 20);
INSERT INTO public.itinerary_bus VALUES (10, 'Donna', 'diamler', 2018, 20);


--
-- TOC entry 3563 (class 0 OID 21265)
-- Dependencies: 237
-- Data for Name: itinerary_hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.itinerary_hotel VALUES (1, 'hotel motel', 'suburban');
INSERT INTO public.itinerary_hotel VALUES (2, 'wyne palace', 'suburban');
INSERT INTO public.itinerary_hotel VALUES (3, 'the marker hotel', 'suburban');
INSERT INTO public.itinerary_hotel VALUES (4, 'hotel emerald', 'city center');
INSERT INTO public.itinerary_hotel VALUES (5, 'hotel prince', 'city center');
INSERT INTO public.itinerary_hotel VALUES (6, 'motel & palace', 'suburban');
INSERT INTO public.itinerary_hotel VALUES (7, 'hotel axiom park', 'rural');
INSERT INTO public.itinerary_hotel VALUES (8, 'hotel cozzi', 'city center');
INSERT INTO public.itinerary_hotel VALUES (9, 'hotel prince', 'rural');
INSERT INTO public.itinerary_hotel VALUES (10, 'hotel phoneix', 'city center');


--
-- TOC entry 3565 (class 0 OID 21269)
-- Dependencies: 239
-- Data for Name: itinerary_itinerary; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.itinerary_itinerary VALUES (1, 8, 2, 2, 2, 2, 10, 10);
INSERT INTO public.itinerary_itinerary VALUES (2, 10, 2, 5, 2, 5, 4, 4);
INSERT INTO public.itinerary_itinerary VALUES (3, 1, 3, 10, 3, 10, 2, 2);
INSERT INTO public.itinerary_itinerary VALUES (4, 3, 4, 9, 4, 9, 3, 3);
INSERT INTO public.itinerary_itinerary VALUES (5, 10, 1, 7, 1, 7, 5, 5);
INSERT INTO public.itinerary_itinerary VALUES (6, 8, 10, 3, 10, 3, 4, 4);
INSERT INTO public.itinerary_itinerary VALUES (7, 2, 7, 8, 7, 8, 7, 7);
INSERT INTO public.itinerary_itinerary VALUES (8, 6, 9, 5, 9, 5, 6, 6);
INSERT INTO public.itinerary_itinerary VALUES (9, 5, 9, 9, 9, 9, 3, 3);
INSERT INTO public.itinerary_itinerary VALUES (10, 7, 1, 7, 1, 7, 2, 2);
INSERT INTO public.itinerary_itinerary VALUES (11, 2, 10, 2, 10, 2, 3, 3);
INSERT INTO public.itinerary_itinerary VALUES (12, 4, 2, 4, 2, 4, 2, 2);
INSERT INTO public.itinerary_itinerary VALUES (13, 9, 6, 3, 6, 3, 1, 1);
INSERT INTO public.itinerary_itinerary VALUES (14, 2, 8, 3, 8, 3, 9, 9);
INSERT INTO public.itinerary_itinerary VALUES (15, 5, 9, 3, 9, 3, 10, 10);
INSERT INTO public.itinerary_itinerary VALUES (16, 2, 5, 5, 5, 5, 9, 9);
INSERT INTO public.itinerary_itinerary VALUES (17, 8, 8, 4, 8, 4, 6, 6);
INSERT INTO public.itinerary_itinerary VALUES (18, 5, 1, 5, 1, 5, 4, 4);
INSERT INTO public.itinerary_itinerary VALUES (19, 4, 10, 2, 10, 2, 9, 9);
INSERT INTO public.itinerary_itinerary VALUES (20, 2, 7, 3, 7, 3, 3, 3);


--
-- TOC entry 3567 (class 0 OID 21273)
-- Dependencies: 241
-- Data for Name: itinerary_restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.itinerary_restaurant VALUES (1, 'chullschick', 'rural');
INSERT INTO public.itinerary_restaurant VALUES (2, 'le partage hotpot', 'city center');
INSERT INTO public.itinerary_restaurant VALUES (3, 'namo ', 'suburban');
INSERT INTO public.itinerary_restaurant VALUES (4, 'le partage bakery', 'city center');
INSERT INTO public.itinerary_restaurant VALUES (5, 'curista bar', 'city center');
INSERT INTO public.itinerary_restaurant VALUES (6, 'shake shack burger', 'city center');
INSERT INTO public.itinerary_restaurant VALUES (7, 'pertrus buffet', 'suburban');
INSERT INTO public.itinerary_restaurant VALUES (8, 'chamisee restaurant', 'city center');
INSERT INTO public.itinerary_restaurant VALUES (9, 'namo steak', 'suburban');
INSERT INTO public.itinerary_restaurant VALUES (10, 'indian room kimchi', 'rural');


--
-- TOC entry 3569 (class 0 OID 21277)
-- Dependencies: 243
-- Data for Name: itinerary_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.itinerary_site VALUES (1, 'national parks', 'rural');
INSERT INTO public.itinerary_site VALUES (2, 'wildlife attraction', 'rural');
INSERT INTO public.itinerary_site VALUES (3, 'wildlife attraction', 'city center');
INSERT INTO public.itinerary_site VALUES (4, 'waterfalls', 'suburban');
INSERT INTO public.itinerary_site VALUES (5, 'islands', 'city center');
INSERT INTO public.itinerary_site VALUES (6, 'casino', 'suburban');
INSERT INTO public.itinerary_site VALUES (7, 'festivals or parades', 'city center');
INSERT INTO public.itinerary_site VALUES (8, 'football stadium', 'suburban');
INSERT INTO public.itinerary_site VALUES (9, 'caves', 'rural');
INSERT INTO public.itinerary_site VALUES (10, 'entertainment venue', 'city center');


--
-- TOC entry 3571 (class 0 OID 21281)
-- Dependencies: 245
-- Data for Name: travelloapp_destination; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.travelloapp_destination VALUES (1, 'taitung trip', '', 'taitung', 100, false);


--
-- TOC entry 3573 (class 0 OID 21287)
-- Dependencies: 247
-- Data for Name: travelloapp_tour; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.travelloapp_tour VALUES (1, '2024-01-05', 58500, 'tour', 54, 8, 2, 1, 55);
INSERT INTO public.travelloapp_tour VALUES (2, '2023-01-01', 4000, 'family', 30, 2, 3, 4, 40);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 210
-- Name: accounts_guide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_guide_id_seq', 1, false);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 212
-- Name: accounts_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_member_id_seq', 13, true);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 16, true);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 226
-- Name: calc_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calc_order_id_seq', 17, true);


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 229
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 236
-- Name: itinerary_bus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itinerary_bus_id_seq', 1, false);


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 238
-- Name: itinerary_hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itinerary_hotel_id_seq', 1, false);


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 240
-- Name: itinerary_itinerary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itinerary_itinerary_id_seq', 1, false);


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 242
-- Name: itinerary_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itinerary_restaurant_id_seq', 1, false);


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 244
-- Name: itinerary_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itinerary_site_id_seq', 1, false);


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 246
-- Name: travelloapp_destination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.travelloapp_destination_id_seq', 1, false);


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 248
-- Name: travelloapp_tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.travelloapp_tour_id_seq', 13, true);


--
-- TOC entry 3283 (class 2606 OID 21311)
-- Name: accounts_guide accounts_guide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_guide
    ADD CONSTRAINT accounts_guide_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 21313)
-- Name: accounts_guide accounts_guide_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_guide
    ADD CONSTRAINT accounts_guide_user_id_key UNIQUE (user_id);


--
-- TOC entry 3288 (class 2606 OID 21315)
-- Name: accounts_member accounts_member_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_member
    ADD CONSTRAINT accounts_member_phone_key UNIQUE (phone);


--
-- TOC entry 3290 (class 2606 OID 21317)
-- Name: accounts_member accounts_member_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_member
    ADD CONSTRAINT accounts_member_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 21319)
-- Name: accounts_member accounts_member_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_member
    ADD CONSTRAINT accounts_member_user_id_key UNIQUE (user_id);


--
-- TOC entry 3295 (class 2606 OID 21321)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3300 (class 2606 OID 21323)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3303 (class 2606 OID 21325)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 21327)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 21329)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3308 (class 2606 OID 21331)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 21333)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 21335)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3310 (class 2606 OID 21337)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3322 (class 2606 OID 21339)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3325 (class 2606 OID 21341)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3313 (class 2606 OID 21343)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3328 (class 2606 OID 21345)
-- Name: calc_order calc_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calc_order
    ADD CONSTRAINT calc_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3333 (class 2606 OID 21347)
-- Name: calc_tourist calc_tourist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calc_tourist
    ADD CONSTRAINT calc_tourist_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 21349)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 21351)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3341 (class 2606 OID 21353)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 21355)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3346 (class 2606 OID 21357)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3349 (class 2606 OID 21359)
-- Name: itinerary_bus itinerary_bus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_bus
    ADD CONSTRAINT itinerary_bus_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 21361)
-- Name: itinerary_hotel itinerary_hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_hotel
    ADD CONSTRAINT itinerary_hotel_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 21363)
-- Name: itinerary_itinerary itinerary_itinerary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_pkey PRIMARY KEY (id);


--
-- TOC entry 3362 (class 2606 OID 21365)
-- Name: itinerary_restaurant itinerary_restaurant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_restaurant
    ADD CONSTRAINT itinerary_restaurant_pkey PRIMARY KEY (id);


--
-- TOC entry 3364 (class 2606 OID 21367)
-- Name: itinerary_site itinerary_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_site
    ADD CONSTRAINT itinerary_site_pkey PRIMARY KEY (id);


--
-- TOC entry 3366 (class 2606 OID 21369)
-- Name: travelloapp_destination travelloapp_destination_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_destination
    ADD CONSTRAINT travelloapp_destination_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 21371)
-- Name: travelloapp_tour travelloapp_tour_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_tour
    ADD CONSTRAINT travelloapp_tour_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 1259 OID 21372)
-- Name: accounts_member_phone_8574165a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_member_phone_8574165a_like ON public.accounts_member USING btree (phone varchar_pattern_ops);


--
-- TOC entry 3293 (class 1259 OID 21373)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3298 (class 1259 OID 21374)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3301 (class 1259 OID 21375)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3304 (class 1259 OID 21376)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3314 (class 1259 OID 21377)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3317 (class 1259 OID 21378)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3320 (class 1259 OID 21379)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3323 (class 1259 OID 21380)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3311 (class 1259 OID 21381)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3326 (class 1259 OID 21382)
-- Name: calc_order_member_id_17ba6fe1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX calc_order_member_id_17ba6fe1 ON public.calc_order USING btree (member_id);


--
-- TOC entry 3329 (class 1259 OID 21383)
-- Name: calc_order_tour_id_6f621a1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX calc_order_tour_id_6f621a1b ON public.calc_order USING btree (tour_id);


--
-- TOC entry 3330 (class 1259 OID 21384)
-- Name: calc_tourist_id_692812a1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX calc_tourist_id_692812a1_like ON public.calc_tourist USING btree (id varchar_pattern_ops);


--
-- TOC entry 3331 (class 1259 OID 21385)
-- Name: calc_tourist_order_id_580a9bf4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX calc_tourist_order_id_580a9bf4 ON public.calc_tourist USING btree (order_id);


--
-- TOC entry 3334 (class 1259 OID 21386)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3337 (class 1259 OID 21387)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3344 (class 1259 OID 21388)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3347 (class 1259 OID 21389)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3352 (class 1259 OID 21390)
-- Name: itinerary_itinerary_hotel1_id_10a3bf45; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_hotel1_id_10a3bf45 ON public.itinerary_itinerary USING btree (hotel1_id);


--
-- TOC entry 3353 (class 1259 OID 21391)
-- Name: itinerary_itinerary_lunch1_id_347197f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_lunch1_id_347197f0 ON public.itinerary_itinerary USING btree (lunch1_id);


--
-- TOC entry 3354 (class 1259 OID 21392)
-- Name: itinerary_itinerary_lunch2_id_f5eadfad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_lunch2_id_f5eadfad ON public.itinerary_itinerary USING btree (lunch2_id);


--
-- TOC entry 3357 (class 1259 OID 21393)
-- Name: itinerary_itinerary_site1_id_0595b2ff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_site1_id_0595b2ff ON public.itinerary_itinerary USING btree (site1_id);


--
-- TOC entry 3358 (class 1259 OID 21394)
-- Name: itinerary_itinerary_site2_id_62f57699; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_site2_id_62f57699 ON public.itinerary_itinerary USING btree (site2_id);


--
-- TOC entry 3359 (class 1259 OID 21395)
-- Name: itinerary_itinerary_site3_id_3b95195f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_site3_id_3b95195f ON public.itinerary_itinerary USING btree (site3_id);


--
-- TOC entry 3360 (class 1259 OID 21396)
-- Name: itinerary_itinerary_site4_id_5d55594a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX itinerary_itinerary_site4_id_5d55594a ON public.itinerary_itinerary USING btree (site4_id);


--
-- TOC entry 3367 (class 1259 OID 21397)
-- Name: travelloapp_tour_bus_id_af12898f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX travelloapp_tour_bus_id_af12898f ON public.travelloapp_tour USING btree (bus_id);


--
-- TOC entry 3368 (class 1259 OID 21398)
-- Name: travelloapp_tour_guide_id_f30353f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX travelloapp_tour_guide_id_f30353f7 ON public.travelloapp_tour USING btree (guide_id);


--
-- TOC entry 3369 (class 1259 OID 21399)
-- Name: travelloapp_tour_itinerary_plan_id_bcda57ae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX travelloapp_tour_itinerary_plan_id_bcda57ae ON public.travelloapp_tour USING btree (itinerary_plan_id);


--
-- TOC entry 3372 (class 2606 OID 21400)
-- Name: accounts_guide accounts_guide_user_id_4cbaaa6d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_guide
    ADD CONSTRAINT accounts_guide_user_id_4cbaaa6d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3373 (class 2606 OID 21405)
-- Name: accounts_member accounts_member_user_id_b994c8b6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_member
    ADD CONSTRAINT accounts_member_user_id_b994c8b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3374 (class 2606 OID 21410)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3375 (class 2606 OID 21415)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3376 (class 2606 OID 21420)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3377 (class 2606 OID 21425)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3378 (class 2606 OID 21430)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3379 (class 2606 OID 21435)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3380 (class 2606 OID 21440)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3381 (class 2606 OID 21445)
-- Name: calc_order calc_order_member_id_17ba6fe1_fk_accounts_member_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calc_order
    ADD CONSTRAINT calc_order_member_id_17ba6fe1_fk_accounts_member_id FOREIGN KEY (member_id) REFERENCES public.accounts_member(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3382 (class 2606 OID 21450)
-- Name: calc_order calc_order_tour_id_6f621a1b_fk_travelloapp_tour_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calc_order
    ADD CONSTRAINT calc_order_tour_id_6f621a1b_fk_travelloapp_tour_id FOREIGN KEY (tour_id) REFERENCES public.travelloapp_tour(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3383 (class 2606 OID 21455)
-- Name: calc_tourist calc_tourist_order_id_580a9bf4_fk_calc_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calc_tourist
    ADD CONSTRAINT calc_tourist_order_id_580a9bf4_fk_calc_order_id FOREIGN KEY (order_id) REFERENCES public.calc_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3384 (class 2606 OID 21460)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3385 (class 2606 OID 21465)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3386 (class 2606 OID 21470)
-- Name: itinerary_itinerary itinerary_itinerary_hotel1_id_10a3bf45_fk_itinerary_hotel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_hotel1_id_10a3bf45_fk_itinerary_hotel_id FOREIGN KEY (hotel1_id) REFERENCES public.itinerary_hotel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3387 (class 2606 OID 21475)
-- Name: itinerary_itinerary itinerary_itinerary_lunch1_id_347197f0_fk_itinerary; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_lunch1_id_347197f0_fk_itinerary FOREIGN KEY (lunch1_id) REFERENCES public.itinerary_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3388 (class 2606 OID 21480)
-- Name: itinerary_itinerary itinerary_itinerary_lunch2_id_f5eadfad_fk_itinerary; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_lunch2_id_f5eadfad_fk_itinerary FOREIGN KEY (lunch2_id) REFERENCES public.itinerary_restaurant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3389 (class 2606 OID 21485)
-- Name: itinerary_itinerary itinerary_itinerary_site1_id_0595b2ff_fk_itinerary_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_site1_id_0595b2ff_fk_itinerary_site_id FOREIGN KEY (site1_id) REFERENCES public.itinerary_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3390 (class 2606 OID 21490)
-- Name: itinerary_itinerary itinerary_itinerary_site2_id_62f57699_fk_itinerary_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_site2_id_62f57699_fk_itinerary_site_id FOREIGN KEY (site2_id) REFERENCES public.itinerary_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3391 (class 2606 OID 21495)
-- Name: itinerary_itinerary itinerary_itinerary_site3_id_3b95195f_fk_itinerary_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_site3_id_3b95195f_fk_itinerary_site_id FOREIGN KEY (site3_id) REFERENCES public.itinerary_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3392 (class 2606 OID 21500)
-- Name: itinerary_itinerary itinerary_itinerary_site4_id_5d55594a_fk_itinerary_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itinerary_itinerary
    ADD CONSTRAINT itinerary_itinerary_site4_id_5d55594a_fk_itinerary_site_id FOREIGN KEY (site4_id) REFERENCES public.itinerary_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3393 (class 2606 OID 21505)
-- Name: travelloapp_tour travelloapp_tour_bus_id_af12898f_fk_itinerary_bus_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_tour
    ADD CONSTRAINT travelloapp_tour_bus_id_af12898f_fk_itinerary_bus_id FOREIGN KEY (bus_id) REFERENCES public.itinerary_bus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3394 (class 2606 OID 21510)
-- Name: travelloapp_tour travelloapp_tour_guide_id_f30353f7_fk_accounts_guide_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_tour
    ADD CONSTRAINT travelloapp_tour_guide_id_f30353f7_fk_accounts_guide_id FOREIGN KEY (guide_id) REFERENCES public.accounts_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3395 (class 2606 OID 21515)
-- Name: travelloapp_tour travelloapp_tour_itinerary_plan_id_bcda57ae_fk_itinerary; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.travelloapp_tour
    ADD CONSTRAINT travelloapp_tour_itinerary_plan_id_bcda57ae_fk_itinerary FOREIGN KEY (itinerary_plan_id) REFERENCES public.itinerary_itinerary(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-12-24 17:17:47

--
-- PostgreSQL database dump complete
--


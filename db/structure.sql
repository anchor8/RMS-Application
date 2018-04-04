SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE countries (
    id bigint NOT NULL,
    country_name character varying(100),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE countries_id_seq OWNED BY countries.id;


--
-- Name: customer_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE customer_statuses (
    id bigint NOT NULL,
    customer_status_description character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: customer_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customer_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customer_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE customer_statuses_id_seq OWNED BY customer_statuses.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE customers (
    id bigint NOT NULL,
    state_id bigint,
    company_name character varying(100) NOT NULL,
    customer_first_name character varying(50) NOT NULL,
    customer_last_name character varying(35) NOT NULL,
    job_title character varying(50) NOT NULL,
    work_phone character varying(26) NOT NULL,
    mobile character varying(26),
    fax character varying(26),
    customer_email character varying(254) NOT NULL,
    customer_cc_email character varying(254),
    website character varying(50),
    social_media_address character varying(50),
    street_address_1 character varying(100) NOT NULL,
    street_address_2 character varying(100),
    city character varying(60) NOT NULL,
    zip_code character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone,
    customer_status_id bigint
);


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: employee_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employee_statuses (
    id bigint NOT NULL,
    employee_status_type character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: employee_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employee_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employee_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employee_statuses_id_seq OWNED BY employee_statuses.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE employees (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin boolean DEFAULT false,
    deleted_at timestamp without time zone,
    fname character varying(50),
    lname character varying(50),
    phone character varying(26),
    employee_status_id integer DEFAULT 1
);


--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employees_id_seq OWNED BY employees.id;


--
-- Name: order_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE order_statuses (
    id bigint NOT NULL,
    order_status_description character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: order_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE order_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE order_statuses_id_seq OWNED BY order_statuses.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE orders (
    id bigint NOT NULL,
    vendor_id bigint,
    order_status_id bigint,
    customer_id bigint,
    country_id bigint,
    employee_id bigint,
    payment_type_id bigint,
    shipper_id bigint,
    state_id bigint,
    shipping_number character varying(15),
    purchase_order_number integer NOT NULL,
    order_date date DEFAULT '2018-03-14'::date,
    ship_date date,
    order_total numeric,
    street_address_1 character varying(100),
    street_address_2 character varying(100),
    city character varying(60),
    zip_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- Name: orders_purchase_order_number_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE orders_purchase_order_number_seq
    START WITH 101
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_purchase_order_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE orders_purchase_order_number_seq OWNED BY orders.purchase_order_number;


--
-- Name: payment_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE payment_types (
    id bigint NOT NULL,
    payment_type_description character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE payment_types_id_seq OWNED BY payment_types.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: shippers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE shippers (
    id bigint NOT NULL,
    shipper_description character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: shippers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE shippers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shippers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE shippers_id_seq OWNED BY shippers.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE states (
    id bigint NOT NULL,
    state_name character varying(35),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE states_id_seq OWNED BY states.id;


--
-- Name: vendor_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE vendor_statuses (
    id bigint NOT NULL,
    vendor_status_type character varying(50),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: vendor_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE vendor_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vendor_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE vendor_statuses_id_seq OWNED BY vendor_statuses.id;


--
-- Name: vendors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE vendors (
    id bigint NOT NULL,
    state_id bigint,
    vendor_status_id bigint,
    vendor_name character varying,
    contact_name character varying(100),
    job_title character varying(50),
    work_phone character varying(26),
    mobile character varying(26),
    fax character varying(26),
    vendor_email character varying(254),
    vendor_cc_email character varying(254),
    website character varying(50),
    street_address_1 character varying(100),
    street_address_2 character varying(100),
    city character varying(60),
    zip_code character varying(10),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


--
-- Name: vendors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE vendors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vendors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE vendors_id_seq OWNED BY vendors.id;


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);


--
-- Name: customer_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY customer_statuses ALTER COLUMN id SET DEFAULT nextval('customer_statuses_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: employee_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employee_statuses ALTER COLUMN id SET DEFAULT nextval('employee_statuses_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employees ALTER COLUMN id SET DEFAULT nextval('employees_id_seq'::regclass);


--
-- Name: order_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY order_statuses ALTER COLUMN id SET DEFAULT nextval('order_statuses_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- Name: orders purchase_order_number; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders ALTER COLUMN purchase_order_number SET DEFAULT nextval('orders_purchase_order_number_seq'::regclass);


--
-- Name: payment_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_types ALTER COLUMN id SET DEFAULT nextval('payment_types_id_seq'::regclass);


--
-- Name: shippers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY shippers ALTER COLUMN id SET DEFAULT nextval('shippers_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);


--
-- Name: vendor_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY vendor_statuses ALTER COLUMN id SET DEFAULT nextval('vendor_statuses_id_seq'::regclass);


--
-- Name: vendors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY vendors ALTER COLUMN id SET DEFAULT nextval('vendors_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: customer_statuses customer_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customer_statuses
    ADD CONSTRAINT customer_statuses_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: employee_statuses employee_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employee_statuses
    ADD CONSTRAINT employee_statuses_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: order_statuses order_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY order_statuses
    ADD CONSTRAINT order_statuses_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: shippers shippers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (id);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: vendor_statuses vendor_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vendor_statuses
    ADD CONSTRAINT vendor_statuses_pkey PRIMARY KEY (id);


--
-- Name: vendors vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY (id);


--
-- Name: index_customers_on_customer_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_customers_on_customer_status_id ON customers USING btree (customer_status_id);


--
-- Name: index_customers_on_state_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_customers_on_state_id ON customers USING btree (state_id);


--
-- Name: index_employees_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_employees_on_email ON employees USING btree (email);


--
-- Name: index_employees_on_employee_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_employees_on_employee_status_id ON employees USING btree (employee_status_id);


--
-- Name: index_employees_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_employees_on_reset_password_token ON employees USING btree (reset_password_token);


--
-- Name: index_orders_on_country_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_country_id ON orders USING btree (country_id);


--
-- Name: index_orders_on_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_customer_id ON orders USING btree (customer_id);


--
-- Name: index_orders_on_employee_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_employee_id ON orders USING btree (employee_id);


--
-- Name: index_orders_on_order_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_order_status_id ON orders USING btree (order_status_id);


--
-- Name: index_orders_on_payment_type_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_payment_type_id ON orders USING btree (payment_type_id);


--
-- Name: index_orders_on_purchase_order_number; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_orders_on_purchase_order_number ON orders USING btree (purchase_order_number);


--
-- Name: index_orders_on_shipper_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_shipper_id ON orders USING btree (shipper_id);


--
-- Name: index_orders_on_state_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_state_id ON orders USING btree (state_id);


--
-- Name: index_orders_on_vendor_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_orders_on_vendor_id ON orders USING btree (vendor_id);


--
-- Name: index_vendors_on_state_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_vendors_on_state_id ON vendors USING btree (state_id);


--
-- Name: index_vendors_on_vendor_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_vendors_on_vendor_status_id ON vendors USING btree (vendor_status_id);


--
-- Name: orders fk_rails_1bd2d26de1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_1bd2d26de1 FOREIGN KEY (payment_type_id) REFERENCES payment_types(id);


--
-- Name: customers fk_rails_1f7dd77c24; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT fk_rails_1f7dd77c24 FOREIGN KEY (state_id) REFERENCES states(id);


--
-- Name: vendors fk_rails_2c94717a61; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vendors
    ADD CONSTRAINT fk_rails_2c94717a61 FOREIGN KEY (state_id) REFERENCES states(id);


--
-- Name: orders fk_rails_3dad120da9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_3dad120da9 FOREIGN KEY (customer_id) REFERENCES customers(id);


--
-- Name: orders fk_rails_4608430842; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_4608430842 FOREIGN KEY (employee_id) REFERENCES employees(id);


--
-- Name: orders fk_rails_4beaf83148; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_4beaf83148 FOREIGN KEY (shipper_id) REFERENCES shippers(id);


--
-- Name: orders fk_rails_7a22cf8b0e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_7a22cf8b0e FOREIGN KEY (order_status_id) REFERENCES order_statuses(id);


--
-- Name: orders fk_rails_8ff9bc5459; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_8ff9bc5459 FOREIGN KEY (country_id) REFERENCES countries(id);


--
-- Name: customers fk_rails_9c60edf1f2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT fk_rails_9c60edf1f2 FOREIGN KEY (customer_status_id) REFERENCES customer_statuses(id);


--
-- Name: orders fk_rails_ce84ab09b6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_ce84ab09b6 FOREIGN KEY (state_id) REFERENCES states(id);


--
-- Name: employees fk_rails_e2a3ea211b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY employees
    ADD CONSTRAINT fk_rails_e2a3ea211b FOREIGN KEY (employee_status_id) REFERENCES employee_statuses(id);


--
-- Name: vendors fk_rails_e44cf152d6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vendors
    ADD CONSTRAINT fk_rails_e44cf152d6 FOREIGN KEY (vendor_status_id) REFERENCES vendor_statuses(id);


--
-- Name: orders fk_rails_f6acf748cd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_f6acf748cd FOREIGN KEY (vendor_id) REFERENCES vendors(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('30180404044050');

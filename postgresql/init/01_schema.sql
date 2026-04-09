-- =========================
-- REGION
-- =========================
CREATE TABLE region (
    region_id   INTEGER      PRIMARY KEY,
    region_name VARCHAR(50)  NOT NULL
);

-- =========================
-- TERRITORIES
-- =========================
CREATE TABLE territories (
    territory_id   VARCHAR(10)  PRIMARY KEY,
    territory_name VARCHAR(50)  NOT NULL,
    region_id      INTEGER      NOT NULL REFERENCES region(region_id)
);

-- =========================
-- CUSTOMER DEMOGRAPHICS
-- =========================
CREATE TABLE customer_demographics (
    customer_type_id VARCHAR(10)  PRIMARY KEY,
    customer_desc    VARCHAR(100)
);

-- =========================
-- CUSTOMERS
-- =========================
CREATE TABLE customers (
    customer_id   VARCHAR(5)   PRIMARY KEY,
    company_name  VARCHAR(100) NOT NULL,
    contact_name  VARCHAR(100),
    contact_title VARCHAR(50),
    address       VARCHAR(150),
    city          VARCHAR(50),
    region        VARCHAR(50),
    postal_code   VARCHAR(20),
    country       VARCHAR(50),
    phone         VARCHAR(30),
    fax           VARCHAR(30)
);

-- =========================
-- EMPLOYEES
-- =========================
CREATE TABLE employees (
    employee_id INTEGER      GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    last_name   VARCHAR(50)  NOT NULL,
    first_name  VARCHAR(50)  NOT NULL,
    title       VARCHAR(50),
    birth_date  DATE,
    hire_date   DATE
);

-- =========================
-- EMPLOYEE TERRITORIES
-- =========================
CREATE TABLE employee_territories (
    employee_id  INTEGER     NOT NULL REFERENCES employees(employee_id),
    territory_id VARCHAR(10) NOT NULL REFERENCES territories(territory_id),
    PRIMARY KEY (employee_id, territory_id)
);

-- =========================
-- CATEGORIES
-- =========================
CREATE TABLE categories (
    category_id   INTEGER      GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category_name VARCHAR(50)  NOT NULL,
    description   TEXT
);

-- =========================
-- SHIPPERS
-- =========================
CREATE TABLE shippers (
    shipper_id   INTEGER      GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    phone        VARCHAR(30)
);

-- =========================
-- SUPPLIERS
-- =========================
CREATE TABLE suppliers (
    supplier_id  INTEGER      GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    city         VARCHAR(50),
    country      VARCHAR(50)
);

-- =========================
-- PRODUCTS
-- =========================
CREATE TABLE products (
    product_id      INTEGER        GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name    VARCHAR(100)   NOT NULL,
    supplier_id     INTEGER        REFERENCES suppliers(supplier_id),
    category_id     INTEGER        REFERENCES categories(category_id),
    unit_price      NUMERIC(10,2)  DEFAULT 0,
    units_in_stock  INTEGER        DEFAULT 0
);

-- =========================
-- ORDERS
-- =========================
CREATE TABLE orders (
    order_id    INTEGER        GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id VARCHAR(5)     REFERENCES customers(customer_id),
    employee_id INTEGER        REFERENCES employees(employee_id),
    order_date  DATE,
    ship_via    INTEGER        REFERENCES shippers(shipper_id),
    freight     NUMERIC(10,2)  DEFAULT 0
);

-- =========================
-- ORDER DETAILS
-- =========================
CREATE TABLE order_details (
    order_id    INTEGER        NOT NULL REFERENCES orders(order_id),
    product_id  INTEGER        NOT NULL REFERENCES products(product_id),
    unit_price  NUMERIC(10,2)  NOT NULL,
    quantity    INTEGER        NOT NULL DEFAULT 1,
    discount    NUMERIC(4,2)   NOT NULL DEFAULT 0,
    PRIMARY KEY (order_id, product_id)
);
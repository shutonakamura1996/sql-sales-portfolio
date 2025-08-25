PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS employees;

CREATE TABLE customers (
  customer_id   INTEGER PRIMARY KEY,
  company_name  TEXT NOT NULL,
  contact_name  TEXT,
  country       TEXT
);

CREATE TABLE employees (
  employee_id   INTEGER PRIMARY KEY,
  full_name     TEXT NOT NULL,
  title         TEXT
);

CREATE TABLE categories (
  category_id   INTEGER PRIMARY KEY,
  category_name TEXT NOT NULL
);

CREATE TABLE products (
  product_id    INTEGER PRIMARY KEY,
  product_name  TEXT NOT NULL,
  category_id   INTEGER NOT NULL REFERENCES categories(category_id),
  unit_price    REAL NOT NULL CHECK (unit_price >= 0)
);

CREATE TABLE orders (
  order_id      INTEGER PRIMARY KEY,
  customer_id   INTEGER NOT NULL REFERENCES customers(customer_id),
  employee_id   INTEGER NOT NULL REFERENCES employees(employee_id),
  order_date    TEXT NOT NULL
);

CREATE TABLE order_items (
  order_id      INTEGER NOT NULL REFERENCES orders(order_id),
  product_id    INTEGER NOT NULL REFERENCES products(product_id),
  unit_price    REAL NOT NULL CHECK (unit_price >= 0),
  quantity      INTEGER NOT NULL CHECK (quantity > 0),
  discount      REAL NOT NULL DEFAULT 0 CHECK (discount >= 0 AND discount <= 1),
  PRIMARY KEY (order_id, product_id)
);

-- Helpful indexes
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_order_items_product ON order_items(product_id);
CREATE INDEX idx_products_category ON products(category_id);

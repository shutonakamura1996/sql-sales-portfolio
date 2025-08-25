-- Categories
INSERT INTO categories (category_id, category_name) VALUES
(1, 'Beverages'),
(2, 'Confections'),
(3, 'Produce');

-- Products
INSERT INTO products (product_id, product_name, category_id, unit_price) VALUES
(1, 'Chai', 1, 18.0),
(2, 'Chang', 1, 19.0),
(3, 'Aniseed Syrup', 2, 10.0),
(4, 'Pavlova', 2, 17.0),
(5, 'Longlife Lettuce', 3, 14.0),
(6, 'Exotic Fruit Mix', 3, 25.0);

-- Customers
INSERT INTO customers (customer_id, company_name, contact_name, country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
(2, 'Around the Horn', 'Thomas Hardy', 'UK'),
(3, 'Berglunds snabbköp', 'Christina Berglund', 'Sweden'),
(4, 'Ernst Handel', 'Roland Mendel', 'Austria'),
(5, 'Island Trading', 'Helen Bennett', 'UK');

-- Employees
INSERT INTO employees (employee_id, full_name, title) VALUES
(1, 'Nancy Davolio', 'Sales Representative'),
(2, 'Andrew Fuller', 'Sales Manager'),
(3, 'Janet Leverling', 'Sales Representative');

-- Orders
INSERT INTO orders (order_id, customer_id, employee_id, order_date) VALUES
(1001, 1, 1, '2024-01-15'),
(1002, 2, 1, '2024-02-03'),
(1003, 3, 2, '2024-03-22'),
(1004, 4, 3, '2024-06-10'),
(1005, 5, 2, '2024-11-29'),
(1006, 1, 1, '2025-01-05'),
(1007, 2, 2, '2025-02-17'),
(1008, 3, 3, '2025-04-09'),
(1009, 4, 1, '2025-06-21'),
(1010, 5, 2, '2025-08-02');

-- Order Items
INSERT INTO order_items (order_id, product_id, unit_price, quantity, discount) VALUES
(1001, 1, 18.0, 10, 0.00),
(1001, 3, 10.0, 5,  0.10),
(1002, 2, 19.0, 8,  0.00),
(1002, 4, 17.0, 3,  0.05),
(1003, 6, 25.0, 4,  0.00),
(1003, 5, 14.0, 6,  0.00),
(1004, 1, 18.0, 20, 0.15),
(1004, 2, 19.0, 5,  0.00),
(1005, 4, 17.0, 10, 0.00),
(1006, 3, 10.0, 12, 0.00),
(1006, 6, 25.0, 2,  0.00),
(1007, 1, 18.0, 15, 0.05),
(1007, 5, 14.0, 4,  0.00),
(1008, 2, 19.0, 7,  0.00),
(1008, 6, 25.0, 5,  0.10),
(1009, 5, 14.0, 9,  0.00),
(1009, 3, 10.0, 10, 0.00),
(1010, 4, 17.0, 6,  0.00),
(1010, 2, 19.0, 12, 0.00);

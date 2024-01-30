-- INIT TABLES
-- CREATE TABLE FOR CUSTOMERS
CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL
);
-- INSERT CUSTOMERS VALUES
INSERT INTO customers (id, first_name, last_name)
VALUES (1, 'Cyril', 'Cero'),
    (2, 'Jean', 'Bejar'),
    (3, 'Louise', 'Dungca');

-- CREATE TABLE FOR ORDERS
CREATE TABLE orders (
    id INTEGER NOT NULL,
    order_date text NOT NULL,
    customer_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- INSERT ORDERS VALUES
INSERT INTO orders (id, order_date, customer_id)
VALUES (11, '2024-11-26', '1'),
    (22, '2024-6-5', '2'),
    (33, '2024-10-20', '3'),
    (44, '2024-10-20', '3');

-- QUERIES

-- INNER JOIN

SELECT *
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id;

-- INNER JOIN + LIST NUMBER OF ORDERS

SELECT c.first_name, c.last_name, COUNT(o.id) AS numbers_of_orders
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id;

-- INNER JOIN + LIST NUMBER OF ORDERS WITH COUNT > 1

SELECT c.first_name, c.last_name, COUNT(o.id) AS numbers_of_orders
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id;
HAVING COUNT(o.id) > 1;

-- LEFT OUTER JOIN

SELECT *
FROM customers c
LEFT OUTER JOIN orders o
ON c.id = o.customer_id;

-- LEFT OUTER JOIN WITH ADDITIONAL QUERIES

SELECT c.first_name, c.last_name
FROM customers c
LEFT OUTER JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id
HAVING COUNT(o.id) > 1;
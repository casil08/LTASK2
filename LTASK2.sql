CREATE DATABASE TASK2;
USE TASK2;

CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    description TEXT
);

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);

INSERT INTO Products (id, name, price, description) VALUES (1,'Product A', 19.99, 'Description of Product A');
SELECT * FROM Products;
UPDATE Products SET price = 24.99 WHERE id=1;
SELECT * FROM Products;
DELETE FROM Products WHERE id=1;

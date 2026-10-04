

CREATE DATABASE customer_db;


USE customer_db;


CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100),
    state VARCHAR(50),
    phone_number VARCHAR(15)
);


INSERT INTO customer
(customer_id, customer_name, city, email, state, phone_number)
VALUES
(1, 'Nanda', 'Kadapa', 'nanda@gmail.com', 'Andhra', '9876543210'),
(2, 'Sai', 'Bangalore', 'sai@gmail.com', 'Karnataka', '8765432109'),
(3, 'Anand', 'Autonagar', 'anand@gmail.com', 'Telangana', '9988997654'),
(4, 'Tharun', 'Kamalnagar', 'tharun@gmail.com', 'Andhra', '7788994321'),
(5, 'Trived', 'Adoni', 'trived@gmail.com', 'Karnataka', '9876543210'),
(6, 'Kalyan', 'Hitech City', 'kalyan@gmail.com', 'Telangana', '9398456789'),
(7, 'Swaroop', 'Vijayapura', 'swaroop@gmail.com', 'Karnataka', '9490256256'),
(8, 'Prudhvi', 'Vijayawada', 'prudhvi@gmail.com', 'Andhra', '9441235587'),
(9, 'Kavya', 'Kamalnagar', 'kavya@gmail.com', 'Karnataka', '6303153390'),
(10, 'Ravi', 'Mysore', 'ravi@gmail.com', 'Karnataka', '8897755321'),
(11, 'Raju', 'Anantapur', 'raju@gmail.com', 'Andhra', '9057204471'),
(12, 'Nivas', 'Puttur', 'nivas@gmail.com', 'Chennai', '7780234567'),
(13, 'Shree', 'Indiranagar', 'shree@gmail.com', 'Karnataka', '9867453213'),
(14, 'Aravind', 'Jayanagar', 'aravind@gmail.com', 'Karnataka', '8754319563'),
(15, 'Leela', 'Kamalnagar', 'leela@gmail.com', 'Andhra', '7780315679');


SELECT * FROM customer;


SELECT COUNT(*) FROM customer;

SELECT * FROM customer
WHERE state = 'Andhra';

SELECT * FROM customer
WHERE state = 'Karnataka';

SELECT * FROM customer
WHERE state = 'Chennai';

SELECT * FROM customer
WHERE city = 'Anantapur';

SELECT * FROM customer
WHERE customer_name Like  'A%';

SELECT customer_name FROM customer;

SELECT email FROM customer;

SELECT phone_number FROM customer;

SELECT * FROM customer
WHERE state = 'Andhra'
AND city = 'Kadapa';

SELECT * FROM customer
WHERE state = 'karnataka'
OR city = 'Bengalore';


SELECT * FROM customer
WHERE  customer_id BETWEEN 5 AND 10;

CREATE TABLE product(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    catageory VARCHAR (500),
    price DECIMAL(10,0),
    stock VARCHAR(500)

);
ALTER TABLE product
MODIFY  PRICE DECIMAL(10,2);

SELECT * FROM product;





INSERT INTO product
(product_id, product_name, catageory, price, stock)
VALUES
(80, 'Mobiles', 'Electronics', 75000.45, 150),
(81, 'Laptop', 'Electronics', 99999.99, 100),
(82, 'Shoes', 'Shopping', 25500.54, 200),
(83, 'Shirts', 'Clothes', 6500.00, 175),
(84, 'Smart Watches', 'Electronics', 39000.99, 96),
(85, 'Books', 'Stationery', 10000.54, 433),
(86, 'Bags', 'Shopping', 9000.00, 345),
(87, 'Earphones', 'Electronics', 999.99, 276),
(88, 'iPhones', 'Electronics', 25500.54, 200),
(89, 'Pens', 'Stationery', 865.95, 400),
(90, 'Pants', 'Shopping', 2999.99, 258),
(91, 'Biscuits', 'Snacks', 499.99, 123),
(92, 'Football', 'Sports', 1000.99, 200),
(93, 'Fans', 'Electronics', 2599.98, 100),
(94, 'Shirts', 'Shopping', 2999.99, 250),
(95, 'Chairs', 'Furniture', 2899.87, 150);


SELECT * FROM product;

SELECT * FROM product
WHERE product_name = 'Mobiles';


SELECT * FROM product
WHERE product_name = 'Mobiles'
AND catageory = 'Electronics';

SELECT * FROM product 
ORDER BY price ASC;

SELECT * FROM product
ORDER BY price DESC;

SELECT * FROM product
WHERE catageory IN ('Shopping');

SELECT * FROM product WHERE product_name Like 'S%';

SELECT * FROM product
WHERE product_name = 'Mobiles'
OR catageory = 'Electronics';

SELECT MAX(price) AS maximum_price
FROM product;

SELECT MIN(price) AS minimum_price
FROM product;

SELECT AVG(price) AS average_price
FROM product;

SELECT * FROM product
ORDER BY price ASC LIMIT 5;


SELECT * FROM product
ORDER BY price DESC LIMIT 5;

SELECT SUM(price) AS total_price
FROM product;


CREATE TABLE ORDERS(
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    ORDER_STATUS VARCHAR(50),
    FOREIGN KEY(CUSTOMER_ID) REFERENCES customer (customer_id)
);
SELECT* FROM orders;


INSERT INTO orders
(ORDER_ID, CUSTOMER_ID, ORDER_DATE, ORDER_STATUS)
VALUES
(101, 1, '2026-03-01', 'Delivered'),
(102, 2, '2026-09-02', 'Pending'),
(103, 3, '2026-04-03', 'Shipped'),
(104, 4, '2026-09-04', 'Delivered'),
(105, 5, '2026-09-05', 'Cancelled'),
(106, 6, '2026-05-06', 'Pending'),
(107, 7, '2026-09-07', 'Shipped'),
(108, 8, '2026-09-08', 'Delivered'),
(109, 9, '2026-05-09', 'Pending'),
(110, 10, '2026-09-10', 'Delivered'),
(111, 11, '2026-09-11', 'Shipped'),
(112, 12, '2026-09-12', 'Cancelled'),
(113, 13, '2026-04-13', 'Pending'),
(114, 14, '2026-09-14', 'Delivered'),
(115, 15, '2026-04-15', 'Shipped');


SELECT * FROM orders;

SELECT * FROM orders
WHERE order_status = 'Shipped';

SELECT * FROM orders
WHERE order_status = 'Delivered';

SELECT * FROM orders
WHERE order_status = 'Cancelled';

SELECT * FROM orders
WHERE order_status = 'Pending';


SELECT * FROM orders 
WHERE ORDER_ID BETWEEN 101 AND 105;

SELECT * FROM orders
WHERE order_date BETWEEN '2026-03-01' AND '2026-09-10 ';

SELECT *
FROM orders
WHERE CUSTOMER_ID > 1;

CREATE TABLE order_items(
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES product(product_id)

);
SELECT * FROM order_items;

ALTER TABLE order_items 
ADD quantity INT;

SELECT * FROM order_items;

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity)
VALUES
(1, 101, 80, 2),
(2, 101, 81, 1),
(3, 102, 82, 3),
(4, 103, 83, 2),
(5, 104, 84, 1),
(6, 105, 85, 5),
(7, 106, 86, 2),
(8, 107, 87, 4),
(9, 108, 88, 1),
(10, 109, 89, 10),
(11, 110, 90, 2),
(12, 111, 91, 6),
(13, 112, 92, 3),
(14, 113, 93, 2),
(15, 114, 94, 4);


SELECT * FROM order_items;

CREATE TABLE payment(
    order_id INT,
    payment_method VARCHAR(100),
    payment_amount DECIMAL(10,2),
    payment_status VARCHAR(200),
    FOREIGN KEY(order_id) REFERENCES orders(order_id)


);
ALTER TABLE payment
ADD payment_id INT  ;

SELECT * FROM payment;


INSERT INTO payment
(payment_id,order_id, payment_method, payment_amount, payment_status)
VALUES
(101, 'UPI', 150000.90, 'Completed'),
(102, 'Credit Card', 25500.54, 'Pending'),
(103, 'Debit Card', 6500.00, 'Completed'),
(104, 'Cash', 39000.99, 'Completed'),
(105, 'UPI', 10000.54, 'Failed'),
(106, 'Net Banking', 9000.00, 'Completed'),
(107, 'Credit Card', 999.99, 'Completed'),
(108, 'UPI', 25500.54, 'Completed'),
(109, 'Cash', 865.95, 'Pending'),
(110, 'Debit Card', 5999.98, 'Completed'),
(111, 'UPI', 2999.94, 'Completed'),
(112, 'Credit Card', 3002.97, 'Refunded'),
(113, 'Net Banking', 5199.96, 'Pending'),
(114, 'UPI', 11999.96, 'Completed'),
(115, 'Debit Card', 2899.87, 'Failed');


SELECT * FROM payment;


SELECT *
FROM customer AS c
JOIN orders AS o
ON c.customer_id = o.customer_id;

SELECT * FROM customer
join orders
on c.customer_id = o.customer_id;



DROP TABLE payment;

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(100),
    payment_amount DECIMAL(10,2),
    payment_status VARCHAR(200),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

SELECT * FROM payment;

INSERT INTO payment
(payment_id, order_id, payment_method, payment_amount, payment_status)
VALUES
(1, 101, 'UPI', 150000.90, 'Completed'),
(2, 102, 'Credit Card', 25500.54, 'Pending'),
(3, 103, 'Debit Card', 6500.00, 'Completed'),
(4, 104, 'Cash', 39000.99, 'Completed'),
(5, 105, 'UPI', 10000.54, 'Failed'),
(6, 106, 'Net Banking', 9000.00, 'Completed'),
(7, 107, 'Credit Card', 999.99, 'Completed'),
(8, 108, 'UPI', 25500.54, 'Completed'),
(9, 109, 'Cash', 865.95, 'Pending'),
(10, 110, 'Debit Card', 5999.98, 'Completed'),
(11, 111, 'UPI', 2999.94, 'Completed'),
(12, 112, 'Credit Card', 3002.97, 'Refunded'),
(13, 113, 'Net Banking', 5199.96, 'Pending'),
(14, 114, 'UPI', 11999.96, 'Completed'),
(15, 115, 'Debit Card', 2899.87, 'Failed');


SELECT * FROM payment;

SELECT *
FROM customer AS c
JOIN orders AS o
ON c.customer_id = o.customer_id;

SELECT * 
FROM customer
join orders
on c.customer_id = o.customer_id;



























show tables;
describe customers;
DESCRIBE orders;
--Question 1: List all employees along with their office details.
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;
--Question 2
SELECT productName, productVendor, productLine
FROM products;
--Question 3
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customerNumber
LIMIT 10;
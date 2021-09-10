-- Artsist Table

--1
INSERT INTO artist (name) VALUES ('Yellow Card');
INSERT INTO artist (name) VALUES ('Weezer');
INSERT INTO artist (name) VALUES ('Wild CHild');

--2
SELECT * 
FROM artist ORDER BY name asc LIMIT 5;


-- Employee Table ====================================================================================================

--1
SELECT first_name, last_name
FROM employee
WHERE city = 'Lethbridge';

--2
SELECT * 
FROM employee
WHERE reports_to = 2;

--3
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';


--Invoice Table ======================================================================================================

--1
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

--2
SELECT MAX(total)
FROM invoice;

--3
SELECT MIN(total)
FROM invoice;


--4
SELECT *
FROM invoice
WHERE total > 5;

--5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

--6
SELECT SUM(total) 
FROM invoice;


--JOIN Queries (Various tables) ======================================================================================

--1
SELECT *
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > .99;

--2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--3
SELECT c.first_name AS customer_first_name, c.last_name AS customer_last_name, e.first_name AS employee_first_name, e.last_name AS employee_last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

--4
SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;



-- EXTRA CREDIT
--ARTIST Table ========================================================================================================

--1
SELECT *
FROM artist
ORDER BY name desc
LIMIT 10;

--2
SELECT *
FROM artist
WHERE name = 'Black%';

--3
SELECT *
FROM artist
WHERE name = '%Black%';


--Employee Table ======================================================================================================

--1
SELECT MAX(birth_date)
FROM employee;

--2
SELECT MIN(birth_date)
FROM employee;


--Invoice Table =========================================================================================================

--1
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--2


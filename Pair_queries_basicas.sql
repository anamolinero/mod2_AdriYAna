-- EJERCICIOS PAIR 26/02/2025


SELECT EmployeeID, LastName, FirstName
FROM employees;

SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 5; 

SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice IS NULL;

SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice < 15
AND ProductID < 20;

SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE NOT UnitPrice < 15
AND NOT ProductID < 20; -- Es lo mismo que cambiar los signos mayor/menor.

SELECT DISTINCT ShipCountry
FROM orders;
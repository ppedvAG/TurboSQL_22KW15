SELECT CompanyName from customers
SELECT * FROM orders

--mit JOINS verbinden wir Tabellen

SELECT c.companyname, o.OrderID, o.OrderDate, o.freight, od.*  FROM Orders o
JOIN Customers c ON c.CustomerID = O.customerID
JOIN [Order Details] od ON o.OrderID = od.OrderID



SELECT  * FROM Employees e
JOIN Customers c ON e.Country = c.Country






--1. Alle Bestellungen (OrderID) mit dem zugehörigen Bearbeiter (Employee)
SELECT CONCAT(E.firstname,' ', E.lastname) as [Name] , o.EmployeeID, o.OrderID FROM Orders o
JOIN Employees e ON e.EmployeeID = o.EmployeeID
WHERE e.FirstName LIKE 'Nan%'


--2. Alle Produkte (ProductName) aus Kategorie 1 (CategoryID 1) + CategoryName
SELECT * FROM Products p
JOIN Categories cat ON cat.categoryID = p.categoryid

select p.ProductName,p.CategoryID,c.CategoryName from Products p
join categories c on c.CategoryID = p.CategoryID
WHERE c.CategoryID = 1

--3. Alle Bestellungen mit zugehörigem Bearbeiter (employeename), 
--die aus Kategorie 1 Produkte (Productname) gekauft haben


SELECT o.orderid, e.FirstName, e.LastName, p.ProductName, p.CategoryID FROM orders o 
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID
INNER JOIN [Order Details] od ON od.OrderID = o.OrderID
INNER JOIN Products p ON p.ProductID = od.ProductID
WHERE p.CategoryID = 1 AND p.ProductName LIKE 'Ch%'


--INNER JOINs ("normaler" Join) und OUTER JOINs (LEFT/RIGHT/FULL)



SELECT DISTINCT *
FROM Orders o RIGHT JOIN Customers c ON c.CustomerID = O.customerID
WHERE OrderID IS NULL


--CROSS JOIN -- Bildet alle möglichen Zeilenkombination aus 2 Tabellen
SELECT * FROM Employees
CROSS JOIN customers









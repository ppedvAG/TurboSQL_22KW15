--Sortieren durch ORDER BY 'Spaltenname'; standard ist aufsteigend (ASCENDING); Absteigend ist 'DESCENDING' (DESC)

SELECT orders.freight, shipcity, OrderDate FROM orders
ORDER BY  shipcity desc, freight desc 


--Mít DISTINCT werden identische Ergebniszeilen aussortiert (ALLE ausgegebenen Spalten müssen den selben Inhalt haben)
SELECT DISTINCT CustomerID FROM orders


--TOP (BOTTOM Mit Order BY DESC "umdrehen")

SELECT TOP 1 * FROM Customers
ORDER BY CustomerID DESC

--PERCENT

SELECT TOP 10 PERCENT freight FROM orders
ORDER BY Freight DESC



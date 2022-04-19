--WHERE Keyword: Definiert "Filter" über Bedingung/boolschen Ausdruck

SELECT * FROM Customers
WHERE Country = 'Germany' -- Spaltenwert = '...'

SELECT * FROM Customers
WHERE Country != 'Germany' -- != ungleich

SELECT * FROM Customers
WHERE Country = 'Germany' AND Fax IS NOT NULL -- IS NULL, IS NOT NULL

SELECT * FROM Customers
WHERE Country = 'Germany' AND Fax != 'NULL'

SELECT * FROM Orders
WHERE Freight > 100  -- <, >, <=, >= etc. funktioniert auch

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'France' --AND & OR verketten Bedingungen


select * from Customers
where (Country = 'Germany' OR Country ='France') AND (city = 'Berlin' OR city = 'Toulouse')

--AND ist "stärker bindend" (vergleiche Punkt vor Strich); Durch Klammersetzung können wir angeben welche Bedingungen zusammenhängen

select * from Customers
where Country IN ('Germany', 'France') AND city IN ('Berlin','Toulouse')


SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'Brazil', 'Spain') -- IN ('Wert', 'Wert2') ersetzt viele OR Verknüpfungen


select * from Orders
where OrderDate>'19960101' and OrderDate<'19971231'

select * from Orders
where OrderDate  BETWEEN '1996' AND '1998' --BETWEEN '2 Werte', vom kleinen zum großen Wert; Grenzwerte mit inbegriffen





--LIKE "Wildcards"

SELECT * FROM Customers
WHERE CompanyName LIKE 'an%'

SELECT * FROM Customers
WHERE CompanyName LIKE '%s' -- "%" bedeutet beliebig Zeichen & beliebig viele

SELECT * FROM Customers
WHERE CompanyName LIKE 'a__f%' --"_" Platzhalter für GENAU 1 Zeichen

SELECT * FROM Customers
WHERE CompanyName LIKE 'a[a-m]%' -- []"Range" aus Buchstaben (alphabetisch) oder Zahlen

SELECT * FROM Customers
WHERE CompanyName LIKE 'a[alghz]%'

SELECT * FROM Customers
WHERE CompanyName LIKE 'a[^alghz]%' -- "^" bedeutet NICHT das was in den Klammern steht




WHERE Name LIKE 'M[ea][iy][er]%'
LIKE '__g%[hl][1-9]'
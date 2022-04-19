Guten Morgen! :-)

/*Ich bin ein Kommentar
über mehrere Zeilen
bis ich schließe */

--Kommentar nur 
in dieser Zeile 


--"Ausführen" oder F5 führt gesamtes Skript/Tab aus (Kommentare werden hierbei ignoriert)

SELECT * FROM customers

--STRG + E oder F5 führt NUR markierte Zeilen aus

select CompanyName, [Address], City FROM customers 

SELECT * FROM [Order Details] --Tabellennamen oder Spalten in [] können Keywords "ausschalten" 

SeLeCt      * FroM		
		CusTOMers
--Groß- und Kleinschreibung, sowie Formatierung spielen in SQL keine Rolle
--Trotzdem: Lesbarkeit beachten!


--Es können auch "Customspalten" erstellt werden; entweder als String (Textausgabe) in Hochkommas '' 
--oder als mathematische Operation

SELECT 'Hallo' as Begrüßung, 'Hello' as Begrüßung2, 66+100*5/3 as Rechnung

--mit "as" können Spaltennamen geändert werden (alias)
select CompanyName as Kunde, [Address] as Adresse, City as Stadt FROM customers 


--auch Tabellen können mit alias versehen werden
SELECT C.CompanyName as Kunde, C.[address], C.City FROM Customers c 


USE Northwind --Gibt Datenbank an, in der wir arbeiten möchten




--Spalten können auch mathematisch "manipuliert" werden
SELECT Freight, Freight*1.2 FROM orders 


--Aufgabe: Netto und Bruttofrachtwert + MwSt ausgeben
SELECT freight as Netto, freight*1.19 as Brutto, (freight*1.19 - Freight) as MwSt FROM orders

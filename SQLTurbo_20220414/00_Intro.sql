Guten Morgen! :-)

/*Ich bin ein Kommentar
�ber mehrere Zeilen
bis ich schlie�e */

--Kommentar nur 
in dieser Zeile 


--"Ausf�hren" oder F5 f�hrt gesamtes Skript/Tab aus (Kommentare werden hierbei ignoriert)

SELECT * FROM customers

--STRG + E oder F5 f�hrt NUR markierte Zeilen aus

select CompanyName, [Address], City FROM customers 

SELECT * FROM [Order Details] --Tabellennamen oder Spalten in [] k�nnen Keywords "ausschalten" 

SeLeCt      * FroM		
		CusTOMers
--Gro�- und Kleinschreibung, sowie Formatierung spielen in SQL keine Rolle
--Trotzdem: Lesbarkeit beachten!


--Es k�nnen auch "Customspalten" erstellt werden; entweder als String (Textausgabe) in Hochkommas '' 
--oder als mathematische Operation

SELECT 'Hallo' as Begr��ung, 'Hello' as Begr��ung2, 66+100*5/3 as Rechnung

--mit "as" k�nnen Spaltennamen ge�ndert werden (alias)
select CompanyName as Kunde, [Address] as Adresse, City as Stadt FROM customers 


--auch Tabellen k�nnen mit alias versehen werden
SELECT C.CompanyName as Kunde, C.[address], C.City FROM Customers c 


USE Northwind --Gibt Datenbank an, in der wir arbeiten m�chten




--Spalten k�nnen auch mathematisch "manipuliert" werden
SELECT Freight, Freight*1.2 FROM orders 


--Aufgabe: Netto und Bruttofrachtwert + MwSt ausgeben
SELECT freight as Netto, freight*1.19 as Brutto, (freight*1.19 - Freight) as MwSt FROM orders

--SELECT INTO -- Erstellt neue Tabelle, mit Werten aus bestehender Tabelle

SELECT * 
INTO BackupCustomers
FROM Customers


SELECT * FROM BackupCustomers

--DROP TABLE -- Löscht ganze Tabelle vollständig

DROP TABLE BackupCustomers


--DELETE FROM -- Löscht Zeilen in Tabelle

DELETE FROM BackupCustomers


--ACHTUNG: Wenn kein WHERE Filter, dann werden ALLE Zeilen gelöscht
DELETE FROM BackupCustomers
WHERE Country = 'France'

--UPDATE -- Bestehende Zeilen verändern oder NULL setzen
UPDATE BackupCustomers
SET Region = NULL 
WHERE Country = 'France'

SELECT * FROM BackupCustomers
WHERE City = 'Passau'


--INSERT INTO -- neue Zeilen hinzufügen

INSERT INTO BackupCustomers (CustomerID, CompanyName, City, Country)
VALUES ('EDEKA', 'Edeka Markt', 'Passau', 'Germany')

INSERT INTO BackupCustomers (CustomerID, CompanyName, City, Country)
VALUES ('BEEKA', 'st Markt', 'Passau', 'Germany')

SELECT * FROM BackupCustomers
WHERE City = 'passau'



--CREATE TABLE -- komplett neuen Table erstellen

CREATE TABLE Fuhrpark
(
AutoID int NOT NULL,
Modell nvarchar(30),
Kennzeichen nvarchar(9),
Anschaffungskosten money
)

SELECT * FROM Fuhrpark


--ALTER TABLE -- Tabellen "Einstellungen" ändern


--ADD -- neue Spalte hinzufügen
ALTER TABLE Fuhrpark
ADD PS int NOT NULL

--DROP COLUMN -- Spalte entfernen/löschen
ALTER TABLE Fuhrpark
DROP COLUMN Leistungs

--ALTER COLUMN -- Datentyp oder NULL EInstellungen ändern
ALTER TABLE Fuhrpark
ALTER COLUMN Modell nvarchar(50)



--BEGIN TRAN / COMMIT / ROLLBACK
BEGIN TRAN 
DROP TABLE BackupCustomers

ROLLBACK

COMMIT

SELECT * FROM BAckupCustomers

BEGIN TRAN
DELETE FROM BackupCustomers



--View/Sicht ist eine gespeicherte SQL Abfrage
CREATE VIEW TestView
AS
SELECT CompanyName, OrderID, City FROM customers
JOIN orders ON Customers.CustomerID = Orders.CustomerID


SELECT * FROM TestView
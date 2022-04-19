--Datum/Zeit Datentypen

datetime 
datetime2
smalldatetime
date
time

--Datumsfunktionen

--Zeigt aktuelle Systemzeit
SELECT getdate()

--gibt Differenz zwischen 2 Zeiten/Datum an
SELECT datediff(dd, '19930224', getdate()) 
-- dd, ww, yy, mm, qq

--Addiert/Substrahiert Zeitintervall von Datum
SELECT dateadd(dd, 14, getdate())

--Gibt Wochentag aus von Datum
SELECT datename(weekday, '19930224')




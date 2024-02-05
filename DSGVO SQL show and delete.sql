* Auswahl Anzeige eines Kunden per Nachname

SELECT * 
FROM Kunde 
WHERE nachname = "Mustermann";

*Löschen eines Kunden per Kundennummer

DELETE FROM Kunde
WHERE Kundenr = '2011';
-- Auswahl Anzeige eines Kunden per Nachname

SELECT * 
FROM KUNDE 
WHERE NACHNAME = "Mustermann";

-- Löschen eines Kunden per Kundennummer

DELETE FROM KUNDE
WHERE KUNDENR = '2011';
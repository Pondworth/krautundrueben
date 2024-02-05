-- Auswahl Anzeige eines Kunden per Nachname

SELECT * 
FROM KUNDE 
WHERE NACHNAME = "Mustermann";

-- Löschen eines Kunden per Kundennummer

UPDATE KUNDE
SET NACHNAME = 'DELETE', VORNAME = 'DELETE', GEBURTSDATUM = NULL, STRASSE = 'DELETE', HAUSNR = NULL, PLZ = NULL, ORT = 'DELETE', TELEFON = NULL, EMAIL = 'DELETE'
WHERE KUNDENR = 2003; 
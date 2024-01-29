-- Auswahl aller Zutaten, die bisher keinem Rezept zugeordnet sind

SELECT  z.ZUTATNR, z.ZUTAT_NAME
FROM ZUTAT z 
LEFT JOIN REZEPTZUTAT rz
ON z.ZUTATNR = rz.ZUTATNR
WHERE REZEPTNR is NULL 

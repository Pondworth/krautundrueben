-- Auswahl aller Zutaten eines Rezeptes nach Rezeptname

SELECT  r.REZEPT_NAME, z.ZUTAT_NAME, rz.MENGE, z.EINHEIT  
FROM REZEPT r 
INNER JOIN REZEPTZUTAT rz
ON r.REZEPTNR =rz.REZEPTNR 
INNER JOIN ZUTAT z 
ON z.ZUTATNR = rz.ZUTATNR 
WHERE r.REZEPT_NAME = 'Vegetarisches Pfannengericht';
-- WHERE r.REZEPT_NAME = 'Spaghetti Bolognese'

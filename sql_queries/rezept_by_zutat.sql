-- Auswahl aller Rezepte, die eine gewisse Zutat enthalten

SELECT  r.REZEPT_NAME, z.ZUTAT_NAME,  rz.MENGE, z.EINHEIT 
FROM REZEPT r 
INNER JOIN REZEPTZUTAT rz
ON r.REZEPTNR =rz.REZEPTNR 
INNER JOIN ZUTAT z 
ON z.ZUTATNR = rz.ZUTATNR 
-- WHERE z.ZUTAT_NAME = 'Tomate'
WHERE z.ZUTAT_NAME = 'Paprika'

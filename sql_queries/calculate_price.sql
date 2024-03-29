SELECT BESTELLUNGNR, NACHNAME, SUM(NETTOPREIS*ordered_amount)
	FROM 
(
SELECT
		k.NACHNAME, z.ZUTAT_NAME, bz.MENGE as ordered_amount, z.EINHEIT, b.BESTELLUNGNR, z.NETTOPREIS
	FROM
		KUNDE k
	JOIN BESTELLUNG b ON
		b.KUNDENR = k.KUNDENR
	JOIN BESTELLUNGZUTATEN bz ON
		bz.BESTELLUNGNR = b.BESTELLUNGNR
	JOIN ZUTAT z on
		bz.ZUTATNR = z.ZUTATNR
UNION
	SELECT k.NACHNAME, z.ZUTAT_NAME, (rz.MENGE * br.MENGE) as ordered_amount, z.EINHEIT, b.BESTELLUNGNR, z.NETTOPREIS
	FROM
		KUNDE k
	JOIN BESTELLUNG b ON
		b.KUNDENR = k.KUNDENR
	JOIN BESTELLUNGREZEPT br ON
		br.BESTELLUNGNR = b.BESTELLUNGNR
	JOIN REZEPT r ON
		br.REZEPTNR = r.REZEPTNR
	JOIN REZEPTZUTAT rz ON
		rz.REZEPTNR = r.REZEPTNR
	JOIN ZUTAT z ON
		rz.ZUTATNR = z.ZUTATNR 
		
) as agg_table
GROUP BY BESTELLUNGNR, NACHNAME
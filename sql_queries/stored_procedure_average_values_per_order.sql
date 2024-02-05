CREATE PROCEDURE krautundrueben.CalculateAverageValuesForCustomer(
IN customer_number INT
)
BEGIN
	SELECT
	KUNDENR,
	NACHNAME,
	AVG(calc_cal),
	AVG(calc_carb),
	AVG(calc_prot)
FROM
	(
	SELECT
		k.KUNDENR,
		k.NACHNAME,
		(z.KALORIEN * bz.MENGE) as calc_cal,
		(z.KOHLENHYDRATE * bz.MENGE) as calc_carb,
		(z.PROTEIN * bz.MENGE) as calc_prot
	FROM
		KUNDE k
	JOIN BESTELLUNG b ON
		b.KUNDENR = k.KUNDENR
	JOIN BESTELLUNGZUTATEN bz ON
		bz.BESTELLUNGNR = b.BESTELLUNGNR
	JOIN ZUTAT z on
		bz.ZUTATNR = z.ZUTATNR
UNION
	SELECT
		k.KUNDENR,
		k.NACHNAME,
		(z.KALORIEN * rz.MENGE * br.MENGE) as calc_cal,
		(z.KOHLENHYDRATE * rz.MENGE * br.MENGE) as calc_carb,
		(z.PROTEIN * rz.MENGE * br.MENGE) as calc_prot
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
	) as my_awesome_table
WHERE
	KUNDENR = customer_number
GROUP BY
	KUNDENR,
	NACHNAME;
END
-- Define the values for the new ingredient
SET @zutat_name = 'New Ingredient';
SET @einheit = 'Unit';
SET @nettopreis = 10.99; -- Sample nettopreis (unit price)
SET @bestand = 100; -- Sample initial stock quantity
SET @lieferantnr = 105; -- Sample supplier number
SET @kalorien = 200; -- Sample calorie count
SET @kohlenhydrate = 15.5; -- Sample carbohydrate content
SET @protein = 10.2; -- Sample protein content

-- Insert the new ingredient into the ZUTAT table
INSERT INTO ZUTAT (ZUTAT_NAME, EINHEIT, NETTOPREIS, BESTAND, LIEFERANTNR, KALORIEN, KOHLENHYDRATE, PROTEIN) 
VALUES (@zutat_name, @einheit, @nettopreis, @bestand, @lieferantnr, @kalorien, @kohlenhydrate, @protein);
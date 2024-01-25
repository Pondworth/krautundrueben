USE krautundrueben;

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES 
(2001, 'Wellensteyn','Kira','1990-05-05','Eppendorfer Landstrasse', '104', '20249','Hamburg','040/443322','k.wellensteyn@yahoo.de'),
(2002, 'Foede','Dorothea','2000-03-24','Ohmstraße', '23', '22765','Hamburg','040/543822','d.foede@web.de'),
(2003, 'Leberer','Sigrid','1989-09-21','Bilser Berg', '6', '20459','Hamburg','0175/1234588','sigrid@leberer.de'),
(2004, 'Soerensen','Hanna','1974-04-03','Alter Teichweg', '95', '22049','Hamburg','040/634578','h.soerensen@yahoo.de'),
(2005, 'Schnitter','Marten','1964-04-17','Stübels', '10', '22835','Barsbüttel','0176/447587','schni_mart@gmail.com'),
(2006, 'Maurer','Belinda','1978-09-09','Grotelertwiete', '4a', '21075','Hamburg','040/332189','belinda1978@yahoo.de'),
(2007, 'Gessert','Armin','1978-01-29','Küstersweg', '3', '21079','Hamburg','040/67890','armin@gessert.de'),
(2008, 'Haessig','Jean-Marc','1982-08-30','Neugrabener Bahnhofstraße', '30', '21149','Hamburg','0178-67013390','jm@haessig.de'),
(2009, 'Urocki','Eric','1999-12-04','Elbchaussee', '228', '22605','Hamburg','0152-96701390','urocki@outlook.de');

INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values 
(101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de'),
(102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de'),
(103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13','19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de'),
(104, 'Gemüsehandel Schmidt', 'Gemüsestraße', '12', '20095', 'Hamburg', '040-123456', 'info@gemuesehandel.de'),
(105, 'Fischspezialitäten Meier', 'Fischweg', '7', '20146', 'Hamburg', '040-987654', 'meier@fischspezialitaeten.de'),
(106, 'Backerei Müller', 'Bäckerstraße', '42', '20355', 'Hamburg', '040-567890', 'info@baeckerei-mueller.de');


INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES 
(1001, 'Zucchini','Stück', 0.89, 100, 101,19,2,1.6),
(1002, 'Zwiebel','Stück', 0.15, 50, 101, 28, 4.9, 1.20),
(1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.6, 1),
(1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.3, 1.5),
(1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10, 0.9),
(1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.6, 2),
(1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.1, 2.6),
(1008, 'Lauch', 'Stück', 1.2, 35, 101, 29, 3.3, 2.1),
(1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.4, 6.1),
(1010, 'Basilikum', 'Bund', 1.3, 10, 101, 41, 5.1, 3.1),
(1011, 'Süßkartoffel', 'Stück', 2.0, 200, 101, 86, 20, 1.6),
(1012, 'Schnittlauch', 'Bund', 0.9, 10, 101, 28, 1, 3),
(2001, 'Apfel', 'Stück', 1.2, 750, 102, 54, 14.4, 0.3),
(3001, 'Vollmilch. 3.5%', 'Liter', 1.5, 50, 103, 65, 4.7, 3.4),
(3002, 'Mozzarella', 'Packung', 3.5, 20, 103, 241, 1, 18.1),
(3003, 'Butter', 'Stück', 3.0, 50, 103, 741, 0.6, 0.7),
(4001, 'Ei', 'Stück', 0.4, 300, 102, 137, 1.5, 11.9),
(5001, 'Wiener Würstchen', 'Paar', 1.8, 40, 101, 331, 1.2, 9.9),
(9001, 'Tofu-Würstchen', 'Stück', 1.8, 20, 103, 252, 7, 17),
(6408, 'Couscous', 'Packung', 1.9, 15, 102, 351, 67, 12),
(7043, 'Gemüsebrühe', 'Würfel', 0.2, 4000, 101, 1, 0.5, 0.5),
(6300, 'Kichererbsen', 'Dose', 1.0, 400, 103, 150, 21.2, 9),
(1013, 'Paprika', 'Stück', 0.50, 100, 104, 31, 6, 1.3),
(1014, 'Spinat', 'Bund', 0.80, 20, 104, 23, 1.5, 2.9),
(1015, 'Cherrytomaten', 'Packung', 1.20, 30, 104, 15, 2.9, 1),
(1016, 'Rote Zwiebel', 'Stück', 0.30, 50, 104, 37, 7.9, 1.2),
(1017, 'Parmesan', 'g', 2.50, 200, 105, 431, 4.1, 38),
(1018, 'Olivenöl', 'ml', 0.15, 500, 105, 884, 0, 0),
(1019, 'Mehl', 'g', 0.40, 300, 106, 364, 72, 10),
(1020, 'Zucker', 'g', 0.25, 200, 106, 387, 99.8, 0),
(1101, 'Rindfleisch', 'Gramm', 2.5, 300, 105, 250, 0, 25),
(1102, 'Hähnchenbrust', 'Stück', 3.8, 100, 105, 165, 0, 31),
(1103, 'Schweinefleisch', 'Gramm', 2.2, 250, 105, 200, 0, 27),
(1201, 'Spaghetti', 'Packung', 1.0, 200, 102, 200, 40, 8),
(1203, 'Penne', 'Packung', 1.1, 180, 102, 190, 39, 6),
(1021, 'Erdnussbutter', 'g', 1.80, 150, 106, 588, 20, 25);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES 
(2001,'2020-07-01', 6.21),
(2002,'2020-07-08', 32.96),
(2003,'2020-08-01',24.08),
(2004,'2020-08-02', 19.90),
(2005,'2020-08-02', 6.47),
(2006,'2020-08-10', 6.96),
(2007,'2020-08-10', 2.41),
(2008,'2020-08-10', 13.80),
(2009,'2020-08-10', 8.67),
(2007,'2020-08-15', 17.98),
(2005,'2020-08-12', 8.67),
(2003,'2020-08-13', 20.87);

INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES 
(50,'Vegetarisch'),
(51,'Vegan'),
(52,'Frutarisch'),
(53,'Low Carb'),
(54,'High Protein'),
(55,'Low fat'),
(56,'Für Kinder'),
(57,'Nudeln, Pasta'),
(58,'Kartoffeln'),
(59,'Reis'),
(60,'Salate'),
(61,'Fleisch'),
(62,'Fisch');

INSERT INTO ALLERGENE (ALLERGNR, ALLERGNAME) VALUES (60,'Lactose'),
(61,'Ei'),
(62,'Erdnuss'),
(63,'Gluten'),
(64,'Tomate'),
(65,'Zimt'),
(66,'Fisch'),
(67,'Krebstiere'),
(68,'Lupine'),
(69,'Milch'),
(70,'Schalenfrüchte'),
(71,'Schwefeldioxid'),
(72,'Sellerie'),
(73,'Senf'),
(74,'Sesam'),
(75,'Soja'),
(76,'Weichtiere');

INSERT INTO REZEPT (NAME, ZUBEREITUNG) 
VALUES 
('Spaghetti Bolognese', 'Spaghetti kochen und Bolognese-Sauce zubereiten.'),
('Hähnchen Caesar Salat', 'Hähnchen grillen, mit Salat und Caesar-Dressing vermengen.'),
('Vegetarisches Pfannengericht', 'Gemüse in Sojasauce anbraten.'),
('Pilzrisotto', 'Pilze anbraten und Risotto in Brühe kochen.'),
('Gegrillter Lachs', 'Lachs marinieren und grillen, bis er gar ist.'),
('Margherita Pizza', 'Pizzateig vorbereiten, Tomatensauce, Mozzarella und Basilikum hinzufügen.'),
('Schokoladen-Brownies', 'Zutaten mischen und im Ofen backen.'),
('Griechischer Salat', 'Tomaten, Gurken, Oliven und Feta-Käse vermengen.'),
('Rindfleisch-Tacos', 'Rindfleisch würzen, kochen und Tacos mit Belag zubereiten.'),
('Pasta Primavera', 'Nudeln kochen und mit verschiedenem angebratenem Gemüse vermengen.');
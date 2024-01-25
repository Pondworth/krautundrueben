USE krautundrueben;


INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) 
VALUES 
(1, 1001, 5),
(1, 1006, 2),
(1, 1002, 3),
(1, 1004, 3),
(2, 9001, 10),
(2, 1005, 5),
(2, 1003, 4),
(2, 6408, 5),
(3, 6300, 15),
(3, 3001, 5),
(4, 5001, 7),
(4, 3003, 2),
(5, 1002, 4),
(5, 1004, 5),
(5, 1001, 5),
(7, 1009, 9),
(6, 1010, 5),
(8, 1012, 5),
(8, 1008, 7),
(9, 1007, 4),
(9, 1012, 5),
(10, 1011, 7),
(10, 4001, 7),
(11, 5001, 2),
(11, 1012, 5),
(12, 1010, 15);

INSERT INTO BESTELLUNGREZEPT(BESTELLNR, REZEPTNR, MENGE) 
VALUES 
(1, 1, 5),
(6, 1, 1),
(8, 3, 1),
(7, 2, 1),
(9, 4, 1),
(10, 5, 1);

INSERT INTO REZEPTZUTAT (ZUTATENNR, REZEPTNR, MENGE)
VALUES
(1013, 1, 1),  -- Paprika
(1003, 1, 5),   -- Tomate
(1004, 1, 1),   -- Schalotte
(1009, 1, 1),   -- Knoblauch
(1201, 1, 1),   -- Spaghetti
(1101, 1, 500), -- Rindfleisch
(1023, 1, 1),   -- Champignons

-- Hähnchen Caesar Salat (Recipe 2)
(1008, 2, 1),   -- Lauch
(1011, 2, 1),   -- Süßkartoffel
(1012, 2, 2),   -- Schnittlauch
(1022, 2, 1),   -- Rucola Pesto

-- Vegetarisches Pfannengericht (Recipe 3)
(1015, 3, 2),   -- Cherrytomaten
(1016, 3, 1),   -- Rote Zwiebel
(1010, 3, 1),   -- Basilikum
(1024, 3, 1),   -- Hefe
(1002, 3, 2),   -- Zwiebel

-- Pilzrisotto (Recipe 4)
(1014, 4, 1),   -- Spinat
(1017, 4, 50),  -- Parmesan
(1013, 4, 1),   -- Paprika
(1025, 4, 2),   -- Paprikapulver
(1026, 4, 2),   -- Lachsfilet

-- Gegrillter Lachs (Recipe 5)
(1018, 5, 30),  -- Olivenöl
(1013, 5, 1),   -- Paprika
(1019, 5, 100), -- Mehl
(1026, 5, 1),   -- Lachsfilet

-- Margherita Pizza (Recipe 6)
(1017, 6, 100), -- Parmesan
(1018, 6, 20),  -- Olivenöl
(1016, 6, 1),   -- Rote Zwiebel
(1027, 6, 1),   -- Mango

-- Schokoladen-Brownies (Recipe 7)
(1020, 7, 50),  -- Zucker
(1019, 7, 150), -- Mehl
(1003, 7, 2),   -- Tomate
(1028, 7, 1),   -- Avocado

-- Griechischer Salat (Recipe 8)
(1015, 8, 1),   -- Cherrytomaten
(1014, 8, 1),   -- Spinat
(1016, 8, 1),   -- Rote Zwiebel
(1029, 8, 30),  -- Honig

-- Rindfleisch-Tacos (Recipe 9)
(1002, 9, 1),   -- Zwiebel
(1001, 9, 200), -- Zucchini
(1010, 9, 1),   -- Basilikum
(1030, 9, 1),   -- Pilzsoße

-- Pasta Primavera (Recipe 10)
(1005, 10, 100), -- Karotte
(1006, 10, 100), -- Kartoffel
(1007, 10, 1),   -- Rucola
(1027, 10, 1);   -- Mango


INSERT INTO REZEPTKATEGORIE (REZEPTNR, KATEGNR)
VALUES
    (1, 50),
    (2, 60),
    (3, 61),
    (4, 62),
    (5, 52);

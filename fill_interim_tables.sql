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
    (1013, 1, 1),
    (1014, 2, 1),
    (1015, 3, 1),
    (1016, 4, 2),
    (1017, 5, 100),
    (1018, 5, 50),
    (1019, 6, 300),
    (1020, 7, 100),
    (1021, 8, 150);

INSERT INTO REZEPTKATEGORIE (REZEPTNR, KATEGNR)
VALUES
    (1, 50),
    (2, 60),
    (3, 61),
    (4, 62),
    (5, 52);

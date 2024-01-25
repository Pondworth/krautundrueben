DROP DATABASE IF EXISTS krautundrueben;
CREATE DATABASE IF NOT EXISTS krautundrueben;
USE krautundrueben;


CREATE TABLE KUNDE (
    KUNDENNR        INTEGER NOT NULL,
    NACHNAME        VARCHAR(50),
    VORNAME         VARCHAR(50),
    GEBURTSDATUM	DATE,
	STRASSE         VARCHAR(50),
	HAUSNR			VARCHAR(6),			
    PLZ             VARCHAR(5),
    ORT             VARCHAR(50),
    TELEFON         VARCHAR(25),
    EMAIL           VARCHAR(50),
    PRIMARY KEY (KUNDENNR)
);

CREATE TABLE LIEFERANT (
    LIEFERANTENNR   INTEGER NOT NULL,
    LIEFERANTENNAME VARCHAR(50),
    STRASSE         VARCHAR(50),
    HAUSNR			VARCHAR(6),
    PLZ             VARCHAR(5),
    ORT             VARCHAR(50),
    TELEFON			VARCHAR(25),
    EMAIL           VARCHAR(50),
    PRIMARY KEY (LIEFERANTENNR)
);

CREATE TABLE ZUTAT(
    ZUTATENNR			INTEGER NOT NULL,
    BEZEICHNUNG         VARCHAR(50),
    EINHEIT        		VARCHAR (25),
    NETTOPREIS       	DECIMAL(10,2),
    BESTAND             INTEGER,
    LIEFERANT			INTEGER,
	KALORIEN			INTEGER,
	KOHLENHYDRATE		DECIMAL (10,2),
	PROTEIN			    DECIMAL(10,2),
	PRIMARY KEY (ZUTATENNR),
	FOREIGN KEY (LIEFERANT) REFERENCES LIEFERANT (LIEFERANTENNR)
);

CREATE TABLE BESTELLUNG (
    BESTELLNR        INTEGER AUTO_INCREMENT NOT NULL,
    KUNDENNR         INTEGER,
    BESTELLDATUM     DATE,
    RECHNUNGSBETRAG  DECIMAL(10,2),
    PRIMARY KEY (BESTELLNR),
    FOREIGN KEY (KUNDENNR) REFERENCES KUNDE (KUNDENNR)
);


CREATE TABLE REZEPT (
    REZEPTNR        INTEGER AUTO_INCREMENT NOT NULL,
    NAME         	VARCHAR (125),
    ZUBEREITUNG     VARCHAR (1250),
    PRIMARY KEY (REZEPTNR)
);

CREATE TABLE BESTELLUNGREZEPT (
    BESTELLNR       INTEGER NOT NULL,
    REZEPTNR        INTEGER,
    MENGE     		INTEGER,
    PRIMARY KEY (BESTELLNR,REZEPTNR),
    FOREIGN KEY (BESTELLNR) REFERENCES BESTELLUNG (BESTELLNR),
    FOREIGN KEY (REZEPTNR ) REFERENCES REZEPT (REZEPTNR)
);

CREATE TABLE REZEPTZUTAT (
	ZUTATENNR       INTEGER NOT NULL,
    REZEPTNR        INTEGER,
    MENGE     		INTEGER,
    PRIMARY KEY (ZUTATENNR,REZEPTNR),
    FOREIGN KEY (ZUTATENNR) REFERENCES ZUTAT (ZUTATENNR),
    FOREIGN KEY (REZEPTNR ) REFERENCES REZEPT (REZEPTNR)
);

CREATE TABLE KATEGORIE (
    KATEGNR			INTEGER,
    KATEGNAME  		VARCHAR(20),
    PRIMARY KEY (KATEGNR)
);

CREATE TABLE ALLERGENE (
	ALLERGNR			INTEGER,
    ALLERGNAME 			VARCHAR(20),
    PRIMARY KEY (ALLERGNR)
);

CREATE TABLE REZEPTKATEGORIE (
	REZEPTNR 	INTEGER,
	KATEGNR 	INTEGER,
	PRIMARY KEY (REZEPTNR,KATEGNR),
    FOREIGN KEY (REZEPTNR) REFERENCES REZEPT (REZEPTNR),
    FOREIGN KEY (KATEGNR ) REFERENCES KATEGORIE (KATEGNR)
);

CREATE TABLE REZEPTALLERGENE (
	REZEPTNR 	INTEGER,
	ALLERGNR 	INTEGER,
	PRIMARY KEY (REZEPTNR,ALLERGNR),
    FOREIGN KEY (REZEPTNR) REFERENCES REZEPT (REZEPTNR),
    FOREIGN KEY (ALLERGNR) REFERENCES ALLERGENE (ALLERGNR)
);

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2001, 'Wellensteyn','Kira','1990-05-05','Eppendorfer Landstrasse', '104', '20249','Hamburg','040/443322','k.wellensteyn@yahoo.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2002, 'Foede','Dorothea','2000-03-24','Ohmstraße', '23', '22765','Hamburg','040/543822','d.foede@web.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2003, 'Leberer','Sigrid','1989-09-21','Bilser Berg', '6', '20459','Hamburg','0175/1234588','sigrid@leberer.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2004, 'Soerensen','Hanna','1974-04-03','Alter Teichweg', '95', '22049','Hamburg','040/634578','h.soerensen@yahoo.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2005, 'Schnitter','Marten','1964-04-17','Stübels', '10', '22835','Barsbüttel','0176/447587','schni_mart@gmail.com');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2006, 'Maurer','Belinda','1978-09-09','Grotelertwiete', '4a', '21075','Hamburg','040/332189','belinda1978@yahoo.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2007, 'Gessert','Armin','1978-01-29','Küstersweg', '3', '21079','Hamburg','040/67890','armin@gessert.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2008, 'Haessig','Jean-Marc','1982-08-30','Neugrabener Bahnhofstraße', '30', '21149','Hamburg','0178-67013390','jm@haessig.de');
INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2009, 'Urocki','Eric','1999-12-04','Elbchaussee', '228', '22605','Hamburg','0152-96701390','urocki@outlook.de');

INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values (101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de');
INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values (102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de');
INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values (103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13','19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1001,'Zucchini','Stück', 0.89, 100, 101,19,2,1.6);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1002,'Zwiebel','Stück', 0.15, 50, 101, 28, 4.9, 1.20);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.6, 1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.3, 1.5);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10, 0.9);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.6, 2);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.1, 2.6);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1008, 'Lauch', 'Stück', 1.2, 35, 101, 29, 3.3, 2.1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.4, 6.1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1010, 'Basilikum', 'Bund', 1.3, 10, 101, 41, 5.1, 3.1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1011, 'Süßkartoffel', 'Stück', 2.0, 200, 101, 86, 20, 1.6);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1012, 'Schnittlauch', 'Bund', 0.9, 10, 101, 28, 1, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (2001, 'Apfel', 'Stück', 1.2, 750, 102, 54, 14.4, 0.3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (3001, 'Vollmilch. 3.5%', 'Liter', 1.5, 50, 103, 65, 4.7, 3.4);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (3002, 'Mozzarella', 'Packung', 3.5, 20, 103, 241, 1, 18.1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (3003, 'Butter', 'Stück', 3.0, 50, 103, 741, 0.6, 0.7);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (4001, 'Ei', 'Stück', 0.4, 300, 102, 137, 1.5, 11.9);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (5001, 'Wiener Würstchen', 'Paar', 1.8, 40, 101, 331, 1.2, 9.9);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9001, 'Tofu-Würstchen', 'Stück', 1.8, 20, 103, 252, 7, 17);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (6408, 'Couscous', 'Packung', 1.9, 15, 102, 351, 67, 12);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (7043, 'Gemüsebrühe', 'Würfel', 0.2, 4000, 101, 1, 0.5, 0.5);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (6300, 'Kichererbsen', 'Dose', 1.0, 400, 103, 150, 21.2, 9);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2001,'2020-07-01', 6.21);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2002,'2020-07-08', 32.96);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2003,'2020-08-01',24.08);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2004,'2020-08-02', 19.90);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2005,'2020-08-02', 6.47);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2006,'2020-08-10', 6.96);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2007,'2020-08-10', 2.41);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2008,'2020-08-10', 13.80);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2009,'2020-08-10', 8.67);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2007,'2020-08-15', 17.98);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2005,'2020-08-12', 8.67);
INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2003,'2020-08-13', 20.87);

INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES (50,'Vegetarisch');
INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES (51,'Vegan');
INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES (52,'Frutarisch');
INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES (53,'Low Carb');
INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES (54,'High Protein');
INSERT INTO KATEGORIE (KATEGNR, KATEGNAME) VALUES (55,'Low fat');

INSERT INTO ALLERGENE  (ALLERGNR, ALLERGNAME) VALUES (60,'Lactose');
INSERT INTO ALLERGENE  (ALLERGNR, ALLERGNAME) VALUES (61,'Ei');
INSERT INTO ALLERGENE  (ALLERGNR, ALLERGNAME) VALUES (62,'Erdnuss');
INSERT INTO ALLERGENE  (ALLERGNR, ALLERGNAME) VALUES (63,'Gluten');
INSERT INTO ALLERGENE  (ALLERGNR, ALLERGNAME) VALUES (64,'Tomate');
INSERT INTO ALLERGENE  (ALLERGNR, ALLERGNAME) VALUES (65,'Zimt');

INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Spaghetti Bolognese', 'Spaghetti kochen und Bolognese-Sauce zubereiten.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Hähnchen Caesar Salat', 'Hähnchen grillen, mit Salat und Caesar-Dressing vermengen.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Vegetarisches Pfannengericht', 'Gemüse in Sojasauce anbraten.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Pilzrisotto', 'Pilze anbraten und Risotto in Brühe kochen.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Gegrillter Lachs', 'Lachs marinieren und grillen, bis er gar ist.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Margherita Pizza', 'Pizzateig vorbereiten, Tomatensauce, Mozzarella und Basilikum hinzufügen.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Schokoladen-Brownies', 'Zutaten mischen und im Ofen backen.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Griechischer Salat', 'Tomaten, Gurken, Oliven und Feta-Käse vermengen.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Rindfleisch-Tacos', 'Rindfleisch würzen, kochen und Tacos mit Belag zubereiten.');
INSERT INTO REZEPT (NAME, ZUBEREITUNG) VALUES ('Pasta Primavera', 'Nudeln kochen und mit verschiedenem angebratenem Gemüse vermengen.');
INSERT INTO phones(number, phone_type, operator) VALUES
	("51571870", 'mobile', 'era'),
	("23232321", 'mobile', 'plus'),
    ("24562456", "home", "tp"),
    ("46234272", "mobile", "tp"),
    ("64236426", "home", "tu_biedronka"),
    ("23462362", "mobile", "plus"),
    ("53453534", "home", "play"),
    ("64353543", "mobile", "play");
	
ALTER TABLE persons MODIFY last_name CHAR(20) NOT NULL;

INSERT INTO persons(first_name, last_name, age, city) VALUES
	('Pierdas', 'Bombieszczyk', 30, 'Niweczka'),
    ('Karoleł', 'Nawroteł', 12, 'WieśZaKAto'),
    ('Rafalek', 'Zabijaka', 85, 'Sosnowiec'),
    ('Aneta', 'Gazeta', 45, 'Ursynów'),
    ('Jolanta', 'Chleb', 30, 'Bytum'),
    ('Mama', 'Dawida', 50, 'Zabrze'),
	('Jaro', 'Korzeniowski', 46, 'Ateny'),
	('Bohdan', 'Lato', 90, 'Las Palmas');
	
INSERT INTO person_phone (id_person, id_phone) VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(5, 8),
	(7, 7);
	
	
CREATE TABLE temp(
	imie char(9),
	wiek int);
INSERT INTO tmp
	SELECT first_name, age FROM persons;
	
/*Dodawanie kolumny dodadkowej, ale jest dodana na końcu tabeli*/
ALTER TABLE persons ADD temp INT DEFAULT 8;

/*Dodawanie kolumny dodadkowej, jako pierwszą*/
ALTER TABLE persons ADD temp2 INT DEFAULT 0 FIRST;
	
/*Dodawanie kolumny dodadkowej np po kolumnie first_name*/
ALTER TABLE persons ADD temp3 INT DEFAULT 2 AFTER first_name;
	
/*Usuwanie kolumny*/
ALTER TABLE persons DROP COLUMN temp2, DROP COLUMN temp3;
	
/*Nie wolno usuwać kluczy podstawowych, bo tabela straci spójnośc.
Jest też kluczem obcym w innej tabeli*/



/*Usuwanie klucza podstawowego dla tabeli.
Przed wykonaniem tej operacji należy usunąć AUTO INCREMENT*/
/*Usuwanie autoincrement kolumny */
ALTER TABLE temp DROP PRIMARY KEY id;
ALTER TABLE temp MODIFY id TINYINT UNSIGNED NOT NULL;
ALTER TABLE persons DROP COLUMN temp2,	
	
/*Usuwanie klucza obcego dla tabeli*/
SHOW CREATE TABLE temp2;
ALTER TABLE temp2 DROP FOREIGN KEY temp2_ibfk_2;
ALTER TABLE temp2 DROP KEY id_phone;


/*Dodanie spowrotem klucza podstawoweg*/
ALTER TABLE temp ADD id TINYINT NOT NULL  PRIMARY KEY AUTO_INCREMENT FIRST

/*USUNIECIE WARTOSCI DOMYSLNEJ*/
ALTER TABLE temp ADD def TINYINT DEFAULT 9
ALTER TABLE temp MODIFY def TINYINT;
	
/*ZMIANA NAZWY TABELI*/
ALTER TABLE temp RENAME tempZmiana;

/*Zmiana danych w tabeli*/
UPDATE tempzmiana SET def=13 WHERE id=9 OR id=10 ;
	
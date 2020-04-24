CREATE DATABASE friends;

USE friends;

CREATE TABLE persons(
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name char(9) NOT NULL,
    last_name char(15) NOT NULL,
    age tinyint,		
    city char(23) DEFAULT "Gliwice",
    PRIMARY KEY(id))											
    engine = INNODB
    DEFAULT CHARACTER set utf8
    COLLATE utf8_unicode_ci;
	
CREATE TABLE phones(
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	number CHAR(9) NOT NULL,
	phone_type ENUM("mobile", "home") DEFAULT "mobile",
	operator ENUM("tp", "era", "plus", "play", "tu_biedronka"),
	PRIMARY KEY(id))
	engine = INNODB
    DEFAULT CHARACTER set utf8
    COLLATE utf8_unicode_ci;
	
CREATE TABLE person_phone(
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_person TINYINT UNSIGNED NOT NULL,
	id_phone TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_person) REFERENCES persons(id),
	FOREIGN KEY(id_phone) REFERENCES phones(id))
	engine = INNODB
    DEFAULT CHARACTER set utf8
    COLLATE utf8_unicode_ci;
	
SHOW TABLES

DESCRIBE "table_name"
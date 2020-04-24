/*SQL obsługuje działania matematyczne*/
select 3+9, 5-7, 7*8, pow(2,10), sqrt(2);
select sin(3.1415192653589/2),4*atan(1), abs(-4), log(2.7181818),mod(123,6) G;

/*Podstawowe selecty*/
SELECT id, first_name ,last_name , age, city FROM persons;
SELECT id, first_name ,first_name , first_name, city FROM persons; #Można se kilka razy wpisać
SELECT id AS "Identifikator", first_name AS "Imie" ,last_name AS "Nazwisko", age AS "Wiek", city AS "Miasto" FROM persons; # można nazywać kolumny ( as ) do wyświetlania (alias)
SELECT first_name Imie, last_name Nazwisko ,age "Ile ma lat" FROM osoby; #AS jest wstawiane automatycznie

/*Sortowanie*/
SELECT * FROM persons ORDER BY city DESC; #ASC - ascending(rosnąco) DESC - descending (malejąco)
SELECT * FROM persons ORDER BY city, first_name; #Domyślnie jest rosnąco
SELECT first_name "Kto", last_name, city "Gdzie" FROM persons ORDER BY Kto, Gdzie DESC; #Można sortować po aliasach
SELECT first_name "Kto", last_name, city "Kto" FROM persons ORDER BY Kto; #Nie jednoznaczne polecenie więc nie przechodzi
SELECT first_name "Kto", last_name, city "last_name" FROM persons ORDER BY last_name; # niejednoznacznosc;
SELECT first_name "Kto", last_name, city "last_name" FROM persons ORDER BY 3 desc, Kto DESC; # mozna sortować po numerze kolumny też, a wgl to se mozna to mieszać

/*Operatory logiczne*/
SELECT * FROM persons WHERE age > 40 AND age < 65;
SELECT * FROM persons WHERE age > 18 AND (age <40 OR id >=1); # nawiasy maja znaczenie
SELECT * FROM persons WHERE age NOT BETWEEN 20 AND 65;
SELECT * FROM persons WHERE first_name <= "DGH"; # sortuje po kolei - 1 litera imienia mniejsza albo rowna d, 2 g itd
SELECT * FROM persons WHERE city <> "zabrze"; # <> i  !=  to to samo
SELECT * FROM persons WHERE city LIKE "zabrze";
SELECT * FROM persons WHERE city = "zabrze";
SELECT * FROM persons WHERE city LIKE "_____"; #miasta 5 literowe, _ to jedna litera, tylko like interpretuje to
SELECT * FROM persons WHERE last_name LIKE "%ł%";  # %- dowolna ilosc znakow i dowolne znaki
SELECT * FROM persons WHERE city LIKE "%k%" AND city NOT LIKE "k%" AND city NOT LIKE "%k"; # K moze byc w dowolnym miejscu w nazwie po za pierwszą i ostatnia
SELECT * FROM persons WHERE city IN ("zabrze","ateny");
SELECT * FROM persons LIMIT 2,6; # id od 3 id i 6 takich osob
SELECT first_name "Kto?",last_name, age, city "Skąd" FROM persons WHERE age >= 20 OR first_name BETWEEN "abc" AND "xyz" ORDER BY 4,2 DESC LIMIT 1,3;

--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  serie_id INTEGER,
  looks_id INTEGER
  -- voeg serie toe
);

-- products en auteurs hebben een n:m relatie die is vastgelegd in de reviews tabel
CREATE TABLE auteurs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  leeftijd INTEGER,
  geslacht TEXT,
  nationaliteit TEXT,
  naam TEXT
  
  
  -- review verwijst naar sneaker_id en persoon
  -- auteurs hebben een tekst (review)
  -- auteurs kunnen meerdere producten een review geven
  -- 
  
);

  -- sneaker_id wijst naar de products.id
CREATE TABLE reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  auteur_id INTEGER, -- vervang door auteur_id
  opmerking TEXT,
  products_id INTEGER
);
-- voorbeeld query: 
-- SELECT * FROM products JOIN reviews ON product.id = reviews.products_id;


CREATE TABLE serie (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30),
  geboortejaar INTEGER
);

CREATE TABLE looks (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  color TEXT,
  sneaker VARCHAR(10)
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, serie_id, looks_id) values ('Air Jordan 4 Black Cats', 'Een echte klassieker uit 2010, super exclusief en nogsteeds een parel wereldwijd!', '816905633-0', 750.95, 2, 1);
insert into products (name, description, code, price, serie_id, looks_id) values ('Air Jordan 1 X OFF WHITE', 'Deze schoen is niet meer weg te denken uit de sneaker industrie en is daarmee nogsteeds zo populair onder vele seleberties!', '077030122-3', 1300.00, 1, 3);
insert into products (name, description, code, price, serie_id, looks_id) values ('Nike X Yeezy Red October', 'Deze samenwerking is voor de echte old schools onder ons. Ben jij nou fan van Kanye West en Nike dan is dit echt een schoen voor jou!', '445924201-X', 5000.75, 4, 3);
insert into products (name, description, code, price, serie_id, looks_id) values ('Air jordan 1 Low X Cactus Jack ', 'Super gave schoen met een geweldige pasvorm wordt geleverd met exclusive goodie bag!', '693155505-7', 1450.00, 1, 4);
insert into products (name, description, code, price, serie_id, looks_id) values ('Nike Air Jordan 1 X OFF WHITE', 'Deze samenwerking heeft niet stilgezeten en bloeit nogsteeds in de fashionindustrie!', '686928463-6', 11000.50, 1, 2);
insert into products (name, description, code, price, serie_id, looks_id) values ('Nike Dunk Low Pigeon', 'Dit is alweer een oudje uit 2005, maar bij ons nogsteeds verkrijgbaar in de allerbeste gloednieuwe staat!', '492662523-7', 20005.00, 5, 5);
insert into products (name, description, code, price, serie_id, looks_id) values ('Nike Dunk Low Cherry', 'Geimporteerd vanuit de USA nu exclusief bij ons verkrijgbaar!', '492662523-7', 40000.00, 5, 6);
insert into products (name, description, code, price, serie_id, looks_id) values ('Yeezy 350 V2', 'Super comfortabele schoen en de prijs is ook heel voordelig', '492662523-7', 350.00, 4, 2);
insert into products (name, description, code, price, serie_id, looks_id) values ('Yeezy 700 V2', 'Super stoere shoen voor alle leeftijden beschikbaar!', '492662523-7', 700.00, 4, 10);
insert into products (name, description, code, price, serie_id, looks_id) values ('Nike dunk High michagan', 'Mooi en klasiek model', '492662523-7', 200.00, 5, 9);
insert into products (name, description, code, price, serie_id, looks_id) values ('Air Jordan 4 A Ma Maniere', 'Mooie schoon met hele mooie details', '492662523-7', 700.00, 2, 4);
insert into products (name, description, code, price, serie_id, looks_id) values ('Air Jordan 4 Union', 'Artestieke collab', '492662523-7', 850.00, 2, 1);

insert into reviews (auteur_id, opmerking, products_id) values ('1', 'Coole patta', 1);
insert into reviews (auteur_id, opmerking, products_id) values ('2', 'Fijne pasvorm en hele betrouwbare kwaliteit', 1);
insert into reviews (auteur_id, opmerking, products_id) values ('3', 'Lange levrtijd, maar product voldoed aan de omschrijving', 2);
insert into reviews (auteur_id, opmerking, products_id) values ('4', 'Zitten wat strak... Misschien moet ik ze nog wat langer dragen. Voor de rest hele toffe kleuren', 2);
insert into reviews (auteur_id, opmerking, products_id) values ('5', 'Favourite shoe', 3);
insert into reviews (auteur_id, opmerking, products_id) values ('6', 'Toffe schoen voor mijn zoon', 3);
insert into reviews (auteur_id, opmerking, products_id) values ('7', 'Supper product', 4);
insert into reviews (auteur_id, opmerking, products_id) values ('8', 'Bedankt voor de goede service', 4);
insert into reviews (auteur_id, opmerking, products_id) values ('9', 'Bedankt', 5);
insert into reviews (auteur_id, opmerking, products_id) values ('10', 'Eindelijk in mijn maat gevonden en ook nog eens snel geleverd', 5);
insert into reviews (auteur_id, opmerking, products_id) values ('11', 'Te klein en veel te laat geleverd...', 6);
insert into reviews (auteur_id, opmerking, products_id) values ('12', 'Goede schoen dit', 6);
insert into reviews (auteur_id, opmerking, products_id) values ('7', 'Mooi', 7);
insert into reviews (auteur_id, opmerking, products_id) values ('8', 'Laat geleverd', 7);
insert into reviews (auteur_id, opmerking, products_id) values ('13', 'Super blij mee toppp!', 8);
insert into reviews (auteur_id, opmerking, products_id) values ('14', 'Goede kwaliteit wederom!', 8);
insert into reviews (auteur_id, opmerking, products_id) values ('5', 'Super!', 9);
insert into reviews (auteur_id, opmerking, products_id) values ('15', 'Cool!', 9);
insert into reviews (auteur_id, opmerking, products_id) values ('2', 'Goede kleur', 10);
insert into reviews (auteur_id, opmerking, products_id) values ('16', 'Amazing', 10);
insert into reviews (auteur_id, opmerking, products_id) values ('16', 'Cool', 12);
insert into reviews (auteur_id, opmerking, products_id) values ('8', 'Great!', 11);

insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Josh', '20', 'Male', 'UK');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Emma', '13', 'Female', 'Marrakech');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Derrel', '69', 'Male', 'Germany ');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Sophie', '18', 'Female', 'Denmark');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Jayson', '28', 'Male', 'Nigeria');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Merel', '15', 'Female', 'Netherlands');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Mike', '33', 'Male', 'USA');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Remco', '20', 'Male', 'Belgium');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Daan', '40', 'Male', 'Netherlands');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Flynn', '23', 'Male', 'China');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Joppe', '16', 'Male', 'France');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Bundy', '33', 'Male', 'UK');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Saar', '13', 'Female', 'Switserland');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Rick', '53', 'Male', 'Japan');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Tom', '16', 'Male', 'Netherlands');
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Wessel', '28', 'Male', 'Suriname');
  
insert into looks (color) values ('Black');
insert into looks (color) values ('White');
insert into looks (color) values ('Red');
insert into looks (color) values ('Brown');
insert into looks (color) values ('Grey');
insert into looks (color) values ('Pink');
insert into looks (color) values ('Orange');
insert into looks (color) values ('Navy');
insert into looks (color) values ('Blue');
insert into looks (color) values ('Yellow');
insert into looks (color) values ('Gold');

insert into serie (name, geboortejaar) values ('Air Jordan 1 High', '2009');
insert into serie (name, geboortejaar) values ('Air Jordan 4', '2010');
insert into serie (name, geboortejaar) values ('Air Jordan 1 Low', '1950');
insert into serie (name, geboortejaar) values ('Yeezy', '2000');
insert into serie (name, geboortejaar) values ('Nike Dunk', '1900');
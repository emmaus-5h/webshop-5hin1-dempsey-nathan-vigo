--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  serie_id INTEGER
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
  products_id INTEGER,
  soort VARCHAR(30)
  
);

CREATE TABLE shoe_color (
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

insert into products (name, description, code, price) values ('Air Jordan 4 Black Cats', 'Een echte klassieker uit 2010, super exclusief en nogsteeds een parel wereldwijd!', '816905633-0', 750.95);
insert into products (name, description, code, price) values ('Air Jordan 1 X OFF WHITE', 'Deze schoen is niet meer weg te denken uit de sneaker industrie en is daarmee nogsteeds zo populair onder vele seleberties!', '077030122-3', 1300.00);
insert into products (name, description, code, price) values ('Nike X Yeezy Red October', 'Deze samenwerking is voor de echte old schools onder ons. Ben jij nou fan van Kanye West en Nike dan is dit echt een schoen voor jou!', '445924201-X', 5000.75);
insert into products (name, description, code, price) values ('Air jordan 1 Low X Cactus Jack ', 'Super gave schoen met een geweldige pasvorm wordt geleverd met exclusive goodie bag!', '693155505-7', 1450.00);
insert into products (name, description, code, price) values ('Nike Air Jordan 1 X OFF WHITE', 'Deze samenwerking heeft niet stilgezeten en bloeit nogsteeds in de fashionindustrie!', '686928463-6', 11000.50);
insert into products (name, description, code, price) values ('Nike Dunk Low Pigeon', 'Dit is alweer een oudje uit 2005, maar bij ons nogsteeds verkrijgbaar in de allerbeste gloednieuwe staat!', '492662523-7', 20005.00);

insert into reviews (auteurs_id, opmerking, products_id) values ('1', 'Coole patta', 1);
insert into reviews (auteurs_id, opmerking, products_id) values ('2', 'Fijne pasvorm en hele betrouwbare kwaliteit', 1);
insert into reviews (auteurs_id, opmerking, products_id) values ('3', 'Lange levrtijd, maar product voldoed aan de omschrijving', 2);
insert into reviews (auteurs_id, opmerking, products_id) values ('4', 'Zitten wat strak... Misschien moet ik ze nog wat langer dragen. Voor de rest hele toffe kleuren', 2);
insert into reviews (auteurs_id, opmerking, products_id) values ('5', 'Favourite shoe', 3);
insert into reviews (auteurs_id, opmerking, products_id) values ('6', 'Toffe schoen voor mijn zoon', 3);
insert into reviews (auteurs_id, opmerking, products_id) values ('7', 'Supper product', 4);
insert into reviews (auteurs_id, opmerking, products_id) values ('8', 'Bedankt voor de goede service', 4);
insert into reviews (auteurs_id, opmerking, products_id) values ('9', 'Bedankt', 5);
insert into reviews (auteurs_id, opmerking, products_id) values ('10', 'Eindelijk in mijn maat gevonden en ook nog eens snel geleverd', 5);
insert into reviews (auteurs_id, opmerking, products_id) values ('11', 'Te klein en veel te laat geleverd...', 6);
insert into reviews (auteurs_id, opmerking, products_id) values ('12', 'Goede schoen dit', 6);

insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Josh', '20', 'Male', 'UK')
insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Emma', '13', 'Female', 'Marrakech')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Derrel', '69', 'Male', 'Germany ')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Sophie', '18', 'Female', 'Denmark')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Jayson', '28', 'Male', 'Nigeria')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Merel', '15', 'Female', 'Netherlands')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Mike', '33', 'Male', 'USA')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Remco', '20', 'Male', 'Belgium')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Daan', '40', 'Male', 'Netherlands')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Flynn', '23', 'Male', 'China')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Joppe', '16', 'Male', 'France')
  insert into auteurs (naam, leeftijd, geslacht, nationaliteit) values ('Bundy', '33', 'Male', 'UK')
  
insert into shoe_color (products_id, color) values ('1','Black')
insert into shoe_color (products_id, color) values ('2','White')
insert into shoe_color (products_id, color) values ('3','Red')
insert into shoe_color (products_id, color) values ('4','Brown')
insert into shoe_color (products_id, color) values ('5','Red')
insert into shoe_color (products_id, color) values ('6','Grey')

insert into serie (soort, products_id) values ('Air Jordan 1 High', '4')
insert into serie (soort, products_id) values ('Air Jordan 4', '1')
insert into serie (soort, products_id) values ('Air Jordan 1 Low', '4')
insert into serie (soort, products_id) values ('Yeezy', '5')
insert into serie (soort, products_id) values ('Nike Dunk', '6')
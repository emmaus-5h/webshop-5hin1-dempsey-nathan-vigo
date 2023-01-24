--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE reviews (
  auteur VARCHAR(15),
  opmerking TEXT,
  sneaker_id INTEGER
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
insert into products (name, description, code, price) values ('Nike Air jordan 1 X OFF WHITE', 'Deze samenwerking heeft niet stilgezeten en bloeit nogsteeds in de fashionindustrie!', '686928463-6', 11000.50);
insert into products (name, description, code, price) values ('Nike Dunk Low Pigeon', 'Dit is alweer een oudje uit 2005, maar bij ons nogsteeds verkrijgbaar in de allerbeste gloednieuwe staat!', '492662523-7', 20005.00);

insert into reviews (auteur, opmerking, sneaker_id) values ('Josh', 'Coole patta', 1);
insert into reviews (auteur, opmerking, sneaker_id) values ('Emma', 'Fijne pasvorm en hele betrouwbare kwaliteit', 1);
insert into reviews (auteur, opmerking, sneaker_id) values ('Derrel', 'Lange levrtijd, maar product voldoed aan de omschrijving', 2);
insert into reviews (auteur, opmerking, sneaker_id) values ('Sophie', 'Zitten wat strak... Misschien moet ik ze nog wat langer dragen. Voor de rest hele toffe kleuren', 2);
insert into reviews (auteur, opmerking, sneaker_id) values ('Jayson', 'Favourite shoe', 3);
insert into reviews (auteur, opmerking, sneaker_id) values ('Merel', 'Toffe schoen voor mijn zoon', 3);
insert into reviews (auteur, opmerking, sneaker_id) values ('Mike', 'Supper product', 4);
insert into reviews (auteur, opmerking, sneaker_id) values ('Remco', 'Bedankt voor de goede service', 4);
insert into reviews (auteur, opmerking, sneaker_id) values ('Daan', 'Bedsnkt', 5);
insert into reviews (auteur, opmerking, sneaker_id) values ('Flynn', 'Eindelijk in mijn maat gevonden en ook nog eens snel geleverd', 5);
insert into reviews (auteur, opmerking, sneaker_id) values ('Joppe', 'Te klein en veel te laat geleverd...', 6);
insert into reviews (auteur, opmerking, sneaker_id) values ('Bundy', 'Goede schoen dit', 6);

SELECT * FROM products JOIN reviews ON product.id = reviews.products_id;
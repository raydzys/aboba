CREATE TABLE company
(id INT(99) PRIMARY KEY AUTO_INCREMENT, Title VARCHAR(99), INN VARCHAR(99), OGRN VARCHAR(99), Director VARCHAR(99), adress VARCHAR(99));


CREATE TABLE city 
(id INT(99) PRIMARY KEY AUTO_INCREMENT, ciry_ru VARCHAR(99), city_en VARCHAR(99));

INSERT INTO cities (city_ru, city_en) VALUES 
('Томск', 'Tomsk'), ('Москва', 'Moscow');



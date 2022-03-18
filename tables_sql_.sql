ALTER TABLE users ADD email VARCHAR(99) UNIQUE;
ALTER TABLE users ADD gender VARCHAR(99) UNIQUE;
ALTER TABLE users ADD company VARCHAR(99) UNIQUE;
ALTER TABLE users ADD post VARCHAR(99) UNIQUE;
ALTER TABLE users ADD address VARCHAR(99) UNIQUE;
ALTER TABLE users ADD city VARCHAR(99) UNIQUE;
ALTER TABLE users ADD phone VARCHAR(99) UNIQUE;



INSERT INTO `users` (`name`, `last_name`, `otche`, `birth_date`, `email`) VALUES 
('Abobus', 'Dada', 'Valeryc', '2000-12-12', 'Ktokavo@gmail.com'),
('Avtobus', 'NetNet', 'Valesaryc', '1980-02-12', 'Nikabo@gmail.com'),
('Chelovek', 'oleg', 'Filoak', '1999-12-12', 'nenada@gmail.com'),
('Petr', 'Dada', 'Chichnyak', '2000-12-27', 'NEoch@gmail.com'),
('Adolf', 'Dada', 'Adolfic', '1960-05-21', 'ONO@maircf.ru'),
('Nekoglay', 'Valechikd', 'Valeryc', '2000-12-23', 'Ktokavo@gmail.com'),
('Torgash', 'Zavist', 'Obem', '1998-01-02', 'Gild@gmail.com'),
('Pokup', 'Cherza', 'Ovaz', '1998-01-24', 'ovasger@gmail.com'),
('Artem', 'Zavist', 'Cherzarovich', '1998-01-02', 'Dumas@gmail.com'),
('Mazeloff', 'Kirieshka', 'Mem', '2001-01-15', 'kirie@gmail.com');



ALTER TABLE users ADD CONSTRAINT UNIQUE(name, last_name, otche, birth_date);



ALTER TABLE users  ADD region VARCHAR(100) NOT NULL DEFAULT 'Tomsk';

create table gender (
  id INt primary key AUTO_INCREMENT,
  rus varchar(10) not NULL,
  eng varchar(10) not NULL
  )
  
 /* insert into gender (rus, eng) values 
 ('Мужской', 'Male'),
('Женский', 'Female') */ 
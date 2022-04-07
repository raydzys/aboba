ALTER TABLE users MODIFY COLUMN gender INT(22);
ALTER TABLE users MODIFY COLUMN company INT(22);

ALTER TABLE users
ADD CONSTRAINT genderC
FOREIGN KEY (gender)
REFERENCES genderC(id);

ALTER TABLE users
ADD CONSTRAINT companyC
FOREIGN KEY (company)
REFERENCES companyC(id);

UPDATE users SET gender = 1;
UPDATE users SET gender = 2 WHERE id in(2,5);

INSERT INTO company (name, INN, MNUM, director, adress) VALUES 
('Ubisoft', '228777666555', '1648664442624', 'Adolf G. Michaelid', '67474 Some Ulica 965 North Killa, 424 Ulica'), 
('TerraGroup', '483852959322', '3333333333333', 'Buyanov N. M.', '412342 Tarkov City, Lab'), 
('141Force', '720929705956', '8587201416343', 'V. Makarov', 'Airport SPT, Kiyv 3242414');

UPDATE users SET company = 1 WHERE id in(3, 1, 2);
UPDATE users SET company = 2 WHERE id in(5, 6, 7);
UPDATE users SET company = 3 WHERE id in(9, 10, 4);

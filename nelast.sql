SELECT company.name, 
SUBSTRING(users.email, (LOCATE('@', users.email))+1) AS `adress_domen`,
COUNT(*) AS `users_with_same_domen_by_order` FROM company 
JOIN users ON company.ID = users.company GROUP BY `adress_domen`, company.name ORDER BY company.name ASC
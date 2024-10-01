INSERT INTO users (first_name,last_name,email,passoword_hash,salario) VALUES ('Beatriz','Carvalho','Beatriz@emlai.com','938e420983', 300)
,('Caio','Silva','Caio@emlai.com','34qfdf1', 120)
,('Filipe','Ramalho','Filipe@emlai.com','asf1244', 1)
,('Lionel','Messi','Messi@emlai.com','00384522', 10000000);

INSERT INTO profiles (bio,description,user_id)
SELECT CONCAT('bio de ',first_name), CONCAT('descrição de ',last_name ),id
FROM users;

INSERT INTO users_roles (user_id, roles_id)
SELECT id,(SELECT id FROM roles ORDER BY rand() LIMIT 1)
FROM users
WHERE id BETWEEN 114 and 117;

SELECT * FROM users u 
WHERE id BETWEEN 107 and 117
ORDER BY id DESC;

UPDATE users SET first_name = 'Gênio'
WHERE id=117;

SELECT * FROM users_roles ur 

DELETE FROM users_roles
WHERE user_id = 14 ;

SELECT u.id, u.first_name, r.name, bio, u.salario 
FROM users u
INNER JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.roles_id = r.id
INNER JOIN profiles p ON p.user_id = u.id
ORDER BY u.salario DESC;





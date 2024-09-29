-- in seleciona elementos entre valores enviados
SELECT * FROM users u WHERE u.id in(9,10,20,100) and u.first_name in ('Milene','Shana');

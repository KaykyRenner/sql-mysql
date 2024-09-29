-- WHERE serve para filtrar
-- SELECT serve para selecionar
-- expressões regulares = < <= > >= !=
SELECT * FROM users u WHERE id < 8 and last_name ='renner';
SELECT u.email uemail, u.id uid FROM users as u;	

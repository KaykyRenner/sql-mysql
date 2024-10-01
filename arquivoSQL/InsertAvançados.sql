INSERT INTO users_roles (user_id,user_roles)
SELECT id, (SELECT id from roles order by rand() limit 1) as qualquer from users order by rand() limit 10 ;	
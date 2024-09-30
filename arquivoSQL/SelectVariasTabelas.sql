-- mostra o id de users atrelado ao id de profiles, mostra o id que estaão ligados 
SELECT u.id as uid, p.id as pid
FROM users as u, profiles as p
WHERE u.id = p.user_id;


-- inner join vai mostrar os user_id atrlado ao id, que estão conectados
-- like vai filtrar e mostrar os id com o frist_name que termina com a
-- .
-- limit vai limitar 10 usuários
SELECT u.id as uid, p.id as pid
FROM users as u
inner join profiles p on u.id = p.user_id 
where u.first_name like '%a'
order by u.first_name DESC
limit 10;


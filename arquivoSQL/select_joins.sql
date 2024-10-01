-- consultas com join
SELECT u.id AS uid, u.first_name, p.bio,r.name as permisões FROM users AS u
LEFT JOIN profiles AS p ON u.id = p.user_id 
INNER JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.roles_id = r.id 
ORDER BY uid ASC
LIMIT 50
;
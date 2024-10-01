-- atualiza registro com join
SELECT u.first_name, p.bio FROM users u 
JOIN profiles p 
ON p.user_id = u.id 
WHERE u.first_name = 'Katelyn';

DELETE p FROM users u 
JOIN profiles p
ON p.user_id = u.id 
WHERE u.first_name = 'Katelyn';
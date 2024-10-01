-- atualiza registro com join
SELECT u.first_name, p.bio FROM users u 
JOIN profiles p 
ON p.user_id = u.id 
WHERE u.first_name = 'Katelyn';
UPDATE users as u
JOIN profiles p
ON p.user_id = u.id 
SET p.bio = CONCAT(p.bio, ' atualizado')
WHERE u.first_name = 'Katelyn';
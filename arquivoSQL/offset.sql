-- offset passa de página 
SELECT * FROM users u WHERE id BETWEEN '10' and '50'order by first_name DESC limit 2 offset 5
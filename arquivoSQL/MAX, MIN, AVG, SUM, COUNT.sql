SELECT first_name, salario
FROM users
WHERE salario IN (SELECT MIN(salario) AS MinSalario FROM users 
				   UNION ALL
				   SELECT MAX(salario) AS MaxSalario FROM users );


SELECT MAX(salario) AS maxSalario,MIN(salario) AS minSalario,AVG(salario) AS médiaSalarial,SUM(salario) AS somaSalarial, COUNT(salario)
FROM users u
WHERE first_name = 'Carly';


SELECT salario FROM users u 
WHERE first_name ='Carly';


--fazendo com todos os registros 
SELECT MAX(salario) AS maxSalario,MIN(salario) AS minSalario,AVG(salario) AS médiaSalarial,SUM(salario) AS somaSalarial, COUNT(salario) as total
FROM users u
LEFT JOIN profiles p ON 
p.user_id = u.id
GROUP BY u.first_name 
ORDER BY total DESC
;

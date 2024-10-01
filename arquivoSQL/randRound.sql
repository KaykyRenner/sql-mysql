-- configura um salario aleatório para cada usuario
-- seleciona os salarios que estao na faixa de 900 a 1000 reais
UPDATE users set salario = ROUND(RAND()*1000,2);
SELECT first_name ,salario from users WHERE salario BETWEEN 900 and 1000;

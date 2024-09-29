-- like %a = pega todos os nomes que termina com "a"
-- like a% = pega todos os nomes que começam com "a"
-- like %a% = pega todos os nomes tem no meio "a", ignora a primeira letra e última
-- % significa qualquer coisa
-- ____ busca nomes que tem 4 caracter
SELECT * FROM users u WHERE u.first_name like '%a%y%';
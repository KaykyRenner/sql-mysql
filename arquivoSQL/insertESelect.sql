-- insert select
-- insere valores em uma tabela usando outra
insert into profiles (bio,description,user_id)
select CONCAT( 'bio de',first_name)
,CONCAT('descrição de', first_name)
,id from users ;
DELETE FROM profiles; 
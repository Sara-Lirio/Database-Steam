#6 - Qual mês mais se lança jogo? 
select
count(name) as qtd_jogos,
month(release_date) as release_month
from
steam
group by month(release_date)
order by qtd_jogos desc;

#7 - Qual jogo tem a pior avaliação? 
select name, negative_ratings
from steam
order by negative_ratings desc
limit 5;

#8 - Quantidade de jogos que possuem  +18
SELECT count(*) AS Total_de_jogos
FROM steam
WHERE required_age = '18';

#Jogos +16
SELECT count(*) AS Total_de_jogos
FROM steam
WHERE required_age = '16';

#Jogos +12
SELECT count(*) AS Total_de_jogos
FROM steam
WHERE required_age = '12';

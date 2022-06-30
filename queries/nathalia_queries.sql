# Qual seria o resultado das soma dos preços da desenvolvedora Valve para as plataformas MAC
SELECT   developer, platforms, SUM(price)
FROM steam
WHERE developer='Valve'; #119,42

SELECT   developer, platforms, SUM(price)
FROM steam
WHERE developer='Gearbox Software'; #40,41

SELECT   developer, platforms, SUM(price)
FROM steam
WHERE developer='Egosoft'; #137,92

SELECT   developer, platforms, SUM(price)
FROM steam
WHERE developer='MumboJumbo'; #191,71

SELECT   developer, platforms, SUM(price)
FROM steam
WHERE developer='HeR Interactive'; #212,15

#Quantos jogos possuem suporte via email comparando com o número total de jogos  ? 
SELECT distinct (SELECT distinct count(steam.developer)
from steam)  as total, count(steam.developer) as com_suporte
FROM steam
INNER JOIN steam_support_info
ON steam.appid = steam_support_info.steam_appid
WHERE steam_support_info.support_email;



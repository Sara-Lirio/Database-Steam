SELECT * FROM steam.steam;

#Quais jogos apartir de 2010 que são multiplayers
SELECT steam.name, steam.release_date, steamspy_tag_data.multiplayer
FROM steam
INNER JOIN steamspy_tag_data
ON steam.appid = steamspy_tag_data.appid
WHERE release_date between 2010 and 2020 And multiplayer > 0
ORDER BY release_date desc;

# Quais são os requisitos para jogar Cs para plataforma Linux 
SELECT steam.appid, steam.name, steam_requirements_data.steam_appid, steam_requirements_data.linux_requirements
FROM steam
INNER JOIN steam_requirements_data
ON steam.appid = steam_requirements_data.steam_appid
WHERE appid = 10;

# Qual seria o resultado das soma dos preços da desenvolvedora Valve para as plataformas MAC
SELECT   developer, platforms, SUM(price)
FROM steam
WHERE developer='Valve' AND platforms like'%mac%';

# Quais jogos não possuem website? 
SELECT steam.name as Jogos_sem_Website, steam_support_info.website
FROM steam
LEFT JOIN steam_support_info
ON steam.appid = steam_support_info.steam_appid
WHERE steam_support_info.website is null;

#Quantas desenvolvedoras de jogos possuem suporte via email comparando com o número total de desenvolvedoras ? 
SELECT (SELECT count(steam.developer)
from steam)  as desenvolvedoras_total, count(steam.developer) as desenvolvedoras_com_suporte
FROM steam
INNER JOIN steam_support_info
ON steam.appid = steam_support_info.steam_appid
WHERE steam_support_info.support_email;





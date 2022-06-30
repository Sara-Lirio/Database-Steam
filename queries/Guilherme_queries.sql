#Quais jogos contam com um trailer?
SELECT
steam.name,
steam_media_data.movies as movies
FROM
steam_media_data
left join
steam on steam.appid = steam_media_data.steam_appid
where not movies = '' ;

#quais jogam rodam na plataforma linux ?
SELECT
COUNT(platforms)
from steam
where platforms like('%linux') ;

#2165 rodam apenas 491 no linux
#quais jogam rodam na plataforma windows ?
SELECT
COUNT(platforms)
from steam
where platforms like('windows%')
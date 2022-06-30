#1 - Quantos jogos tem a Steam?
SELECT COUNT(*) AS Total_de_Jogos
FROM steam;


#2- Quantos jogos gratuitos tem na Steam? 
SELECT count(*) AS Jogos_Gratuitos 
FROM STEAM
WHERE PRICE = 0;


#3 - Quais os cincos jogos mais jogados? 
SELECT NAME, AVERAGE_PLAYTIME FROM STEAM.STEAM
ORDER BY AVERAGE_PLAYTIME DESC;
SELECT DISTINCT CITY 
FROM STATION
WHERE RIGHT(CITY, 1) NOT IN ('A','E','O','I','U');
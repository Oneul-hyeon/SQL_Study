SELECT YEAR(SALE.SALES_DATE) AS YEAR, MONTH(SALE.SALES_DATE) AS MONTH, INFO.GENDER, COUNT(DISTINCT SALE.USER_ID) AS USERS 
FROM USER_INFO INFO
    RIGHT JOIN ONLINE_SALE SALE ON INFO.USER_ID = SALE.USER_ID
WHERE INFO.GENDER IS NOT NULL
GROUP BY YEAR(SALE.SALES_DATE), MONTH(SALE.SALES_DATE), INFO.GENDER
ORDER BY YEAR(SALE.SALES_DATE), MONTH(SALE.SALES_DATE), INFO.GENDER;
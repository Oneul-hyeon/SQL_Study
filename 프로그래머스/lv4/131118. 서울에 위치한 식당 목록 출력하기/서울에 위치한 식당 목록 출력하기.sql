SELECT INFO.REST_ID, INFO.REST_NAME, INFO.FOOD_TYPE, INFO.FAVORITES, INFO.ADDRESS, REVIEW.SCORE
FROM REST_INFO INFO
    JOIN (SELECT REST_ID, ROUND(SUM(REVIEW_SCORE) / COUNT(REST_ID), 2) AS SCORE
          FROM REST_REVIEW
          GROUP BY REST_ID) AS REVIEW
          ON INFO.REST_ID = REVIEW.REST_ID
WHERE INFO.ADDRESS LIKE '서울%'
ORDER BY REVIEW.SCORE DESC, INFO.FAVORITES DESC;
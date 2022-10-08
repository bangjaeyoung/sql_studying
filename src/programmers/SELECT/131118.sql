SELECT RI.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS, ROUND(AVG(RV.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS RI
JOIN REST_REVIEW AS RV
ON RI.REST_ID = RV.REST_ID
WHERE RI.ADDRESS LIKE '서울%'
GROUP BY RI.REST_ID
ORDER BY AVG(RV.REVIEW_SCORE) DESC, RI.FAVORITES DESC;
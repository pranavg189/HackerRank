SELECT DISTINCT City
FROM Station
WHERE SUBSTR(LOWER(City),1,1) NOT IN ('a','e','i','o','u')
AND
SUBSTR(LOWER(City),LENGTH(City),1) NOT IN ('a','e','i','o','u')
ORDER BY City;
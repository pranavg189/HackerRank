SELECT city || ' ' || LENGTH FROM
(SELECT city, LENGTH(city) AS LENGTH FROM station WHERE LENGTH(city)=
(SELECT MAX(LENGTH(city)) FROM station) ORDER BY city) where ROWNUM<=1
UNION
SELECT city || ' ' || LENGTH FROM
(SELECT city, LENGTH(city) AS LENGTH FROM station WHERE LENGTH(city)=
(SELECT MIN(LENGTH(city)) FROM station) ORDER BY city) where ROWNUM<=1;
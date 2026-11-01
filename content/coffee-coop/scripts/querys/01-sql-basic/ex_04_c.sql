-- Exercise 04 - c
-- Municipalities in the country who name is pamplona

SELECT 
    T1.MUNICIPALITY_NAME as municipality,
    T1.MUNICIPALITY_CODE as municipality_code
FROM geo.municipalities as T1
WHERE T1.municipality_name ILIKE '%pamplona%';

/***
 municipality | municipality_code                                                                   
--------------+-------------------
 Pamplona     | 54518
(1 row)
**/
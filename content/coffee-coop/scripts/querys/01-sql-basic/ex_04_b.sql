--Exercise 04 -b
--Municipalities of Norte de Santander whose name starts with the word San

SELECT 
    T1.MUNICIPALITY_NAME as municipality,
    T1.MUNICIPALITY_CODE as municipality_code
FROM geo.municipalities as T1
WHERE T1.department_code = '54' 
    AND t1.municipality_name LIKE 'San %'
ORDER BY t1.municipality_name ASC;

/**
 municipality | municipality_code                                                                   
--------------+-------------------
 San Calixto  | 54670
 San Cayetano | 54673
(2 rows)
**/
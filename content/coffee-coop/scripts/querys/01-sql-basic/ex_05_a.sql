-- Exercise 05 - a
-- Collection points: inactive points

SELECT
    T1.point_name as point,
    T1.municipality_code as municipality_code,
    T1.address_line as address
FROM buy.collection_points as T1
WHERE T1.is_active = FALSE;
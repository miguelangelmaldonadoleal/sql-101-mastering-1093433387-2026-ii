-- Exercise 05 - a
-- Collection points: inactive points

SELECT
    T1.point_name as point,
    T1.municipality_code as municipality_code,
    T1.address_line as address
FROM buy.collection_points as T1
WHERE T1.is_active = FALSE;

/***
           point            | municipality_code |      address                                      
----------------------------+-------------------+--------------------
 Punto de Compra El Banco 1 | 47245             | Calle 17 # 34-54
 Punto de Compra Popayán 1  | 19001             | Carrera 21 # 4-95
 Punto de Compra Apía 2     | 66045             | Calle 9 # 14-56
 Punto de Compra Tello 1    | 41799             | Calle 8 # 13-23
 Punto de Compra Turbo 1    | 05837             | Avenida 32 # 34-61
 Punto de Compra Paicol 2   | 41518             | Calle 2 # 30-84
 Punto de Compra Rionegro 1 | 68615             | Carrera 31 # 59-80
 Punto de Compra Ulloa 1    | 76845             | Calle 15 # 3-50
 Punto de Compra Nátaga 1   | 41483             | Diagonal 30 # 7-59                                
(9 rows)
**/
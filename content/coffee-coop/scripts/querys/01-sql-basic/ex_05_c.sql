-- Exercise 05 - c
-- Collection points that are inactive or have no phone number

SELECT
    T1.point_name as point,
    T1.municipality_code as municipality_code,
    T1.address_line as address,
    T1.phone_number as phone_number,
    T1.is_active as is_active
FROM buy.collection_points as T1
WHERE T1.is_active = FALSE
    OR T1.phone_number is null;

/***
             point              | municipality_code |        address         | phone_number | is_active 
--------------------------------+-------------------+------------------------+--------------+-----------
 Punto de Compra El Banco 1     | 47245             | Calle 17 # 34-54       | 6055026534   | f
 Punto de Compra Popayán 1      | 19001             | Carrera 21 # 4-95      | 6057341141   | f
 Punto de Compra Hatonuevo 1    | 44378             | Calle 7 # 16-89        |              | t
 Punto de Compra Bosconia 1     | 20060             | Carrera 26 # 26-43     |              | t
 Punto de Compra Cajibío 1      | 19130             | Carrera 15 # 32-45     |              | t
 Punto de Compra Anserma 1      | 17042             | Calle 39 # 7-96        |              | t
 Punto de Compra Apía 2         | 66045             | Calle 9 # 14-56        |              | f     
 Punto de Compra Puracé 1       | 19585             | Calle 16 # 50-5        |              | t
 Punto de Compra Aipe 1         | 41016             | Carrera 13 # 17-16     |              | t
 Punto de Compra Marsella 1     | 66440             | Transversal 19 # 42-92 |              | t
 Punto de Compra Flandes 1      | 73275             | Carrera 38 # 40-79     |              | t
 Punto de Compra La Gloria 1    | 20383             | Transversal 38 # 7-85  |              | t
 Punto de Compra Tesalia 1      | 41797             | Transversal 15 # 23-61 |              | t
 Punto de Compra Icononzo 1     | 73352             | Calle 19 # 35-13       |              | t
 Punto de Compra Tello 1        | 41799             | Calle 8 # 13-23        | 6037843794   | f
 Punto de Compra Venecia 1      | 05861             | Avenida 5 # 9-43       |              | t
 Punto de Compra Turbo 1        | 05837             | Avenida 32 # 34-61     | 6075864511   | f     
 Punto de Compra Paicol 2       | 41518             | Calle 2 # 30-84        | 6071743803   | f
 Punto de Compra El Tambo 2     | 19256             | Calle 16 # 56-53       |              | t
 Punto de Compra La Argentina 1 | 41378             | Calle 37 # 58-65       |              | t
 Punto de Compra Rionegro 1     | 68615             | Carrera 31 # 59-80     | 6037017611   | f
 Punto de Compra Pelaya 1       | 20550             | Avenida 19 # 26-92     |              | t
 Punto de Compra Ulloa 1        | 76845             | Calle 15 # 3-50        | 6061856687   | f
 Punto de Compra Isnos 1        | 41359             | Calle 12 # 33-28       |              | t
 Punto de Compra San Lorenzo 1  | 52687             | Calle 29 # 54-48       |              | t
 Punto de Compra Timbiquí 1     | 19809             | Transversal 34 # 19-91 |              | t
 Punto de Compra Nátaga 1       | 41483             | Diagonal 30 # 7-59     | 6082388547   | f     
 Punto de Compra Cisneros 1     | 05190             | Calle 37 # 10-5        |              | t
 Punto de Compra El Carmen 2    | 54245             | Calle 3 # 34-88        |              | t
 Punto de Compra Baraya 1       | 41078             | Calle 1 # 19-77        |              | t
 Punto de Compra Bochalema 1    | 54099             | Carrera 25 # 47-89     |              | t
 Punto de Compra Turbo 2        | 05837             | Calle 36 # 12-19       |              | t
 Punto de Compra Villa Rica 1   | 19845             | Diagonal 6 # 8-43      |              | t
 Punto de Compra Coello 1       | 73200             | Transversal 20 # 49-66 |              | t
(34 rows)
**/
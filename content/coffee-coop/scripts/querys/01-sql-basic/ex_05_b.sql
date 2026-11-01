-- Exercise 05 - b
-- Collection points without phone number ordered by name

SELECT
    T1.point_name as point,
    T1.municipality_code as municipality_code,
    T1.address_line as address
FROM buy.collection_points as T1
WHERE T1.phone_number is null
ORDER BY T1.point_name ASC;

/***
             point              | municipality_code |        address                                
--------------------------------+-------------------+------------------------
 Punto de Compra Aipe 1         | 41016             | Carrera 13 # 17-16
 Punto de Compra Anserma 1      | 17042             | Calle 39 # 7-96
 Punto de Compra Apía 2         | 66045             | Calle 9 # 14-56
 Punto de Compra Baraya 1       | 41078             | Calle 1 # 19-77
 Punto de Compra Bochalema 1    | 54099             | Carrera 25 # 47-89
 Punto de Compra Bosconia 1     | 20060             | Carrera 26 # 26-43
 Punto de Compra Cajibío 1      | 19130             | Carrera 15 # 32-45
 Punto de Compra Cisneros 1     | 05190             | Calle 37 # 10-5
 Punto de Compra Coello 1       | 73200             | Transversal 20 # 49-66                        
 Punto de Compra El Carmen 2    | 54245             | Calle 3 # 34-88
 Punto de Compra El Tambo 2     | 19256             | Calle 16 # 56-53
 Punto de Compra Flandes 1      | 73275             | Carrera 38 # 40-79
 Punto de Compra Hatonuevo 1    | 44378             | Calle 7 # 16-89
 Punto de Compra Icononzo 1     | 73352             | Calle 19 # 35-13
 Punto de Compra Isnos 1        | 41359             | Calle 12 # 33-28
 Punto de Compra La Argentina 1 | 41378             | Calle 37 # 58-65
 Punto de Compra La Gloria 1    | 20383             | Transversal 38 # 7-85
 Punto de Compra Marsella 1     | 66440             | Transversal 19 # 42-92
 Punto de Compra Pelaya 1       | 20550             | Avenida 19 # 26-92                            
 Punto de Compra Puracé 1       | 19585             | Calle 16 # 50-5
 Punto de Compra San Lorenzo 1  | 52687             | Calle 29 # 54-48
 Punto de Compra Tesalia 1      | 41797             | Transversal 15 # 23-61
 Punto de Compra Timbiquí 1     | 19809             | Transversal 34 # 19-91
 Punto de Compra Turbo 2        | 05837             | Calle 36 # 12-19
 Punto de Compra Venecia 1      | 05861             | Avenida 5 # 9-43
 Punto de Compra Villa Rica 1   | 19845             | Diagonal 6 # 8-43
(26 rows)
**/
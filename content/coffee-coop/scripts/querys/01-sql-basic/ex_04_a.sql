--Exercise 04 -a
--alias minucipality and municipality_code(ordered alphabetically)

SELECT 
    T1.MUNICIPALITY_NAME as municipality,
    T1.MUNICIPALITY_CODE as municipality_code
FROM geo.municipalities as T1
WHERE T1.department_code = '54'
ORDER BY t1.municipality_name ASC;

/***
   municipality    | municipality_code                                                              
-------------------+-------------------
 Ábrego            | 54003
 Arboledas         | 54051
 Bochalema         | 54099
 Bucarasica        | 54109
 Cáchira           | 54128
 Cácota            | 54125
 Chinácota         | 54172
 Chitagá           | 54174
 Convención        | 54206                                                                          
 Cúcuta            | 54001
 Cucutilla         | 54223
 Durania           | 54239
 El Carmen         | 54245
 El Tarra          | 54250
 El Zulia          | 54261
 Gramalote         | 54313
 Hacarí            | 54344
 Herrán            | 54347
 La Esperanza      | 54385                                                                          
 La Playa          | 54398
 Labateca          | 54377
 Los Patios        | 54405
 Lourdes           | 54418
 Mutiscua          | 54480
 Ocaña             | 54498
 Pamplona          | 54518
 Pamplonita        | 54520
 Puerto Santander  | 54553
 Ragonvalia        | 54599                                                                          
 Salazar           | 54660
 San Calixto       | 54670
 San Cayetano      | 54673
 Santiago          | 54680
 Sardinata         | 54720
 Silos             | 54743
 Teorama           | 54800
 Tibú              | 54810
 Toledo            | 54820
 Villa Caro        | 54871                                                                          
 Villa Del Rosario | 54874
(40 rows)
**/
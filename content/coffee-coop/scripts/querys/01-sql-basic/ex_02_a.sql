-- Exercise 02 - a
--COFFE COP: SELECT VARIETYS AND ALIAS
SELECT 
    T1.variety_name as variety,
    T1.description as description,
    T1.species as species
FROM farm.coffee_varieties AS T1;
WHERE T1.is_rust_resistant = TRUE

/*
    variety    |                             description                             | species      
---------------+---------------------------------------------------------------------+---------
 Castillo      | Variedad colombiana resistente a la roya, la m�s sembrada del pa�s. | arabica
 Colombia      | Variedad compuesta resistente a la roya, antecesora de Castillo.    | arabica
 Caturra       | Mutaci�n de Borb�n de porte bajo y alta productividad.              | arabica
 Cenicaf� 1    | Variedad de porte bajo con resistencia a la roya.                   | arabica
 T�pica        | Variedad tradicional de porte alto.                                 | arabica
 Borb�n        | Variedad tradicional de buena calidad en taza.                      | arabica
 Tabi          | Variedad de porte alto resistente a la roya.                        | arabica
 Geisha        | Variedad de especialidad con perfil floral.                         | arabica
 Borb�n Rosado | Variedad de especialidad de fruto rosado.                           | arabica      
 Maragogipe    | Variedad de grano grande.                                           | arabica
 Pacamara      | Cruce de Pacas y Maragogipe, grano grande.                          | arabica
 Robusta       | Especie Coffea canephora, de mayor contenido de cafe�na.            | robusta
(12 rows)
*/

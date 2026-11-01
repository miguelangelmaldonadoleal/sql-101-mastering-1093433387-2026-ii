-- Exercise 09 - c
-- Not accepted analyses of 2026-09-30 with observations ordered by defects descending

SELECT
    T1.analysis_id as analysis,
    T1.delivery_id as delivery,
    T1.defects_pct as defects_pct,
    T1.is_accepted as is_accepted,
    T1.observations as observations
FROM buy.quality_analyses as T1
WHERE T1.analysis_id LIKE 'QA-20260930-%'
    AND T1.is_accepted = FALSE
    AND T1.observations is not null
ORDER BY T1.defects_pct DESC;

/*
      analysis      |      delivery       | defects_pct | is_accepted |                observations                 
--------------------+---------------------+-------------+-------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |       19.54 | f           | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |       17.29 | f           | Muestra tomada por duplicado. QA-20260930-000119 | DLV-20260930-000253 |       15.59 | f           | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |       13.21 | f           | Olor a fermento en la muestra.                                                                                                   
 QA-20260930-000113 | DLV-20260930-000223 |       12.94 | f           | Caf� sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        9.75 | f           | Caf� con humedad alta, requiere m�s secado.
 QA-20260930-000018 | DLV-20260930-000006 |        7.88 | f           | Caf� con humedad alta, requiere m�s secado.
(7 rows)
*/
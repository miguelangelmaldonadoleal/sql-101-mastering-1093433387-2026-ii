-- Exercise 08 - b
-- Deliveries of 2026-09-30 per coffee type: count and total gross weight

SELECT
    T1.coffee_type AS coffee_type,
    COUNT(T1.delivery_id) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T1.coffee_type
ORDER BY SUM(T1.gross_weight_kg) DESC;
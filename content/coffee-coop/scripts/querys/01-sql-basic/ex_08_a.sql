-- Exercise 08 - a
-- Deliveries received on 2026-09-30 ordered by reception time

SELECT
    T1.delivery_id as delivery,
    T1.farm_id as farm_id,
    T1.collection_point_id as collection_point_id,
    T1.delivered_at as received_at,
    T1.coffee_type as coffee_type,
    T1.gross_weight_kg as gross_weight_kg
FROM buy.deliveries as T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T1.delivered_at ASC;
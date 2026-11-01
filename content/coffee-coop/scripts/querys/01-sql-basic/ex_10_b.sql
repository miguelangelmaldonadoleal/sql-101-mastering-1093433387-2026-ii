-- Exercise 10 - b
-- Pending settlements of 2026-09-30 ordered by net amount descending

SELECT
    T1.settlement_id as settlement,
    T1.delivery_id as delivery,
    T1.net_amount as net_cop,
    T1.status as status
FROM pay.settlements as T1
WHERE T1.settlement_id LIKE 'STL-20260930-%'
    AND T1.status = 'pending'
ORDER BY T1.net_amount DESC;
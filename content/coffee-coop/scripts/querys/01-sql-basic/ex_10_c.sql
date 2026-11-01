-- Exercise 10 - c
-- Settlements of 2026-09-30 without deductions, checking the gross amount

SELECT
    T1.settlement_id as settlement,
    T1.net_weight_kg as net_weight_kg,
    T1.price_per_kg_applied as price_per_kg,
    T1.gross_amount as gross_cop,
    T1.net_weight_kg * T1.price_per_kg_applied as check_gross_cop,
    T1.net_amount as net_cop
FROM pay.settlements as T1
WHERE T1.settlement_id LIKE 'STL-20260930-%'
    AND T1.deductions_amount = 0;
-- Exercise 06 - c
-- Inactive farmers of Pamplona ordered by membership date (oldest first)

SELECT
    T1.document_number as document,
    T1.first_name as first_name,
    T1.last_name as last_name,
    T1.membership_date as membership_date,
    T1.is_active as is_active
FROM farm.farmers as T1
WHERE T1.municipality_code = '54518'
    AND T1.is_active = FALSE
ORDER BY T1.membership_date ASC;
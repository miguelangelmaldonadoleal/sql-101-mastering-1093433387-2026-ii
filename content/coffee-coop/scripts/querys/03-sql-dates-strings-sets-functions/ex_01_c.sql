-- Exercise 01 - c
-- Current timestamp and current date in a single row, without a table

SELECT
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/*
            now_ts             |   today                                                                                                     
-------------------------------+------------
 2026-11-05 00:22:47.362896-05 | 2026-11-05
*/

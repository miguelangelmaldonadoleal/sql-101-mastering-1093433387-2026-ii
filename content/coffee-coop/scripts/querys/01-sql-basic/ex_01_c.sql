-- Exercise 01 - c
-- Departments: code and name ordered alphabetically by name

SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM
    geo.departments
AS
    T1
ORDER BY
    T1.department_name ASC;
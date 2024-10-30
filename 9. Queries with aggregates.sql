/*
Table: employees

| role     | name       | building | years_employed |
|----------|------------|----------|----------------|
| Engineer | Becky A.   | 1e       | 4              |
| Engineer | Dan B.     | 1e       | 2              |
| Engineer | Sharon F.  | 1e       | 6              |
| Engineer | Dan M.     | 1e       | 4              |
| Engineer | Malcom S.  | 1e       | 1              |
| Artist   | Tylar S.   | 2w       | 2              |
| Artist   | Sherman D. | 2w       | 8              |
| Artist   | Jakob J.   | 2w       | 6              |
| Artist   | Lillia A.  | 2w       | 7              |
| Artist   | Brandon J. | 2w       | 7              |
| Manager  | Scott K.   | 1e       | 9              |
| Manager  | Shirlee M. | 1e       | 3              |
| Manager  | Daria O.   | 2w       | 6              |
*/

/* 1. Find the longest time that an employee has been at the studio */
SELECT MAX(years_employed) AS Max_years_employed
FROM employees;

/* 2. For each role, find the average number of years employed by employees in that role */
SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;

/* 3. Find the total number of employee years worked in each building */
SELECT building, SUM(years_employed) as total_years_employed
FROM employees
GROUP BY building;

/* 4. Find the number of Artists in the studio (without a HAVING clause) */
SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

/* 5. Find the number of Employees of each role in the studio */
SELECT role, COUNT(*)
FROM employees
GROUP BY role;

/* 6. Find the total number of years employed by all Engineers */
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";
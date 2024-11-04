/*
Table: buildings

| building_name | capacity |
|---------------|----------|
| 1e            | 24       |
| 1w            | 32       |
| 2e            | 16       |
| 2w            | 20       |


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
| Engineer | Yancy I.	|          | 0              |
| Artist   | Oliver P.	|          | 0              |
*/


/* 1. Find the name and role of all employees who have not been assigned to a building */
SELECT  name, role
FROM employees
WHERE building IS NULL

/* 2. Find the names of the buildings that hold no employees */
SELECT DISTINCT building_name
FROM buildings
LEFT JOIN employees ON building_name = building
WHERE role IS NULL;
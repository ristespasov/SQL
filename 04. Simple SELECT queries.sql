/*
Table: north_american_cities

| city                 | country         | population | latitude  | longitude   |
|----------------------|-----------------|------------|-----------|-------------|
| Guadalajara          | Mexico          | 1,500,800  | 20.659699 | -103.349609 |
| Toronto              | Canada          | 2,795,060  | 43.653226 | -79.383184  |
| Houston              | United States   | 2,195,914  | 29.760427 | -95.369803  |
| New York             | United States   | 8,405,837  | 40.712784 | -74.005941  |
| Philadelphia         | United States   | 1,553,165  | 39.952584 | -75.165222  |
| Havana               | Cuba            | 2,106,146  | 23.054070 | -82.345189  |
| Mexico City          | Mexico          | 8,555,500  | 19.432608 | -99.133208  |
| Phoenix              | United States   | 1,513,367  | 33.448377 | -112.074037 |
| Los Angeles          | United States   | 3,884,307  | 34.052234 | -118.243685 |
| Ecatepec de Morelos  | Mexico          | 1,742,000  | 19.601841 | -99.050674  |
| Montreal	           | Canada	         | 1717767	  | 45.501689 | -73.567256  |
| Chicago	           | United States   | 2718782	  | 41.878114 | -87.629798  |
*/

/* 1. List all the Canadian cities and their populations */
SELECT city, population
FROM north_american_cities
WHERE country = 'Canada'

/* 2. Order all the cities in the United States by their latitude from north to south */
SELECT city, latitude
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC

/* 3. List all the cities west of Chicago, ordered from west to east */
SELECT city
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude DESC

/* 4. List the two largest cities in Mexico (by population) */
SELECT city
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2

/* 5. List the third and fourth largest cities (by population) in the United States and their population */
SELECT city
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2
OFFSET 2
/* Table:
-------------------------------
             CITY             
---------------+---------------
     Fiel      |     Type
---------------+---------------
 ID            | NUMBER
---------------+---------------
 NAME          | VARCHAR2(17)
---------------+---------------
 COUNTRYCODE   | VARCHAR2(3)
---------------+---------------
 DISTRICT      | VARCHAR2(20)
---------------+---------------
 POPULATION    | NUMBER
---------------+---------------
*/

/* Revising the Select Query I
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
*/
SELECT * FROM city WHERE countrycode = 'USA' AND population > 100000;

/* Revising the Select Query II
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
*/
SELECT name FROM city WHERE countrycode = 'USA' AND population > 120000;

/* Select All
Query all columns (attributes) for every row in the CITY table.
*/
SELECT * FROM city;

/* Select By ID
Query all columns for a city in CITY with the ID 1661.
*/
SELECT * FROM city WHERE id = 1661;

/* Japanese Cities' Attributes
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/
SELECT * FROM city WHERE countrycode = 'JPN';

/* Japanese Cities' Names
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/
SELECT NAME FROM city WHERE countrycode = 'JPN';


/* Table:
-------------------------------
            STATION             
---------------+---------------
     Field     |     Type
---------------+---------------
 ID            | NUMBER
---------------+---------------
 CITY          | VARCHAR2(21)
---------------+---------------
 STATE         | VARCHAR2(2)
---------------+---------------
 LAT_N	       | NUMBER
---------------+---------------
 LONG_W        | NUMBER
---------------+---------------
*/

/* Weather Observation Station 1
Query a list of CITY and STATE from the STATION table.
*/
SELECT city, state FROM station;

/* Weather Observation Station 3
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
*/
SELECT DISTINCT city FROM station WHERE MOD(id, 2) = 0;

/* Weather Observation Station 4
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. 
The query returns 1, because total_number_of_record - number_of_unique_city_names = 3 - 2 = 1.
*/
SELECT COUNT(city) - COUNT(DISTINCT city) FROM station;

/* Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/
SELECT city, LENGTH(city) FROM station ORDER BY LENGTH(city), city LIMIT 1;
SELECT city, LENGTH(city) FROM station ORDER BY LENGTH(city) DESC, city LIMIT 1;

/* Weather Observation Station 6
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
*/
SELECT DISTINCT city FROM station WHERE city REGEXP '^[aeiou]';

/* Weather Observation Station 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/
SELECT DISTINCT city FROM station WHERE city REGEXP '[aeiou]$';

/* Weather Observation Station 8
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/
SELECT city FROM station WHERE city REGEXP '^[aeiou].*[aeiou]$';

/* Weather Observation Station 9
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '^[aeiou]'; 

/* Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '[aeiou]$';

/* Weather Observation Station 11
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT city FROM station WHERE city NOT REGEXP '^[aeiou].*[aeiou]$';

/* Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
*/
SELECT DISTINCT city FROM station WHERE city REGEXP '^[^aeiou].*[^aeiou]$';


/* Table:
-------------------------------
            STUDENTS             
---------------+---------------
     Field     |     Type
---------------+---------------
 ID            | INTEGER
---------------+---------------
 NAME          | STRING
---------------+---------------
 MARKS         | INTEGER
---------------+---------------
*/

/* Higher Than 75 Marks
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/
SELECT name FROM students WHERE marks > 75 ORDER BY RIGHT(Name, 3), ID;


/* Table:
-------------------------------
            EMPLOYEE             
---------------+---------------
     Field     |     Type
---------------+---------------
 EMPLOYEE_ID   | INTEGER
---------------+---------------
 NAME          | STRING
---------------+---------------
 MONTHS        | INTEGER
---------------+---------------
 SALARY        | INTEGER
---------------+---------------
*/

/* Employee Names
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/
SELECT name FROM employee ORDER BY name;

/* Employee Salaries
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary 
greater than $2000 per month who have been employees for less than  months. Sort your result by ascending employee_id.
*/
SELECT name FROM employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id;

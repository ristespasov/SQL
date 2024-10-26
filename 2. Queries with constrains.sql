/* 1. Find the movie with a row id of 6 */
SELECT *
FROM movies
WHERE id = 6

/* 2. Find the movies released in the years between 2000 and 2010 */
SELECT *
FROM movies
WHERE year > 2000 AND year < 2010

/* 3. Find the movies not released in the years between 2000 and 2010 */
SELECT *
FROM movies
WHERE year < 2000 OR year > 2010

/* 4. Find the first 5 Pixar movies and their release year */
SELECT *
FROM movies
ORDER BY year
LIMIT 5

/* 5. Find all the Toy Story movies */
SELECT *
FROM movies
WHERE title
LIKE 'Toy Story%'

/* 6. Find all the movies directed by John Lasseter */
SELECT *
FROM movies
WHERE director = 'John Lasseter'

/* 7. Find all the movies (and director) not directed by John Lasseter */
SELECT *
FROM movies
WHERE director != 'John Lasseter'

/* 8. Find all the WALL-* movies */
SELECT *
FROM movies
WHERE title
LIKE 'WALL-%'
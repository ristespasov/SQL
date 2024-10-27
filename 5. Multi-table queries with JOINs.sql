/*
Table: movies

| id  | title               | tirector       | year | length_minutes   |
| --- | ------------------- | -------------- | ---- | ---------------- |
| 1   | Toy Story           | John Lasseter  | 1995 | 81               |
| 2   | A Bug's Life        | John Lasseter  | 1998 | 95               |
| 3   | Toy Story 2         | John Lasseter  | 1999 | 93               |
| 4   | Monsters, Inc.      | Pete Docter    | 2001 | 92               |
| 5   | Finding Nemo        | Andrew Stanton | 2003 | 107              |
| 6   | The Incredibles     | Brad Bird      | 2004 | 116              |
| 7   | Cars                | John Lasseter  | 2006 | 117              |
| 8   | Ratatouille         | Brad Bird      | 2007 | 115              |
| 9   | WALL-E              | Andrew Stanton | 2008 | 104              |
| 10  | Up                  | Pete Docter    | 2009 | 101              |
| 11  | Toy Story 3         | Lee Unkrich    | 2010 | 103              |
| 12  | Cars 2              | John Lasseter  | 2011 | 120              |
| 13  | Brave               | Brenda Chapman | 2012 | 102              |
| 14  | Monsters University | Dan Scanlon    | 2013 | 110              |


Table: boxoffice

| movie_id | rating | domestic_sales     | international_sales  |
|----------|--------|--------------------|----------------------|
| 5        | 8.2    | 380,843,261        | 555,900,000          |
| 14       | 7.4    | 268,492,764        | 475,066,843          |
| 8        | 8.0    | 206,445,654        | 417,277,164          |
| 12       | 6.4    | 191,452,396        | 368,400,000          |
| 3        | 7.9    | 245,852,179        | 239,163,000          |
| 6        | 8.0    | 261,441,092        | 370,001,000          |
| 9        | 8.5    | 223,808,164        | 297,503,696          |
| 11       | 8.4    | 415,004,880        | 648,167,031          |
| 1        | 8.3    | 191,796,233        | 170,162,503          |
| 7        | 7.2    | 244,082,982        | 217,900,167          |
| 10       | 8.3    | 293,004,164        | 438,338,580          |
| 4        | 8.1    | 289,916,256        | 272,900,000          |
| 2        | 7.2    | 162,798,565        | 200,600,000          |
| 13       | 7.2    | 237,283,207        | 301,700,000          |
*/

/* 1. Find the domestic and international sales for each movie */
SELECT title, domestic_sales, international_sales
FROM boxoffice
INNER JOIN movies ON boxoffice.movie_id = movies.id

/* 2. Show the sales numbers for each movie that did better internationally rather than domestically */
SELECT title, domestic_sales, international_sales
FROM boxoffice
INNER JOIN movies ON boxoffice.movie_id = movies.id
WHERE international_sales > domestic_sales

/* 3. List all the movies by their ratings in descending order */
SELECT title, rating
FROM boxoffice
INNER JOIN movies ON boxoffice.movie_id = movies.id
ORDER BY rating DESC
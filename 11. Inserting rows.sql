/*
Table: movies

| id  | title               | director       | year | length_minutes   |
| --- | ------------------- | -------------- | ---- | ---------------- |
| 1   | Toy Story           | John Lasseter  | 1995 | 81               |
| 2   | A Bug's Life        | John Lasseter  | 1998 | 95               |
| 3   | Toy Story 2         | John Lasseter  | 1999 | 93               |


Table: boxoffice

| movie_id | rating | domestic_sales   | international_sales |
|----------|--------|------------------|---------------------|
| 3        | 7.9    | 245852179        | 239163000           |
| 1        | 8.3    | 191796233        | 170162503           |
| 2        | 7.2    | 162798565        | 200600000           |
*/


/* 1. Add the studio's new production, Toy Story 4 to the list of movies (you can use any director). */
INSERT INTO movies
VALUES (4, "Toy Story 4", "John Lasseter", 2012, 100)

/* 2. Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table. */
INSERT INTO boxoffice
VALUES (4, 8.7, 340000000, 270000000)
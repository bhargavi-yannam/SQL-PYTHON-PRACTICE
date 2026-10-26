--Find all the Toy Story movies--
SELECT Title 
FROM Movies 
WHERE Title LIKE 'Toy%';

--Find all the movies directed by John Lasseter---
SELECT Title FROM Movies WHERE Director = 'John Lasseter';


--Find all the movies (and director) not directed by John Lasseter---
SELECT Title,Director FROM Movies WHERE Director!='John Lasseter';


-----Find all the WALL-* movies--
SELECT Title FROM Movies WHERE Title LIKE 'WALL-%';


--List all directors of Pixar movies (alphabetically), without duplicates---
SELECT DISTINCT Director FROM Movies ORDER BY Director ASC;

--List the last four Pixar movies released (ordered from most recent to least)--
SELECT * FROM Movies ORDER BY ReleaseYear DESC LIMIT 4;


--List the first five Pixar movies sorted alphabetically---
SELECT * 
FROM Movies 
ORDER BY Title ASC 
LIMIT 5;


--List the next five Pixar movies sorted alphabetically---
SELECT * 
FROM Movies 
ORDER BY Title ASC 
LIMIT 5 OFFSET 5;


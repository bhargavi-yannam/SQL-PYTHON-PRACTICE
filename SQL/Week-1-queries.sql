--------------SELECT,WHERE,DISTINCT,SORTING,CASE-----------------
Create table Movies
(
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    Director VARCHAR(50),
    ReleaseYear INT,
    Length_minutes INT
);

---ALL movies are pixar's---
INSERT INTO Movies (MovieID, Title, Director, ReleaseYear, Length_minutes) 
VALUES 
    (1, 'Toy Story', 'John Lasseter', 1995, 81),
    (2, 'A Bug''s Life', 'John Lasseter', 1998, 95),
    (3, 'Toy Story 2', 'John Lasseter', 1999, 93),
    (4, 'Monsters, Inc.', 'Pete Docter', 2001, 92),
    (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
    (6, 'The Incredibles', 'Brad Bird', 2004, 116),
    (7, 'Cars', 'John Lasseter', 2006, 117),
    (8, 'Ratatouille', 'Brad Bird', 2007, 115),
    (9, 'WALL-E', 'Andrew Stanton', 2008, 104),
    (10, 'Up', 'Pete Docter', 2009, 101),
    (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
    (12, 'Cars 2', 'John Lasseter', 2011, 120),
    (13, 'Brave', 'Brenda Chapman', 2012, 102),
    (14, 'Monsters University', 'Dan Scanlon', 2013, 110);

SELECT * FROM Movies;


---Find the title of each film----

SELECT Title FROM Movies;

--Find the director of each film--
SELECT Director FROM Movies;


--Find the title and director of each film--
SELECT Title,Director FROM Movies;

--Find the title and year of each film--
SELECT Title,ReleaseYear FROM Movies;

--Find all the information about each film--
SELECT * FROM Movies;

--Find the title of the movie with the id 6
SELECT Title FROM Movies WHERE MovieID=6;


--Find the title of the movie with the year 2000 and 2010
SELECT Title FROM Movies WHERE ReleaseYear BETWEEN 2000 AND  2010;


---Find the movies not released in the years between 2000 and 2010--
SELECT Title FROM Movies WHERE ReleaseYear NOT BETWEEN 2000 AND 2010;


--Find the first 5 Pixar movies and their release year--
SELECT Title,ReleaseYear FROM Movies ORDER BY ReleaseYear ASC LIMIT 5;

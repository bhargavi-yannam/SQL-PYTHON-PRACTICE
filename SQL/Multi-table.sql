CREATE TABLE Movies1 (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    Director VARCHAR(50),
    ReleaseYear INT,
    Length_minutes INT
);

INSERT INTO Movies1 (MovieID, Title, Director, ReleaseYear, Length_minutes) 
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

SELECT * FROM Movies1;


CREATE TABLE Boxoffice (
    MovieID INT PRIMARY KEY,
    Rating VARCHAR(10),
    Domestic_sales INT,
    International_sales INT,
    FOREIGN KEY (MovieID) REFERENCES Movies1(MovieID)
);


INSERT INTO Boxoffice (MovieID, Rating, Domestic_sales, International_sales)
VALUES 
    (5, '8.2', 380843261, 555900000),
    (14, '7.4', 268492764, 475066843),
    (8, '8.1', 206445654, 417277164),
    (12, '6.4', 191452396, 368400000),
    (3, '7.9', 245852179, 239163000),
    (6, '8.0', 261441092, 370001000),
    (9, '8.5', 223808164, 297503696),
    (11, '8.4', 415004880, 648167031),
    (1, '8.3', 191796233, 170162503),
    (7, '7.2', 244082982, 217900167),
    (10, '8.3', 293004164, 438338580),
    (4, '8.1', 289916256, 272900000),
    (2, '7.2', 162798565, 200600000),
    (13, '7.2', 237283207, 301700000);
    
SELECT * FROM Boxoffice;



---Find the domestic and international sales for each movie--
SELECT Title, Domestic_sales, International_sales
FROM Movies1
INNER JOIN Boxoffice
  ON Movies1.MovieID = Boxoffice.MovieID;



---Show the sales numbers for each movie that did better internationally rather than domestically---
SELECT Movies1.Title, Boxoffice.International_sales, Boxoffice.Domestic_sales FROM Movies1 
INNER JOIN Boxoffice ON Movies1.MovieID = Boxoffice.MovieID 
WHERE Boxoffice.International_sales > Boxoffice.Domestic_sales;



--List all the movies by their ratings in descending order--
SELECT Movies1.Title, Rating FROM Movies1
INNER JOIN Boxoffice ON Movies1.MovieID = Boxoffice.MovieID
ORDER BY Rating DESC;
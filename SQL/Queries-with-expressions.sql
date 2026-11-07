--List all movies and their combined sales in millions of dollars--

SELECT Title,
((international_sales + domestic_sales) / 1000000) AS combined_sales_millions
FROM Movies1 
JOIN Boxoffice  
ON Movies1.MovieID = Boxoffice.MovieID;


---List all movies and their ratings in percent--
SELECT Title, ((Rating / 10 ) * 100) As rating_percentage
FROM Movies1
JOIN Boxoffice
ON Movies1.MovieID = Boxoffice.MovieID;

---List all movies that were released on even number years--
SELECT Title,ReleaseYear
FROM Movies1
WHERE ReleaseYear % 2 =0;

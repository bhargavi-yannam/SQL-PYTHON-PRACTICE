CREATE TABLE Buildings(
    Building_name VARCHAR(50),
    Capacity VARCHAR(10)
);


INSERT INTO Buildings(Building_name, Capacity)
VALUES
    ('1e', 24),
    ('1w', 32),
    ('2e', 16),
    ('2w', 20);

SELECT * FROM Buildings;


CREATE TABLE Employees(
    Role VARCHAR(50),
    Name VARCHAR(50),
    Building VARCHAR(50),
    Years_employed INT,
    FOREIGN KEY (Building) REFERENCES Buildings(Building_name)
);


INSERT INTO Employees(Role, Name, Building, Years_employed)
VALUES
    ('Engineer', 'Becky A.', '1e', 4),
    ('Engineer', 'Dan B.', '1e', 2),
    ('Engineer', 'Sharon F.', '1e', 6),
    ('Engineer', 'Dan M.', '1e', 4),
    ('Engineer', 'Malcom S.', '1e', 1),
    ('Artist', 'Tylar S.', '2w', 2),
    ('Artist', 'Sherman D.', '2w', 8),
    ('Artist', 'Jakob J.', '2w', 6),
    ('Artist', 'Lillia A.', '2w', 7),
    ('Artist', 'Brandon J.', '2w', 7),
    ('Manager', 'Scott K.', '1e', 9),
    ('Manager', 'Shirlee M.', '1e', 3),
    ('Manager', 'Daria O.', '2w', 6);


SELECT * FROM Employees;



--Find the list of all buildings that have employees--
SELECT DISTINCT Building_name FROM Buildings 
JOIN Employees ON Buildings.Building_name = Employees.Building;



--Find the list of all buildings and their capacity--
SELECT DISTINCT Building_name,Capacity FROM Buildings;



--List all buildings and the distinct employee roles in each building (including empty buildings)--
SELECT DISTINCT Building_name,Employees.Role FROM Buildings
LEFT JOIN Employees ON Buildings. Building_name = Employees.Building;




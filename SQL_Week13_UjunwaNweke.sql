CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE EmplyeeDemographics (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(50)
);

INSERT INTO EmplyeeDemographics
VALUES (1001, 'Jim', 'Harper', 30, 'Male');


Using Select & Where
SELECT *
FROM EmplyeeDemographics
WHERE Age >30 OR Gender = 'Male'

Using Order By
--SELECT Gender,Count(Gender) AS CountGender
--FROM EmplyeeDemographics
--WHERE Age >30
--GROUP BY Gender, Age
--ORDER BY CountGender

SELECT *
FROM EmplyeeDemographics
ORDER BY Age DESC, Gender DESC
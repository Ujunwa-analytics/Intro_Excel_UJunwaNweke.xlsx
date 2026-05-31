-- JOIN QUERY

SELECT *
FROM SQLTutorial.dbo.EmplyeeDemographics 
INNER JOIN SQLTutorial.dbo.EmployeeSalary
    ON EmplyeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;


-- AGGREGATION QUERY

SELECT
    JobTitle,
    AVG(Salary) AS AverageSalary,
    COUNT(*) AS TotalEmployees
FROM EmployeeSalary
GROUP BY JobTitle;


-- UPDATE RECORD

UPDATE EmployeeSalary
SET Salary = 48000
WHERE EmployeeID = 1003;


-- VERIFY UPDATE

SELECT *
FROM EmployeeSalary
WHERE EmployeeID = 1003;


-- DELETE RECORD

DELETE FROM WareHouseEmployeeDemographics
WHERE EmployeeID = 1052;


-- VERIFY DELETE

SELECT *
FROM WareHouseEmployeeDemographics;
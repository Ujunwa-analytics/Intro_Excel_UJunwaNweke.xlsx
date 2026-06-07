-- SUBQUERY

SELECT *
FROM EmployeeSalary
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM EmployeeSalary
);


-- SUBQUERY

SELECT *
FROM EmployeeDemographics
WHERE EmployeeID IN
(
    SELECT EmployeeID
    FROM EmployeeSalary
    WHERE Salary > 45000
);


-- WINDOW FUNCTIONS

SELECT
    EmployeeID,
    JobTitle,
    Salary,
    ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
FROM EmployeeSalary;


SELECT
    EmployeeID,
    JobTitle,
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM EmployeeSalary;


SELECT
    EmployeeID,
    JobTitle,
    Salary,
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseSalaryRank
FROM EmployeeSalary;


-- TEMP TABLE 

DROP TABLE IF EXISTS #Temp_Employee;

CREATE TABLE #Temp_Employee
(
    EmployeeID INT,
    JobTitle VARCHAR(100),
    Salary INT
);

INSERT INTO #Temp_Employee
SELECT
    EmployeeID,
    JobTitle,
    Salary
FROM EmployeeSalary;

SELECT *
FROM #Temp_Employee;
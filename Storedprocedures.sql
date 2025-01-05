

CREATE PROCEDURE TEST 
AS
Select *
FROM EmployeeDemographics1


EXEC TEST


CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #Temp_Employee(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM [SQL Tutorial]..[EmployeeDemographics1] emp
JOIN [SQL Tutorial]..[EmployeeSalary] sal
    ON emp.EmployeeID = sal.EmployeeID
	group by JobTitle

Select *
FROM #Temp_Employee


EXEC Temp_Employee@JobTitle = 'Salesman'





--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Slary int
--)


INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)


INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial]..[EmployeeSalary]


CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)


INSERT INTO #Temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM [SQL Tutorial]..[EmployeeDemographics1] emp
JOIN [SQL Tutorial]..[EmployeeSalary] sal
    ON emp.EmployeeID = sal.EmployeeID
	group by JobTitle

SELECT *
FROM #Temp_Employee2

WITH CTE_Employee as (
SELECT FirstName, LastName, Gender, Salary
,COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
,AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Tutorial]..[EmployeeDemographics1] dem
JOIN  [SQL Tutorial]..[EmployeeSalary] sal
    ON dem.EmployeeID = sal.EmployeeID 
	WHERE Salary > '45000'
	)
	Select FirstName, AvgSalary
	FROM CTE_Employee

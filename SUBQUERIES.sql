

Select *
FROM EmployeeSalary

--Subquery in Select
Select EmployeeID, Salary,(Select AVG(Salary) From EmployeeSalary) AS ALLAVERAGESALARY
FROM EmployeeSalary



--Subquery in Partiton
Select EmployeeID, Salary, AVG(Salary) over () AS ALLAVERAGESALARY
FROM EmployeeSalary



--Subquery In Where
Select EmployeeID, Salary,JobTitle
FROM EmployeeSalary
Where EmployeeID in (
      SELECT EmployeeID
	  FROM Employeedemographics1
	  Where Age > 30)


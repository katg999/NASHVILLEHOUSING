CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50),
)

INSERT INTO EmployeeErrors Values
('1001', 'Jimbo', 'halbert'),
('1002','Jimbo', 'halbert'),
('1003','katende','Brian')

Select *
FROM EmployeeErrors


--Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

Select EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

Select EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--Using Replace

Select LastName, REPLACE(LastName, 'Brian', '') as LastNameFixed
FROM EmployeeErrors

--Using Substring

--Select SUBSTRING(FirstName,3,3)
--FROM EmployeeErrors

--Select err.FirstName, dem.FirstName
--FROM EmployeeErrors err
--JOIN EmployeeDemographics dem
--    ON  rr.FirstName = dem.FirstName


--USING UPPER AND LOWER


Select FirstName, LOWER(FirstName)
FROM EmployeeErrors

Select FirstName, UPPER(FirstName)
FROM EmployeeErrors
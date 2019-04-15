USE AdventureWorks2012
GO

SELECT
	d.GroupName,
	COUNT(1) As EmpCount
FROM
		HumanResources.Employee e
	INNER JOIN
		HumanResources.EmployeeDepartmentHistory edh
		ON e.BusinessEntityID = edh.BusinessEntityID
	INNER JOIN
		HumanResources.Department d
		ON edh.DepartmentID = d.DepartmentID
GROUP BY
	d.GroupName
USE AdventureWorks2012
GO

SELECT
	*
FROM
	Sales.SalesOrderHeader
WHERE
	OrderDate Between '6/1/2005' And '9/1/2005'
	AND (SalesPersonID = 282
		Or TerritoryID = 6)
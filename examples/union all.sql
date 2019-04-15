USE AdventureWorks2012
GO

SELECT
	*
FROM
	Production.Location
WHERE
	Name Like 'F%'

UNION ALL

SELECT
	*
FROM
	Production.Location
WHERE
	CostRate = 0
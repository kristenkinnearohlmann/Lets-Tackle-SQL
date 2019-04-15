USE AdventureWorks2012
GO

/* eliminates duplicate records between sets, keeping
only one unique row (removes the second copy of
Finished Goods Storage */

SELECT
	*
FROM
	Production.Location
WHERE
	Name Like 'F%'

UNION 

SELECT
	*
FROM
	Production.Location
WHERE
	CostRate = 0
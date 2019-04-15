USE AdventureWorks2012
GO

IF OBJECT_ID('tempdb..##days31') Is Not Null
DROP TABLE ##days31

if OBJECT_ID('tempdb..##months') Is Not Null
DROP TABLE ##months

SELECT
	*
INTO ##days31
FROM
	(
		(SELECT 1 As DayNbr) UNION ALL
		(SELECT 2 As DayNbr) UNION ALL
		(SELECT 3 As DayNbr) UNION ALL
		(SELECT 4 As DayNbr) UNION ALL
		(SELECT 5 As DayNbr) UNION ALL
		(SELECT 6 As DayNbr) UNION ALL
		(SELECT 7 As DayNbr) UNION ALL
		(SELECT 8 As DayNbr) UNION ALL
		(SELECT 9 As DayNbr) UNION ALL
		(SELECT 10 As DayNbr) UNION ALL
		(SELECT 11 As DayNbr) UNION ALL
		(SELECT 12 As DayNbr) UNION ALL
		(SELECT 13 As DayNbr) UNION ALL
		(SELECT 14 As DayNbr) UNION ALL
		(SELECT 15 As DayNbr) UNION ALL
		(SELECT 16 As DayNbr) UNION ALL
		(SELECT 17 As DayNbr) UNION ALL
		(SELECT 18 As DayNbr) UNION ALL
		(SELECT 19 As DayNbr) UNION ALL
		(SELECT 20 As DayNbr) UNION ALL
		(SELECT 21 As DayNbr) UNION ALL
		(SELECT 22 As DayNbr) UNION ALL
		(SELECT 23 As DayNbr) UNION ALL
		(SELECT 24 As DayNbr) UNION ALL
		(SELECT 25 As DayNbr) UNION ALL
		(SELECT 26 As DayNbr) UNION ALL
		(SELECT 27 As DayNbr) UNION ALL
		(SELECT 28 As DayNbr) UNION ALL
		(SELECT 29 As DayNbr) UNION ALL
		(SELECT 30 As DayNbr) UNION ALL
		(SELECT 31 As DayNbr)
	) As DaysRaw

SELECT
	*
INTO ##months
FROM 
	(
		(SELECT 'Jan' As MonthName) UNION ALL
		(SELECT 'Mar' As MonthName) UNION ALL
		(SELECT 'May' As MonthName) UNION ALL
		(SELECT 'Jul' As MonthName) UNION ALL
		(SELECT'Aug' As MonthName) UNION ALL
		(SELECT 'Oct' As MonthName) UNION ALL
		(SELECT 'Dec' As MonthName)
	) As MonthsRaw

SELECT
	m.MonthName,
	d.DayNbr
FROM
		##days31 d
	CROSS JOIN
		##months m
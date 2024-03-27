------Join on Tables

SELECT T1.City,
		T1.State,
		T1.Postcode,
		T1.Suburb 
FROM [dbo].[AUS_Post_suburb] as T1
JOIN [dbo].[NSW_PropertyMedainValue] AS T2
	  ON T1.Postcode = T2.Postcode
	 AND T1.Suburb = T2.Suburb



SELECT * FROM [dbo].[AUS_Post_suburb]

----Number of Cities in Each State----


SELECT COUNT(City) AS CityCount,state
FROM [dbo].[AUS_Post_suburb]
GROUP BY State
ORDER BY CityCount DESC


-----Number of Unique Postcodes and Suburbs in each city---


SELECT COUNT (DISTINCT Postcode) as DistinctPostcode,
	   COUNT (DISTINCT Suburb) as DistinctSuburb,City
FROM [dbo].[AUS_Post_suburb]
GROUP BY City
ORDER BY DistinctPostcode, DistinctSuburb


------Average Property Median Value by Suburb------------

SELECT AVG(Property_Median_Value) as MedianValue,Suburb
FROM [dbo].[NSW_PropertyMedainValue]
GROUP BY Suburb


-------Average Property Median Value by Postcode-----


SELECT AVG(Property_Median_Value) as MedianValue,Postcode
FROM [dbo].[NSW_PropertyMedainValue]
GROUP BY Postcode



---------PostCode and Suburb Together --------

SELECT AVG(Property_Median_Value) as MedianValue,Postcode, Suburb
FROM [dbo].[NSW_PropertyMedainValue]
GROUP BY Postcode,Suburb
ORDER BY Postcode


-------WHERE CONDITION---------


SELECT *
FROM [dbo].[NSW_PropertyMedainValue]

DELETE FROM [dbo].[NSW_PropertyMedainValue]
WHERE Property_Median_Value Is Null


SELECT AVG(Property_Median_Value) as MedianValue,Postcode, Suburb
FROM [dbo].[NSW_PropertyMedainValue]
GROUP BY Postcode,Suburb
ORDER BY Postcode


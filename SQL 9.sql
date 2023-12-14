--This query will count the number of distinct species in each year 
-- and display the result in a table with two columns: year and species_count.

SELECT year, COUNT (DISTINCT species) AS species_count
FROM Rodents_Survey
GROUP BY year;
-- Write a query that returns the species, and the weight of every individual captured
-- at the site

-- This query will calculate the average weight of each species in each year and 
-- display the result in a table with three columns: year, species, and average_weight.

SELECT year, species, AVG (weight) AS average_weight
FROM Rodents_Survey
GROUP BY year, species;

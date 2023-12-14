-- Let’s try to combine what we’ve learned so far in a single query. Using the surveys table write
-- a query to display the three date fields, species ID, and weight in kilograms (rounded to two
-- decimal places), for rodents captured in 1999, ordered alphabetically by the species ID.


-- Display the three date fields, species, and weight in kilograms (rounded to two decimal places), 
-- for rodents captured in 2019, ordered alphabetically by the species

SELECT day, month, year, species, ROUND (weight / 1000.0, 2) AS weight_kg
FROM Rodents_Survey
WHERE year = 2019
ORDER BY species;

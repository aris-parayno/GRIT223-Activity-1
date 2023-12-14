-- Display the three date fields, species, and weight in kilograms (rounded to two decimal places), 
-- for rodents captured in 2019, ordered alphabetically by the species

SELECT day, month, year, species, ROUND (weight / 1000.0, 2) AS weight_kg
FROM Rodents_Survey
WHERE year = 2019
ORDER BY species;
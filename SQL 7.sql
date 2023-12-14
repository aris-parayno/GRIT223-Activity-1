-- Select the year, species, and weight columns from the table Rodents_Survey
SELECT
  year,
  species,
  -- Convert the weight from grams to kilograms by dividing by 1000
  weight / 1000.0 AS weight_in_kg
FROM
  Rodents_Survey
-- Order the result set by the weight_in_kg column in descending order
ORDER BY
  weight_in_kg DESC;
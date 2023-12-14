-- Write a query that returns the day, month, year, species, and weight (in kg) for individuals
-- caught on Plot 1 that weigh more than 75 g.

-- Select the day, month, year, species and weight columns from the table Rodents_Survey
-- where the weight is greater than 75 g
SELECT
  day,
  month,
  year,
  species,
  -- Convert the weight from grams to kilograms by dividing by 1000
  weight / 1000.0 AS weight_in_kg
FROM
  Rodents_Survey
WHERE
  weight > 75;

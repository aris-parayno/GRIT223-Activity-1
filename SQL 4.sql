-- Write a query that returns the year, month, day, species and weight in mg.

-- Select the year, month, day, species and weight columns from the table Rodents_Survey
SELECT
  year,
  month,
  day,
  species,
  -- Convert the weight from grams to milligrams by multiplying by 1000
  weight * 1000 AS weight_in_mg
FROM
  Rodents_Survey;

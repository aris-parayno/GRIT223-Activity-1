-- Write a query that returns day, month, year, species for individuals caught in January, May
-- and July.

-- Select the day, month, year, species columns from the table Rodents_Survey
-- where the month is 1, 5, or 7
SELECT
  day,
  month,
  year,
  species
FROM
  Rodents_Survey
WHERE
  month IN (1, 5, 7);

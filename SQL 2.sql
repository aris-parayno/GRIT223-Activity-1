-- Populate the table with 100 random records
-- SQLite version 3.12 does not support the ELT function
-- You need to use the CASE expression instead
INSERT INTO Rodents_Survey
SELECT
  ABS(RANDOM() % (2023 - 2018 + 1)) + 2018 AS year, -- Random year between 2018 and 2023
  ABS(RANDOM() % 12) + 1 AS month, -- Random month between 1 and 12
  ABS(RANDOM() % 28) + 1 AS day, -- Random day between 1 and 28
  CASE ABS(RANDOM() % 4) + 1 -- Random species from the list
    WHEN 1 THEN 'mouse'
    WHEN 2 THEN 'rat'
    WHEN 3 THEN 'squirrel'
    WHEN 4 THEN 'hamster'
  END AS species,
  ABS(RANDOM() % 500) + 1 AS weight -- Random weight between 1 and 500 grams
FROM
  (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL
   SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) t1, -- 10 rows
  (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL
   SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) t2; -- 10 rows
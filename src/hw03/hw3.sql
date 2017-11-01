-- 1. List all state names and their 2-letter codes.
SELECT name, statecode FROM states;

-- 2. Write a query to report the following information for all counties whose names start with "Prince".
SELECT name, statecode, population_1950, population_2010 FROM counties WHERE name LIKE 'Prince%';

-- 3. Write a single query to list only the population in year 2010 for the state represented by Sen. Richard Lugar.
SELECT name, population_2010 FROM states WHERE statecode=(SELECT statecode FROM senators WHERE name='Richard Lugar');

-- 4. Write a single query to report only the total number of the counties in 'Maryland'. The query should not hard-code the state code for Maryland (join the two tables in the WHERE clause).
SELECT COUNT(*) FROM counties INNER JOIN states ON statecode = statecode WHERE 

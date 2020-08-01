-- QUESTION 1. Select the code which gives the name of countries beginning with U
SELECT name
  FROM world
 WHERE name LIKE 'U%'

-- QUESTION 2. Select the code which shows just the population of United Kingdom?
SELECT population
  FROM world
 WHERE name = 'United Kingdom'

-- QUESTION 3. Select the answer which shows the problem with this SQL code - the intended result should be the continent of France:
 SELECT continent 
   FROM world 
  WHERE 'name' = 'France'

-- ANSWER: 'name' should be name

-- QUESTION 4. Select the result that would be obtained from the following code:
 SELECT name, population / 10 
  FROM world 
 WHERE population < 10000

-- ANSWER: Nauru	990

-- QUESTION 5. Select the code which would reveal the name and population of countries in Europe and Asia
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

-- QUESTION 6. Select the code which would give two rows
SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

-- QUESTION 7. Select the result that would be obtained from this code:
SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000
-- ANSWER: Brazil
--         Colombia


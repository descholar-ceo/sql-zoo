-- QUESTION 1
SELECT name, continent, population FROM world

-- QUESTION 2
SELECT name FROM world
WHERE population >= 200000000

-- QUESTION 3
SELECT name, gdp/population FROM world WHERE population >= 200000000

-- QUESTION 4
SELECT name, population/1000000 from world WHERE continent = 'South America'

-- QUESTION 5
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')

-- QUESTION 6
SELECT name from world WHERE name like 'United%'

-- QUESTION 7
SELECT name, population, area FROM world WHERE area>=3000000 OR population >= 250000000


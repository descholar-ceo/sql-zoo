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

-- QUESTION 8
SELECT name, population, area FROM world WHERE area >= 3000000 XOR population >= 250000000

-- QUESTION 9
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2) FROM world WHERE continent='South America'

-- QUESTION 10
SELECT name, ROUND(gdp/population/1000)*1000 FROM world where gdp>=1000000000000

-- QUESTION 11
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)

-- QUESTION 12
SELECT name, capital FROM world WHERE LEFT(name,1) =  LEFT(capital, 1) AND name <> capital


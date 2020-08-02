-- QUESTION 1. Show the total population of the world.
SELECT SUM(population)
FROM world

-- QUESTION 2. List all the continents - just once each.
SELECT DISTINCT(continent) FROM world

-- QUESTION 3. Give the total GDP of Africa
SELECT SUM(gdp) FROM world WHERE continent='Africa'

-- QUESTION 4. How many countries have an area of at least 1000000
SELECT COUNT(name) FROM world WHERE area>=1000000

-- QUESTION 5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')
SELECT SUM(population) FROM world WHERE name IN ('Estonia','Latvia','Lithuania')

--QUESTION 6. For each continent show the continent and number of countries.
SELECT DISTINCT(continent) a, (SELECT COUNT(name) FROM world WHERE continent=a) FROM world

--QUESTION 7. For each continent show the continent and number of countries with populations of at least 10 million.
SELECT DISTINCT(continent) a, (SELECT COUNT(name) FROM world WHERE continent = a AND population >= 10000000) FROM world

-- QUESTION 8. List the continents that have a total population of at least 100 million.
SELECT DISTINCT(continent) FROM world GROUP BY continent HAVING SUM(population)>=100000000

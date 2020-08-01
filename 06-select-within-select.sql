-- QUESTION 1. List each country name where the population is larger than that of 'Russia'.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- QUESTION 2.Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
SELECT name
FROM world
WHERE continent='Europe'
AND gdp/population>(SELECT gdp/population FROM world WHERE name='United Kingdom')

--QUESTION 3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
SELECT name, continent
FROM world
WHERE 
continent = (SELECT continent FROM world WHERE name = 'Argentina') 
OR continent = (SELECT continent FROM world WHERE name = 'Australia')
ORDER BY name

-- QUESTION 4. Which country has a population that is more than Canada but less than Poland? Show the name and the population.
SELECT name, population
FROM world
WHERE population>(SELECT population FROM world WHERE name='Canada') 
AND population < (SELECT population FROM world WHERE name='Poland')
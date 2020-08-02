-- QUESTION 1  Observe the result of running this SQL command to show the name, continent and population of all countries.
SELECT name, continent, population FROM world

-- QUESTION 2  Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT name FROM world
WHERE population >= 200000000

-- QUESTION 3  Give the name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name, gdp/population FROM world WHERE population >= 200000000

-- QUESTION 4  Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.
SELECT name, population/1000000 from world WHERE continent = 'South America'

-- QUESTION 5  Show the name and population for France, Germany, Italy
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')

-- QUESTION 6  Show the countries which have a name that includes the word 'United'
SELECT name from world WHERE name like 'United%'

-- QUESTION 7  Show the countries that are big by area or big by population. Show name, population and area.
SELECT name, population, area FROM world WHERE area>=3000000 OR population >= 250000000

-- QUESTION 8  Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
SELECT name, population, area FROM world WHERE area >= 3000000 XOR population >= 250000000

-- QUESTION 9  Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2) FROM world WHERE continent='South America'

-- QUESTION 10  Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.
SELECT name, ROUND(gdp/population/1000)*1000 FROM world where gdp>=1000000000000

-- QUESTION 11 Show the name and capital where the name and the capital have the same number of characters.
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)

-- QUESTION 12 Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
SELECT name, capital FROM world WHERE LEFT(name,1) =  LEFT(capital, 1) AND name <> capital


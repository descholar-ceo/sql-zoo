-- QUESTION 1. Select the code that shows the name, region and population of the smallest country in each region
SELECT region, name, population FROM bbc x 
WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

-- QUESTION 2. Select the code that shows the countries belonging to regions with all populations over 50000
SELECT name,region,population FROM bbc x 
WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

-- QUESTION 3. Select the code that shows the countries with a less than a third of the population of the countries around it
SELECT name, region FROM bbc x
 WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)

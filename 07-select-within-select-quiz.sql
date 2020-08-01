-- QUESTION 1. Select the code that shows the name, region and population of the smallest country in each region
SELECT region, name, population FROM bbc x 
WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

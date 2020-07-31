-- display population from Germany using WHERE keyword
SELECT population FROM world
  WHERE name = 'Germany'

-- display population from sweden, norway, and denmark using IN keyword
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- displaying list of countries which are between  a certain area, using BETWEEN keyword
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

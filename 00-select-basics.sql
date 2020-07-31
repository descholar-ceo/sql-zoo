-- display population from Germany using WHERE keyword
SELECT population FROM world
  WHERE name = 'Germany'

-- display population from sweden, norway, and denmark using IN keyword
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

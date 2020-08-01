-- QUESTION 1. Pick the code which shows the name of winner's names beginning with C and ending in n
SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

-- QUESTION 2. Select the code that shows how many Chemistry awards were given between 1950 and 1960
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

-- QUESTION 3. Pick the code that shows the amount of years where no Medicine awards were given
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')


--QUESTION 4. Select the result that would be obtained from the following code:
SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'
'
Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet
'



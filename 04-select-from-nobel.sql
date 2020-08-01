-- QUESTION  1. Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 -- QUESTION 2. Show who won the 1962 prize for Literature.
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

-- QUESTION 3. Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr, subject from nobel where winner = 'Albert Einstein'

-- QUESTION 4. Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT winner from nobel where subject = 'Peace' and yr >=2000

--QUESTION 5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT yr, subject, winner from nobel where yr between 1980 and 1989 and subject = 'Literature'

--QUESTION 6. Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama
SELECT * FROM nobel
 WHERE winner in ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter', 'Barack Obama')

-- QUESTION 7. Show the winners with first name John
SELECT winner FROM nobel WHERE winner LIKE 'John%'

-- QUESTION 8. Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT yr, subject, winner FROM nobel WHERE subject='Physics' AND yr=1980 OR subject='Chemistry' AND yr=1984

-- QUESTION 9. Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT yr, subject, winner FROM nobel WHERE yr=1980 AND subject != 'Chemistry' AND subject != 'Medicine'

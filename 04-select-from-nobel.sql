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

-- QUESTION 4. 

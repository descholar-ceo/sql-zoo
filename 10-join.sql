-- QUESTION 1. The first example shows the goal scored by a player with the last name 'Bender'. The * says to list all the columns in the table - a shorter way of saying matchid, teamid, player, gtime

-- Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

-- QUESTION 2. Show id, stadium, team1, team2 for just game 1012
SELECT id,stadium,team1,team2
  FROM game WHERE id=1012

  -- QUESTION 3. 
'
The code below shows the player (from the goal) and stadium name (from the game table) for every goal scored.

Modify it to show the player, teamid, stadium and mdate for every German goal.
'
SELECT player,teamid,stadium,mdate
  FROM game JOIN goal ON (id=matchid) WHERE teamid='GER'


-- QUESTION 4. Use the same JOIN as in the previous question.

-- Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'
SELECT team1, team2, player FROM game JOIN goal ON id=matchid WHERE player LIKE 'Mario%'

-- QUESTION 5. 
'
The table eteam gives details of every national team including the coach. You can JOIN goal to eteam using the phrase goal JOIN eteam on teamid=id

Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10
'
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON id=teamid 
 WHERE gtime<=10

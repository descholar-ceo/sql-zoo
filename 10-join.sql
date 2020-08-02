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

 -- QUESTION 6. 
 '
 To JOIN game with eteam you could use either
game JOIN eteam ON (team1=eteam.id) or game JOIN eteam ON (team2=eteam.id)

Notice that because id is a column name in both game and eteam you must specify eteam.id instead of just id

List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
 '

SELECT mdate, teamname FROM game JOIN eteam ON team1 = eteam.id WHERE coach = 'Fernando Santos'

-- QUESTION 7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
SELECT player FROM goal JOIN game ON matchid=id WHERE stadium = 'National Stadium, Warsaw'

-- QUESTION 8. 
'
The example query shows all goals scored in the Germany-Greece quarterfinal.
Instead show the name of all players who scored a goal against Germany.

HINT
Select goals scored only by non-German players in matches where GER was the id of either team1 or team2.

You can use teamid!=\'GER\' to prevent listing German players.

You can use DISTINCT to stop players being listed twice.

'
SELECT DISTINCT(player) FROM goal INNER JOIN game ON matchid = id WHERE teamid <> 'GER' AND 'GER' IN (team1, team2)

-- QUESTION 9. Show teamname and the total number of goals scored.
SELECT teamname, COUNT(*) goals FROM eteam JOIN goal ON teamid = id GROUP BY teamname

-- QUESTION 10. Show the stadium and the number of goals scored in each stadium.
SELECT stadium, COUNT(*) goals FROM game INNER JOIN goal ON matchid = id GROUP BY stadium

-- QUESTION 11. For every match involving 'POL', show the matchid, date and the number of goals scored.
SELECT id, mdate, COUNT(*) FROM goal JOIN game
ON matchid = game.id WHERE 'POL' IN (team1, team2) GROUP BY id, mdate

-- QUESTION 12. For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
SELECT DISTINCT id, mdate, COUNT(*) FROM game JOIN goal ON matchid = id WHERE teamid = 'GER' GROUP BY id, mdate

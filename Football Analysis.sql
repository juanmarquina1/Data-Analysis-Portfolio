--The first stage is dedicated to cleaning and transforming the data. 
--Subsequently, a thorough analysis of the tables is conducted to identify null values and outliers. 
--Finally, tables are created based on relevant calculations for a future dashboard.

--TABLE APPEARANCES

-- I remove the quotation marks from the following columns: ["gameID"], ["playerID"], ["leagueID"] y ["position"]. 
UPDATE 
	appearances
SET 
	["gameID"] = REPLACE(["gameID"], '"', ''),
	["playerID"] = REPLACE(["playerID"], '"', ''),
	["leagueID"] = REPLACE(["leagueID"], '"', ''),
	["position"] = REPLACE(["position"], '"', '')

-- Column ["GameID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["gameID"] INT

-- Column ["playerID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["playerID"] INT

-- Column ["leagueID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["leagueID"] INT

-- Column ["goals"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["goals"] INT

-- Column ["assists"]: I convert the data type from varchar(50) to int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["assists"] INT

-- Column ["time"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["time"] INT

-- Column ["yellowCard"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	appearances
ALTER COLUMN	
	["yellowCard"] INT

-- Column ["redCard"]: I convert the data type from varchar(50) to int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["redCard"] INT

-- Column ["shots"]: I convert the data type from varchar(50) to int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["shots"] INT

-- Column ["keyPasses"]: I convert the data type from varchar(50) to int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["keyPasses"] INT

-- Column ["xGoals"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["xGoals"] FLOAT

-- Column ["xAssists"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	appearances
ALTER COLUMN 
	["xAssists"] FLOAT

--*********************************************************************************
--TABLE PLAYERS

-- I remove the quotation marks from the following columns ["playerID"] y ["name"]
UPDATE 
	players
SET 
	["playerID"] = REPLACE(["playerID"], '"', ''),
	["name"] = REPLACE(["name"], '"', '')


-- Column ["playerID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	players
ALTER COLUMN 
	["playerID"] INT


--*********************************************************************************
--TABLE GAMES

-- I remove the quotation marks from the following columns: ["gameID"], ["leagueID"], ["season"], ["homeTeamID"], ["awayTeamID"] . 
UPDATE 
	games
SET 
	["gameID"] = REPLACE(["gameID"], '"', ''),
	["leagueID"] = REPLACE(["leagueID"], '"', ''),
	["season"] = REPLACE(["season"], '"', ''),
	["homeTeamID"] = REPLACE(["homeTeamID"], '"', ''),
	["awayTeamID"] = REPLACE(["awayTeamID"], '"', '')


-- Column ["gameID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["gameID"] INT

-- Column ["leagueID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["leagueID"] INT

-- Column ["season"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["season"] INT

-- Column ["homeTeamID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["homeTeamID"] INT

-- Column ["awayTeamID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["awayTeamID"] INT

-- Column ["homeGoals"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["homeGoals"] INT

-- Column ["awayGoals"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	games
ALTER COLUMN 
	["awayGoals"] INT

-- Column ["homeProbability"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	games
ALTER COLUMN 
	["homeProbability"] FLOAT

-- Column ["drawProbability"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	games
ALTER COLUMN 
	["drawProbability"] FLOAT

-- Column ["awayProbability"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	games
ALTER COLUMN 
	["awayProbability"] FLOAT


--**********************************************************************************
--TABLE LEAGUES

-- I remove the quotation marks from the following columns: ["playerID"] y ["name"]
UPDATE 
	leagues
SET 
	["leagueID"] = REPLACE(["leagueID"], '"', ''),
	["name"] = REPLACE(["name"], '"', ''),
	["understatNotation"] = REPLACE(["understatNotation"], '"', '')


-- Column ["leagueID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	leagues
ALTER COLUMN 
	["leagueID"] INT


--**********************************************************************************
--TABLE TEAMSTATS

-- I remove the quotation marks from the following columns: ["gameID"], ["leagueID"], ["season"], ["location"], ["result"] . 
UPDATE 
	teamstats
SET 
	["gameID"] = REPLACE(["gameID"], '"', ''),
	["teamID"] = REPLACE(["teamID"], '"', ''),
	["season"] = REPLACE(["season"], '"', ''),
	["location"] = REPLACE(["location"], '"', ''),
	["result"] = REPLACE(["result"], '"', '')


-- Column ["gameID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["gameID"] INT

-- Column ["teamID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["teamID"] INT

-- Column ["season"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["season"] INT

-- Column ["goals"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["goals"] INT

-- Column ["xGoals"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["xGoals"] FLOAT

-- Column ["shots"]: I convert the data type from varchar(50) to float.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["shots"] INT

-- Column ["shotsOnTarget"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["shotsOnTarget"] INT

--In the ['yellowCards'] column, I change the value of a row where 'NA' is present, replacing it with 0.
UPDATE teamstats
SET ["yellowCards"] = 0  
WHERE ["yellowCards"] = 'NA'

-- Column ["yellowCards"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["yellowCards"] INT

-- Column ["redCards"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["redCards"] INT


--**********************************************************************************
--TABLE TEAMS

-- I remove the quotation marks from the following columns: ["teamID"] y ["name"]
UPDATE 
	teams
SET 
	["teamID"] = REPLACE(["teamID"], '"', ''),
	["name"] = REPLACE(["name"], '"', '')


-- Column ["teamID"]: I convert the data type from varchar(50) to int.
ALTER TABLE 
	teams
ALTER COLUMN 
	["teamID"] INT


--**********************************************************************************
-- Validation of NULL values in the APPEARANCES table
-- I search for null values in key and relevant columns in the APPEARANCES table.
SELECT *
FROM 
	appearances
WHERE 
	["gameID"] IS NULL OR
	["playerID"] IS NULL OR
	["goals"] IS NULL OR
	["ownGoals"] IS NULL OR
	["shots"] IS NULL OR
	["xGoals"] IS NULL OR
	["assists"] IS NULL OR
	["keyPasses"] IS NULL OR
	["xAssists"] IS NULL OR
	["position"] IS NULL OR
	["positionOrder"] IS NULL OR
	["yellowCard"] IS NULL OR
	["redCard"] IS NULL OR
	["time"] IS NULL OR
	["leagueID"] IS NULL 
-- No null values were found in the specified columns.

-- Validation of NULL values in the GAMES table
-- I search for null values in key and relevant columns in the GAMES table.
SELECT *
FROM 
	games
WHERE 
	["gameID"] IS NULL OR
    ["leagueID"] IS NULL OR
    ["season"] IS NULL OR
    ["date"] IS NULL OR
    ["homeTeamID"] IS NULL OR
    ["awayTeamID"] IS NULL OR
    ["homeGoals"] IS NULL OR
    ["awayGoals"] IS NULL OR
    ["homeProbability"] IS NULL OR
    ["drawProbability"] IS NULL OR
    ["awayProbability"] IS NULL
-- No null values were found in the specified columns.

-- Validation of NULL values in the PLAYERS table
-- I search for null values in key and relevant columns in the PLAYERS table.
SELECT *
FROM 
	players
WHERE 
	["playerID"] IS NULL OR
	["name"] IS NULL
-- No null values were found in the specified columns.

-- Validation of NULL values in the SHOTS table
-- I search for null values in key and relevant columns in the SHOTS table.
SELECT *
FROM 
	shots
WHERE 
	["gameID"] IS NULL OR
    ["shooterID"] IS NULL OR
    ["assisterID"] IS NULL OR
    ["minute"] IS NULL OR
    ["situation"] IS NULL OR
    ["lastAction"] IS NULL OR
    ["shotType"] IS NULL OR
    ["shotResult"] IS NULL OR
    ["xGoal"] IS NULL 
-- No null values were found in the specified columns.

-- Validation of NULL values in the TEAMS table
-- I search for null values in key and relevant columns in the TEAMS table.
SELECT *
FROM 
	teams
WHERE 
	["teamID"] IS NULL OR
	["name"] IS NULL
-- No null values were found in the specified columns.

-- Validation of NULL values in the TEAMSTATS table
-- I search for null values in key and relevant columns in the TEAMSTATS table.
SELECT *
FROM 
	teamstats
WHERE 
	["gameID"] IS NULL OR
    ["teamID"] IS NULL OR
    ["season"] IS NULL OR
    ["date"] IS NULL OR
    ["location"] IS NULL OR
    ["goals"] IS NULL OR
    ["xGoals"] IS NULL OR
    ["shots"] IS NULL OR
    ["shotsOnTarget"] IS NULL OR
    ["deep"] IS NULL OR
    ["ppda"] IS NULL OR
    ["fouls"] IS NULL OR
    ["corners"] IS NULL OR
    ["yellowCards"] IS NULL OR
    ["redCards"] IS NULL OR
    ["result"] IS NULL 
-- No null values were found in the specified columns.


--**************************************************************************************************************************************************

-- Analysis of the APPEARANCES table.

-- There are 6455 players who have at least one appearance in this data.
SELECT DISTINCT
	["playerID"]
FROM
	appearances

-- In total, there are 7569 registered players.
SELECT 
	["playerID"],
	["name"]
FROM
	players

-- I check if there are players registered more than once in the PLAYERS table.
SELECT
	["playerID"], 
	COUNT(*)
FROM
	players
GROUP BY
	["playerID"]
HAVING
	COUNT(*) > 1

-- Performance table for each player by season and league.
SELECT 
	g.["season"],
	l.["name"] AS League,
	P.["name"] AS Player,
	COUNT(A.["gameID"]) AS Total_games,	-- Number of games played.
    SUM(A.["goals"]) AS Total_goals,	-- Total number of goals scored.
	SUM(["assists"]) AS Total_assists,	-- Total number of assists.
	(SUM(A.["goals"]) + SUM(["assists"])) AS Total_Goals_and_Assists,	-- Total sum of goals and assists.
	SUM(["time"]) AS Total_time,	-- Total playing time.
	SUM(["yellowCard"]) AS Total_yellowCard,	-- Total number of yellow cards."
	SUM(["redCard"]) AS Total_redCard	-- Total number of red cards."
FROM 
    appearances AS A
JOIN 
	players AS p ON p.["playerID"] = A.["playerID"]
LEFT JOIN	
	games AS g ON  g.["gameID"] = A.["gameID"]
JOIN
	leagues AS l ON l.["leagueID"] = A.["leagueID"]
GROUP BY
	P.["name"],
	g.["season"],
	l.["name"]
ORDER BY 
    Total_Goals_and_Assists DESC


--**************************************************************************************************************************************************

-- Analysis of the GAMES table.

-- Available seasons (2014 to 2020)
SELECT DISTINCT 
	["season"]
FROM 
	games

-- I look for games registered more than once in the GAMES table.
SELECT
	["gameID"], 
	COUNT(*)
FROM
	games
GROUP BY
	["gameID"]
HAVING
	COUNT(*) > 1

-- Identification of outliers. Checking for negative or excessively large records in the goal columns, 
-- and ensuring that probabilities are positive and within the range [0, 1].
SELECT  
	["gameID"]
FROM 
	games
WHERE
	["homeGoals"] > 10
	OR ["awayGoals"] > 10
	OR ["homeGoals"] < 0
	OR ["awayGoals"] < 0
	OR ["homeProbability"] < 0
	OR ["homeProbability"] > 1
	OR ["awayProbability"] < 0
	OR ["awayProbability"] > 1
	OR ["drawProbability"] < 0
	OR ["drawProbability"] > 1

-- Number of matches and goals per league in each season.
SELECT
	["season"] AS Season,
	l.["name"] AS League,
	COUNT(["gameID"]) AS Games_played,	-- Number of matches played per season in each league.
	SUM(["homeGoals"] + ["awayGoals"]) AS Goals	-- Total number of goals per season in each league.
FROM 
	games AS g
JOIN 
	leagues AS l ON l.["leagueID"] = g.["leagueID"]
GROUP BY 
	l.["name"],
	["season"]
ORDER BY 
	["season"]
-- An anomaly is observed in Liga 1 in 2016, with 379 matches instead of 380.

-- Evaluation of the accuracy of predictions.
SELECT
    ["homeGoals"],
    ["awayGoals"],
	["homeProbability"],
	["awayProbability"],
	["drawProbability"],
    CASE
        WHEN ["homeGoals"] > ["awayGoals"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 'Correct'
        WHEN ["homeGoals"] < ["awayGoals"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 'Correct'
        WHEN ["homeGoals"] = ["awayGoals"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 'Correct'
        ELSE 'Incorrect'
    END AS "CorrectResult"
FROM
    games

-- Number of correctly predicted outcomes.
SELECT
	CorrectResult, 
    COUNT(*) AS CorrectCount
FROM
    (
        SELECT
            ["homeGoals"],
            ["awayGoals"],
            CASE
                WHEN ["homeGoals"] > ["awayGoals"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 'Correct'
                WHEN ["homeGoals"] < ["awayGoals"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 'Correct'
                WHEN ["homeGoals"] = ["awayGoals"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 'Correct'
                ELSE 'Incorrect'
            END AS "CorrectResult"
        FROM
            games
    ) AS Subquery
GROUP BY 
	CorrectResult
-- 60.7% of the outcomes were predicted correctly



--**************************************************************************************************************************************************
--**************************************************************************************************************************************************
--**************************************************************************************************************************************************

-- Analysis of the TEAMSTATS table

-- Creation of the league standings table
SELECT 
	t.["season"] AS Season, 
	l.["name"] AS League,	-- League name (derived from the LEAGUES table)
	tm.["name"] AS Team,	-- Team names (derived from the TEAMS table)
	SUM(CASE WHEN t.["result"] = 'W' THEN 3
			 WHEN t.["result"] = 'L' THEN 0
			 WHEN t.["result"] = 'D' THEN 1 END) AS Pts,	-- Creation of the points column
	COUNT(t.["gameID"]) AS P,	-- Number of games played.
	SUM(CASE WHEN t.["result"] = 'W' THEN 1 ELSE 0 END) AS W,
	SUM(CASE WHEN t.["result"] = 'D' THEN 1 ELSE 0 END) AS D,
	SUM(CASE WHEN t.["result"] = 'L' THEN 1 ELSE 0 END) AS L,	-- Creation of columns counting the number of games won, drawn, or lost.
    SUM(t.["goals"]) AS GF,		-- Sum of goals scored by each team from the TEAMSTATS table.
    SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] THEN g.["awaygoals"]	
			 ELSE g.["homegoals"] END) AS GA	-- Calculation of goals against (this function always sums the goals of the opposing team to the TEAMID).
FROM
	teamstats AS t
JOIN 
	teams AS tm ON tm.["teamID"] = t.["teamID"]		-- Joining the TEAMSTATS table with the TEAMS table.
JOIN 
	games AS g ON g.["gameID"] = t.["gameID"]	-- Joining the TEAMSTATS table with the GAMES table and then with LEAGUES.
JOIN
	leagues AS l ON l.["leagueID"] = g.["leagueID"]		-- Joining the GAMES table with the LEAGUES table to bring league names.
GROUP BY
	tm.["name"],
	t.["season"],
	l.["name"]



-- Creation of the EXPECTED LEAGUE STANDINGS table.
SELECT 
	t.["season"] AS Season, 
	l.["name"] AS League,	-- League name (derived from the LEAGUES table).
	tm.["name"] AS Team,	-- Team names (derived from the TEAMS table).
-- Expected points: If TEAMID is the home team and the probabilities of the home team winning are greater than winning the away team or drawing, add 3 points.
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["hometeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 ELSE 0 END) as xPts,
	COUNT(t.["gameID"]) AS P,	-- Number of games played.
-- Number of games won: If TEAMID is the home team and it wins, add 1 game won; if TEAMID is the away team and it wins, also add 1 game won.
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 1 
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 1			
			ELSE 0 END) AS W,
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1 
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1 
			 ELSE 0 END) AS D,
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 1 
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 1			
			ELSE 0 END) AS L
FROM
	teamstats AS t
JOIN 
	teams AS tm ON tm.["teamID"] = t.["teamID"]		-- Joining the TEAMSTATS table with the TEAMS table.
JOIN 
	games AS g ON g.["gameID"] = t.["gameID"]	-- Joining the TEAMSTATS table with the GAMES table and then with LEAGUES.
JOIN
	leagues AS l ON l.["leagueID"] = g.["leagueID"]		-- Joining the GAMES table with the LEAGUES table to bring league names.
GROUP BY
	tm.["name"],
	t.["season"],
	l.["name"]



-- Creation of the TEAMSTATS table.
SELECT 
	t.["season"] AS Season, 
	l.["name"] AS League,	-- League name (derived from the LEAGUES table).
	tm.["name"] AS Team,	-- Team names (derived from the TEAMS table).
	SUM(CASE WHEN t.["result"] = 'W' THEN 3
			 WHEN t.["result"] = 'L' THEN 0
			 WHEN t.["result"] = 'D' THEN 1 END) AS Pts,	-- Creation of the points column.
-- Expected points: If TEAMID is the home team and the probabilities of the home team winning are greater than winning the away team or drawing, add 3 points.
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["hometeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 ELSE 0 END) as xPts,
    SUM(t.["goals"]) AS GF,		-- Sum of goals scored by each team from the TEAMSTATS table.
    SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] THEN g.["awaygoals"]	
			 ELSE g.["homegoals"] END) AS GA,	-- Calculation of goals against (this function always sums the goals of the opposing team to the TEAMID).
	SUM(["xGoals"]) AS xGF,	-- Sum of expected goals scored.
	(SELECT SUM(["xGoals"]) FROM teamstats AS t2 WHERE t.["gameID"] = t2.["gameID"] AND t.["teamID"] != t2.["teamID"]) AS xGA, -- Sum of expected goals against.
	t.["shots"],
	t.["shotsOnTarget"],
	t.["fouls"],
	t.["yellowCards"],
	t.["redCards"]
FROM
	teamstats AS t
JOIN 
	teams AS tm ON tm.["teamID"] = t.["teamID"]		-- Joining the TEAMSTATS table with the TEAMS table.
JOIN 
	games AS g ON g.["gameID"] = t.["gameID"]	-- Joining the TEAMSTATS table with the GAMES table and then with LEAGUES.
JOIN
	leagues AS l ON l.["leagueID"] = g.["leagueID"]		-- Joining the GAMES table with the LEAGUES table to bring league names.
GROUP BY
	tm.["name"],
	t.["season"],
	l.["name"],
	t.["teamID"],
	t.["gameID"],
	t.["shots"],
	t.["shotsOnTarget"],
	t.["fouls"],
	t.["yellowCards"],
	t.["redCards"];

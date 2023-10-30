--TABLA APPEARANCES

-- Elimino las comillas de las siguientes columnas: ["gameID"], ["playerID"], ["leagueID"] y ["position"]. 
UPDATE 
	appearances
SET 
	["gameID"] = REPLACE(["gameID"], '"', ''),
	["playerID"] = REPLACE(["playerID"], '"', ''),
	["leagueID"] = REPLACE(["leagueID"], '"', ''),
	["position"] = REPLACE(["position"], '"', '')


-- Columna GameID: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["gameID"] INT

-- Columna ["playerID"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["playerID"] INT

-- Columna ["leagueID"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["leagueID"] INT

-- Columna ["goals"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["goals"] INT

-- Columna ["assists"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["assists"] INT

-- Columna ["time"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["time"] INT

-- Columna ["yellowCard"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN	
	["yellowCard"] INT

-- Columna ["redCard"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["redCard"] INT

-- Columna ["shots"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["shots"] INT

-- Columna ["keyPasses"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	appearances
ALTER COLUMN 
	["keyPasses"] INT

-- Columna ["xGoals"]: Convierto data type de varchar (50) a float
ALTER TABLE 
	appearances
ALTER COLUMN 
	["xGoals"] FLOAT

-- Columna ["xAssists"]: Convierto data type de varchar (50) a float
ALTER TABLE 
	appearances
ALTER COLUMN 
	["xAssists"] FLOAT

--*********************************************************************************
--TABLA PLAYERS

-- Elimino las comillas de las siguientes columnas: ["playerID"] y ["name"]
UPDATE 
	players
SET 
	["playerID"] = REPLACE(["playerID"], '"', ''),
	["name"] = REPLACE(["name"], '"', '')


-- Columna ["playerID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	players
ALTER COLUMN 
	["playerID"] INT


--*********************************************************************************
--TABLA GAMES

-- Elimino las comillas de las siguientes columnas: ["gameID"], ["leagueID"], ["season"], ["homeTeamID"], ["awayTeamID"] . 
UPDATE 
	games
SET 
	["gameID"] = REPLACE(["gameID"], '"', ''),
	["leagueID"] = REPLACE(["leagueID"], '"', ''),
	["season"] = REPLACE(["season"], '"', ''),
	["homeTeamID"] = REPLACE(["homeTeamID"], '"', ''),
	["awayTeamID"] = REPLACE(["awayTeamID"], '"', '')


-- Columna ["gameID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["gameID"] INT

-- Columna ["leagueID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["leagueID"] INT

-- Columna ["season"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["season"] INT

-- Columna ["homeTeamID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["homeTeamID"] INT

-- Columna ["awayTeamID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["awayTeamID"] INT

-- Columna ["homeGoals"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["homeGoals"] INT

-- Columna ["awayGoals"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	games
ALTER COLUMN 
	["awayGoals"] INT

-- Columna ["homeProbability"]: Convierto data type de varchar (50) a float
ALTER TABLE 
	games
ALTER COLUMN 
	["homeProbability"] FLOAT

-- Columna ["drawProbability"]: Convierto data type de varchar (50) a float
ALTER TABLE 
	games
ALTER COLUMN 
	["drawProbability"] FLOAT

-- Columna ["awayProbability"]: Convierto data type de varchar (50) a float
ALTER TABLE 
	games
ALTER COLUMN 
	["awayProbability"] FLOAT


--**********************************************************************************
--TABLA LEAGUES

-- Elimino las comillas de las siguientes columnas: ["playerID"] y ["name"]
UPDATE 
	leagues
SET 
	["leagueID"] = REPLACE(["leagueID"], '"', ''),
	["name"] = REPLACE(["name"], '"', ''),
	["understatNotation"] = REPLACE(["understatNotation"], '"', '')


-- Columna ["leagueID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	leagues
ALTER COLUMN 
	["leagueID"] INT


--**********************************************************************************
--TABLA TEAMSTATS

-- Elimino las comillas de las siguientes columnas: ["gameID"], ["leagueID"], ["season"], ["location"], ["result"] . 
UPDATE 
	teamstats
SET 
	["gameID"] = REPLACE(["gameID"], '"', ''),
	["teamID"] = REPLACE(["teamID"], '"', ''),
	["season"] = REPLACE(["season"], '"', ''),
	["location"] = REPLACE(["location"], '"', ''),
	["result"] = REPLACE(["result"], '"', '')


-- Columna ["gameID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["gameID"] INT

-- Columna ["teamID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["teamID"] INT

-- Columna ["season"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["season"] INT

-- Columna ["goals"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["goals"] INT

-- Columna ["xGoals"]: Convierto data type de varchar (50) a float
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["xGoals"] FLOAT

-- Columna ["shots"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["shots"] INT

-- Columna ["shotsOnTarget"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["shotsOnTarget"] INT

--En la columna ["yellowCards"] cambio el valor de una fila donde habia un 'NA', lo reemplazo por un 0. 
UPDATE teamstats
SET ["yellowCards"] = 0  
WHERE ["yellowCards"] = 'NA'

-- Columna ["yellowCards"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["yellowCards"] INT

-- Columna ["redCards"]: Convierto data type de varchar (50) a int. 
ALTER TABLE 
	teamstats
ALTER COLUMN 
	["redCards"] INT


--**********************************************************************************
--TABLA TEAMS

-- Elimino las comillas de las siguientes columnas: ["teamID"] y ["name"]
UPDATE 
	teams
SET 
	["teamID"] = REPLACE(["teamID"], '"', ''),
	["name"] = REPLACE(["name"], '"', '')


-- Columna ["teamID"]: Convierto data type de varchar (50) a int
ALTER TABLE 
	teams
ALTER COLUMN 
	["teamID"] INT


--**********************************************************************************
-- Busco si hay valores NULLS en las columnas de interes en la tabla Appearence
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
-- No se encontraron valores NULLS

-- Busco si hay valores NULLS en las columnas de interes en la tabla Games
SELECT *
  FROM 
	[Football_Database].[dbo].[games]
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
-- No se encontraron valores NULLS

-- Busco si hay valores NULLS en las columnas de interes en la tabla Players
SELECT *
FROM 
	players
WHERE 
	["playerID"] IS NULL OR
	["name"] IS NULL
-- No se encontraron valores NULLS 

-- Busco si hay valores NULLS en las columnas de interes en la tabla Shots
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
-- No se encontraron valores NULLS

-- Busco si hay valores NULLS en las columnas de interes en la tabla Teams
SELECT *
FROM 
	teams
WHERE 
	["teamID"] IS NULL OR
	["name"] IS NULL
-- No se encontraron valores NULLS 
 
-- Busco si hay valores NULLS en las columnas de interes en la tabla Teamstats
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
-- No se encontraron valores NULLS


--**************************************************************************************************************************************************
--**************************************************************************************************************************************************
--**************************************************************************************************************************************************

--ANALISIS DE TABLA APPEARANCES 

-- Hay 6455 jugadores que al menos tienen un aparicion en estos datos
SELECT DISTINCT
	["playerID"]
FROM
	appearances

-- Hay 7569 jugadores registrados en total 
SELECT 
	["playerID"],
	["name"]
FROM
	players

-- Busco si hay jugadores registrados mas de una vez en la tabla players
SELECT
	["playerID"], 
	COUNT(*)
FROM
	players
GROUP BY
	["playerID"]
HAVING
	COUNT(*) > 1

-- Tabla de rendimiento de cada jugador por temporada y liga
SELECT 
	g.["season"],
	l.["name"] AS League,
	P.["name"] AS Player,
	COUNT(A.["gameID"]) AS Total_games,	--cantidad de partidos
    SUM(A.["goals"]) AS Total_goals,	--cantidad de goles anotados
	SUM(["assists"]) AS Total_assists,	--cantidad de asistencias
	(SUM(A.["goals"]) + SUM(["assists"])) AS Total_Goals_and_Assists,	--goles mas asistencias
	SUM(["time"]) AS Total_time,	--tiempo total jugado
	SUM(["yellowCard"]) AS Total_yellowCard,	--cantidad de amarillas
	SUM(["redCard"]) AS Total_redCard	--cantidad de rojas
FROM 
    appearances AS A
JOIN 
	players AS P  ON P.["playerID"] = A.["playerID"]
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
--**************************************************************************************************************************************************
--**************************************************************************************************************************************************

--ANALISIS DE TABLA GAMES 

-- Temporadas (hay de 2014 a 2020)
SELECT DISTINCT 
	["season"]
FROM 
	games

-- Busco si hay partidos registrados mas de una vez en la tabla games
SELECT
	["gameID"], 
	COUNT(*)
FROM
	games
GROUP BY
	["gameID"]
HAVING
	COUNT(*) > 1


--Busco valores atipicos. Que no haya registros negativos o demasiado grandes en las columnas de goles. 
-- Tambien que las probabilidades sean positivas y menores a 1. 
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


-- Cantidad de partidos y goles por Liga en cada temporada
SELECT
	["season"] AS Season,
	l.["name"] AS League,
	COUNT(["gameID"]) AS Games_played,	--cantidad de partidos jugados por temporada en cada liga
	SUM(["homeGoals"] + ["awayGoals"]) AS Goals	--cantidad de goles por temporada en cada liga
FROM 
	games AS g
JOIN 
	leagues AS l ON l.["leagueID"] = g.["leagueID"]
GROUP BY 
	l.["name"],
	["season"]
ORDER BY 
	["season"]
-- Ligue1 en 2016 379 partidos y 2019 jugo 279 partidos en vez de 380


--Veo si las predicciones estuvieron acertadas. 
--Ej si equipo local gano y la probabilidad de que gane fue mayor a la de empate o perder, la funcion devuelve 'Correct'. 
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


--Cantidad de resultados predichos
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
-- Se predijeron el 60,7% de los resultados


--**************************************************************************************************************************************************
--**************************************************************************************************************************************************
--**************************************************************************************************************************************************

--ANALISIS DE TABLA TEAMSTATS

--TABLA DE POSICIONES 
SELECT 
	t.["season"] AS Season, 
	l.["name"] AS League,	--nombre de la liga, viene de la tabla leagues
	tm.["name"] AS Team,	--nombre de los equipos, vienen de la tabla teams
	SUM(CASE WHEN t.["result"] = 'W' THEN 3
			 WHEN t.["result"] = 'L' THEN 0
			 WHEN t.["result"] = 'D' THEN 1 END) AS Pts,	--creo la columna de puntos 
	COUNT(t.["gameID"]) AS P,	--cuento la cantidad de partidos jugados
	SUM(CASE WHEN t.["result"] = 'W' THEN 1 ELSE 0 END) AS W,
	SUM(CASE WHEN t.["result"] = 'D' THEN 1 ELSE 0 END) AS D,
	SUM(CASE WHEN t.["result"] = 'L' THEN 1 ELSE 0 END) AS L,	--creo las columnas que cuentan la cantidad de partidos ganados, empatados o perdidos
    SUM(t.["goals"]) AS GF,		--Sumo los goles a favor de cada equipo desde la tabla Teamstats
    SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] THEN g.["awaygoals"]	
			 ELSE g.["homegoals"] END) AS GA	--Calculo los goles en contra (esta funcion siempre suma los goles del equipo contrario al teamid)
FROM
	teamstats AS t
JOIN 
	teams AS tm ON tm.["teamID"] = t.["teamID"]		--uno tabla teamstats con tabla teams
JOIN 
	games AS g ON g.["gameID"] = t.["gameID"]	--uno tabla teamstats con tabla games para luego unirla con leagues 
JOIN
	leagues AS l ON l.["leagueID"] = g.["leagueID"]		--uno tabla games con tabla leagues para traer los nombres de las ligas
GROUP BY
	tm.["name"],
	t.["season"],
	l.["name"]


--TABLA DE POSICIONES ESPERADAS   
SELECT 
	t.["season"] AS Season, 
	l.["name"] AS League,	--nombre de la liga, viene de la tabla leagues
	tm.["name"] AS Team,	--nombre de los equipos, vienen de la tabla teams
-- Puntos esperados: Si teamId es el equipo local, y las probabilidades de que el local gane son mayores a que gane el visitante o empate, suma 3 puntos 
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["hometeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 ELSE 0 END) as xPts,
	COUNT(t.["gameID"]) AS P,	--cuento la cantidad de partidos jugados
-- Cantidad de Partidos ganados: Si teamID es el local, y este gana suma 1 partido ganado, si teamId es visitante y este gana, tambien suma 1 partido ganado
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
	teams AS tm ON tm.["teamID"] = t.["teamID"]		--uno tabla teamstats con tabla teams
JOIN 
	games AS g ON g.["gameID"] = t.["gameID"]	--uno tabla teamstats con tabla games para luego unirla con leagues 
JOIN
	leagues AS l ON l.["leagueID"] = g.["leagueID"]		--uno tabla games con tabla leagues para traer los nombres de las ligas
GROUP BY
	tm.["name"],
	t.["season"],
	l.["name"]


--TABLA TEAMSTATS_V2
SELECT 
	t.["season"] AS Season, 
	l.["name"] AS League,	--nombre de la liga, viene de la tabla leagues
	tm.["name"] AS Team,--nombre de los equipos, vienen de la tabla teams
	SUM(CASE WHEN t.["result"] = 'W' THEN 3
			 WHEN t.["result"] = 'L' THEN 0
			 WHEN t.["result"] = 'D' THEN 1 END) AS Pts,	--creo la columna de puntos 
-- Puntos esperados: Si teamId es el equipo local, y las probabilidades de que el local gane son mayores a que gane el visitante o empate, suma 3 puntos 
	SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] AND ["homeProbability"] > ["awayProbability"] AND ["homeProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["hometeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["awayProbability"] > ["homeProbability"] AND ["awayProbability"] > ["drawProbability"] THEN 3
			 WHEN t.["teamID"] = g.["awayTeamID"] AND ["drawProbability"] > ["homeProbability"] AND ["drawProbability"] > ["awayProbability"] THEN 1
			 ELSE 0 END) as xPts,
    SUM(t.["goals"]) AS GF,		--Sumo los goles a favor de cada equipo desde la tabla Teamstats
    SUM(CASE WHEN t.["teamID"] = g.["hometeamID"] THEN g.["awaygoals"]	
			 ELSE g.["homegoals"] END) AS GA,	--Calculo los goles en contra (esta funcion siempre suma los goles del equipo contrario al teamid),
	SUM(["xGoals"]) AS xGF,	--Sumo los goles a favor esperados 
	(SELECT SUM(["xGoals"]) FROM teamstats AS t2 WHERE t.["gameID"] = t2.["gameID"] AND t.["teamID"] != t2.["teamID"]) AS xGA , --Sumo los goles en contra esperados
	t.["shots"],
	t.["shotsOnTarget"],
	t.["fouls"],
	t.["yellowCards"],
	t.["redCards"]
FROM
	teamstats AS t
JOIN 
	teams AS tm ON tm.["teamID"] = t.["teamID"]		--uno tabla teamstats con tabla teams
JOIN 
	games AS g ON g.["gameID"] = t.["gameID"]	--uno tabla teamstats con tabla games para luego unirla con leagues 
JOIN
	leagues AS l ON l.["leagueID"] = g.["leagueID"]		--uno tabla games con tabla leagues para traer los nombres de las ligas
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
	t.["redCards"]
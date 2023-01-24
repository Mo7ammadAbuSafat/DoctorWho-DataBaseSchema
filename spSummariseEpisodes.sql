USE DoctorWho;

CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN	
	SELECT TOP 3 CompanionName, COUNT(*) AS CountAppearing
	FROM tblEpisodeCompanion EC LEFT JOIN tblCompanion C
	ON C.CompanionId = EC.CompanionId 
	GROUP BY CompanionName
	ORDER BY COUNT(*) DESC;

	SELECT TOP 3 EnemyName, COUNT(*) AS CountAppearing
	FROM tblEpisodeEnemy EE LEFT JOIN tblEnemy E  ON E.EnemyId = EE.EnemyId 
	GROUP BY EnemyName
	ORDER BY COUNT(*) DESC;
END;


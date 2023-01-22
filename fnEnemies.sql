USE DoctorWho;

CREATE FUNCTION fnEnemies( @Id INT)
RETURNS varchar(max)
AS 
BEGIN
DECLARE @Result varchar(max)
SELECT @Result = COALESCE(@Result + ', ','') + EnemyName 
FROM tblEnemy E Left JOIN tblEpisodeEnemy EE 
ON E.EnemyId = EE.EnemyId 
WHERE EE.EpisodeId = @Id
return @Result;
END;


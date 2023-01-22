USE DoctorWho;

CREATE FUNCTION fnEnemies( @Id INT)
RETURNS TABLE
AS 
RETURN (SELECT EnemyName FROM tblEnemy E Left JOIN tblEpisodeEnemy EE ON E.EnemyId = EE.EnemyId where EE.EpisodeId = @Id);


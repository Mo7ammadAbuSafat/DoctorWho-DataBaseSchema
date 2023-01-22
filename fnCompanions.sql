USE DoctorWho;

CREATE FUNCTION fnCompanions( @Id INT)
RETURNS TABLE
AS 
RETURN (SELECT CompanionName FROM tblCompanion C RIGHT JOIN tblEpisodeCompanion EC ON C.CompanionId = EC.CompanionId where EC.EpisodeId = @Id);


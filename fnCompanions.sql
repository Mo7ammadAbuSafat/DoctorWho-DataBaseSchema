USE DoctorWho;

CREATE FUNCTION fnCompanions( @Id INT)
RETURNS varchar(max)
AS 
BEGIN
DECLARE @Result varchar(max)
SELECT @Result = COALESCE(@Result + ', ','') + CompanionName 
											   FROM tblCompanion C RIGHT JOIN tblEpisodeCompanion EC 
											   ON C.CompanionId = EC.CompanionId 
											   WHERE EC.EpisodeId = @Id
return @Result;
END;

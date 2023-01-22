USE DoctorWho;

CREATE VIEW viewEpisodes AS
SELECT EpisodeId, Title, AutherName, DoctorName, dbo.fnCompanions(EpisodeId) AS Companions, dbo.fnEnemies(EpisodeId) AS Enemies
FROM tblEpisode E
JOIN tblDoctor D ON E.DoctorId = D.DoctorId
JOIN tblAuther A ON E.AutherId = A.AutherId;
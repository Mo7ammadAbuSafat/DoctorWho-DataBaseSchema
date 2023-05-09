USE DoctorWho; 

CREATE TABLE tblEnemy (
	EnemyId int NOT NULL PRIMARY KEY,
	EnemyName varchar(20) NOT NULL,
	Description varchar(50)
);
chang
CREATE TABLE tblEpisodeEnemy (
	EpisodeEnemyId int NOT NULL PRIMARY KEY,
	EnemyId int NOT NULL,
	EpisodeId int NOT NULL
);

CREATE TABLE tblEpisode (
	EpisodeId int NOT NULL PRIMARY KEY,
	SeriesNumber int NOT NULL,
	EpisodeNumber int NOT NULL,
	Episodetype varchar(20) NOT NULL,
	Title varchar(30) NOT NULL,
	EpsodeDate date NOT NULL,
	AutherId int NOT NULL,
	DoctorId int,
	Notes varchar(50)
);

CREATE TABLE tblAuther (
	AutherId int NOT NULL PRIMARY KEY,
	AutherName varchar(20)
);

CREATE TABLE tblEpisodeCompanion (
	EpisodeCompanionId int NOT NULL PRIMARY KEY,
	EpisodeId int NOT NULL,
	CompanionId int NOT NULL,
);

CREATE TABLE tblCompanion (
	CompanionId int NOT NULL PRIMARY KEY,
	CompanionName varchar(20),
	WhoPlayed varchar(20)
);

CREATE TABLE tblDoctor (
	DoctorId int NOT NULL PRIMARY KEY,
	DoctorNumber int NOT NULL,
	DoctorName varchar(20),
	BirthDate date,
	FirstEpisodeDate date,
	LastEpisodeDate date
);

ALTER TABLE tblEpisodeEnemy
ADD CONSTRAINT FK_EpisodeId_tblEpisodeEnemy
FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId);

ALTER TABLE tblEpisodeEnemy
ADD CONSTRAINT FK_EnemyId_tblEpisodeEnemy
FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId);

ALTER TABLE tblEpisode
ADD CONSTRAINT FK_AutherId_tblEpisode
FOREIGN KEY (AutherId) REFERENCES tblAuther(AutherId);

ALTER TABLE tblEpisode
ADD CONSTRAINT FK_DoctorId_tblDoctor
FOREIGN KEY (DoctorId) REFERENCES tblDoctor(DoctorId);

ALTER TABLE tblEpisodeCompanion
ADD CONSTRAINT FK_EpisodeId_tblEpisodeCompanion
FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId);

ALTER TABLE tblEpisodeCompanion
ADD CONSTRAINT FK_CompanionId_tblEpisodeCompanion
FOREIGN KEY (CompanionId) REFERENCES tblCompanion(CompanionId);

USE DoctorWho;

INSERT INTO tblEnemy(
	EnemyId,
	EnemyName,
	Description
)
VALUES
	(1, 'EnemyX' , 'EnemyX description' ),
	(2, 'EnemyY' , 'EnemyY description' ),
	(3, 'EnemyZ' , 'EnemyZ description' ),
	(4, 'EnemyE' , 'EnemyE description' ),
	(5, 'EnemyF' , 'EnemyF description' );


INSERT INTO tblAuther(
	AutherId,
	AutherName
)
VALUES 
	(10,'Ahmad'),
	(20,'Ali'),
	(30,'khaled'),
	(40,'Mostafa'),
	(50,'Muneer');


INSERT INTO tblCompanion (
	CompanionId,
	CompanionName,
	WhoPlayed
)
VALUES
	(100,'CompanionX','CompanionPlayedX'),
	(200,'CompanionY','CompanionPlayedY'),
	(300,'CompanionZ','CompanionPlayedZ'),
	(400,'CompanionE','CompanionPlayedE'),
	(500,'CompanionF','CompanionPlayedF');


INSERT INTO tblDoctor (
	DoctorId,
	DoctorNumber,
	DoctorName,
	BirthDate,
	FirstEpisodeDate,
	LastEpisodeDate
)
VALUES
	(1000,1,'DoctorX','1996-12-12','2020-12-6','2023-1-12'),
	(2000,1,'DoctorY','1992-1-5','2020-1-6','2022-2-7'),
	(3000,1,'DoctorY','1980-1-22','2007-4-3','2023-1-7'),
	(4000,1,'DoctorZ','1970-2-5','2000-3-9','2023-1-18'),
	(5000,1,'DoctorF','1986-6-10','2010-5-6','2023-1-20');

INSERT INTO tblEpisode (
	EpisodeId,
	SeriesNumber,
	EpisodeNumber,
	Episodetype,
	Title,
	EpsodeDate,
	AutherId,
	DoctorId,
	Notes
)
VALUES
	(10000,1,3,'TypeX','TitleC','2019-12-12',30,1000,'Note1'),
	(20000,1,5,'TypeY','TitleQ','2021-1-1',20,5000,'Note2'),
	(30000,2,4,'TypeZ','TitleA','2017-5-11',20,2000,'Note3'),
	(40000,1,2,'TypeE','TitleD','2021-2-5',10,5000,'Note7'),
	(50000,2,1,'TypeF','TitleS','2022-7-7',30,null,'Note5'),
	(60000,2,1,'TypeP','TitleP','2020-8-7',20,1000,'Note3'),
	(70000,2,1,'TypeR','TitleR','2022-9-2',50,null,'Note7');


INSERT INTO tblEpisodeEnemy (
	EpisodeEnemyId,
	EnemyId,
	EpisodeId
)
VALUES
	(100000,2,30000),
	(200000,1,20000),
	(300000,5,20000),
	(400000,2,20000),
	(500000,5,10000),
	(600000,3,30000),
	(700000,2,40000),
	(800000,2,10000),
	(900000,1,30000);


INSERT INTO tblEpisodeCompanion (
	EpisodeCompanionId,
	EpisodeId,
	CompanionId
)
VALUES
	(111,30000,200),
	(222,10000,100),
	(333,20000,200),
	(444,20000,300),
	(555,40000,500);


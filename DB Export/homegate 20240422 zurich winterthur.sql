-- Adminer 4.8.1 MySQL 8.3.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `realestatepredictor`;
CREATE DATABASE `realestatepredictor` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `realestatepredictor`;

DROP TABLE IF EXISTS `homegate`;
CREATE TABLE `homegate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `homegateid` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `rooms` float DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `livingSpace` float DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `postalcode` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `homegate` (`id`, `homegateid`, `price`, `rooms`, `floor`, `livingSpace`, `street`, `latitude`, `longitude`, `locality`, `postalcode`) VALUES
(265,	'4000806572',	0,	NULL,	NULL,	NULL,	'Seebacherstrasse 28 - 30',	47.4209,	8.53682,	'Zürich-Seebach',	8052),
(266,	'4000921514',	519120,	1.5,	3,	130,	NULL,	47.3756,	8.54433,	'Zürich',	8000),
(267,	'4000212091',	0,	1.5,	NULL,	23,	'Weingartenweg 2 & 4',	47.4012,	8.49976,	'Zürich',	8049),
(268,	'4000805501',	2910780,	1.5,	NULL,	120,	'Spiserstrasse',	47.3794,	8.49348,	'Zürich',	8047),
(269,	'4000987725',	1056780,	1.5,	0,	16,	'Wehntalerstrasse 585',	47.4202,	8.50287,	'Zürich',	8046),
(270,	'4000805500',	2855160,	1.5,	NULL,	120,	'Spiserstrasse',	47.3794,	8.49348,	'Zürich',	8047),
(271,	'4000845069',	1940520,	1.5,	0,	23,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(272,	'4000845062',	2113560,	1.5,	0,	24,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(273,	'4000898098',	2360760,	1.5,	0,	23,	'Limmattalstrasse 281',	47.41,	8.49226,	'Zürich',	8049),
(274,	'4000845060',	2694480,	1.5,	3,	130,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(275,	'4000987737',	1798380,	1.5,	NULL,	130,	'Wehntalerstrasse 585',	47.4202,	8.50287,	'Zürich',	8046),
(276,	'4000857145',	3028200,	1.5,	1,	150,	'Frohalpstrasse 27',	47.3428,	8.52497,	'Zürich',	8038),
(277,	'4000805499',	3263040,	1.5,	NULL,	140,	'Spiserstrasse',	47.3794,	8.49348,	'Zürich',	8047),
(278,	'4000845065',	1959060,	1.5,	2,	23,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(279,	'4000845070',	1446120,	1.5,	1,	17,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(280,	'4000898089',	1718040,	1.5,	3,	13,	'Limmattalstrasse 281',	47.4027,	8.49058,	'Zürich',	8049),
(281,	'4000720563',	2688300,	1.5,	0,	150,	'Immenweg 23',	47.4096,	8.53037,	'Zürich',	8050),
(282,	'4000845068',	2317500,	1.5,	1,	120,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(283,	'4000845059',	2855160,	1.5,	3,	130,	'Witikonerstrasse 445',	47.3609,	8.59776,	'Zürich',	8053),
(284,	'4000212092',	0,	1.5,	NULL,	120,	'Weingartenweg 2 & 4',	47.4012,	8.49976,	'Zürich',	8049),
(285,	'4000179015',	0,	1.5,	0,	260,	NULL,	47.3591,	8.55291,	'Zürich',	8008),
(286,	'4000247430',	3225960,	1.5,	NULL,	NULL,	NULL,	47.3579,	8.60176,	'Zürich',	8053),
(287,	'4001012493',	6180000,	2.5,	NULL,	510,	NULL,	47.386,	8.47935,	'Zürich',	8048),
(288,	'4000732221',	2929320,	1.5,	4,	140,	'Grossmannstrasse 25',	47.3958,	8.50733,	'Zürich',	8049),
(289,	'4001017489',	NULL,	2.5,	NULL,	900,	'Privatstrasse',	47.3551,	8.54344,	'Zürich',	8038),
(290,	'4000995033',	1631520,	1.5,	NULL,	17,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(291,	'4000983938',	2360760,	1.5,	0,	120,	'Kienastenwiesweg 50',	47.3553,	8.6052,	'Zürich',	8053),
(292,	'4000971329',	896100,	2,	4,	13,	'Schaffhauserstrasse 221',	47.402,	8.54562,	'Zürich',	8057),
(293,	'4000948933',	5178840,	1.5,	NULL,	170,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(294,	'4000932330',	2657400,	1.5,	5,	130,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(295,	'4000920327',	1718040,	1,	3,	15,	NULL,	47.3518,	8.50859,	'Zürich',	8045),
(296,	'4000904305',	5253000,	2,	NULL,	270,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(297,	'4000860876',	3114720,	1.5,	NULL,	180,	NULL,	47.4229,	8.51473,	'Zürich',	8046),
(298,	'4000854640',	10252600,	1.5,	23,	360,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(299,	'4000841256',	3386640,	1.5,	NULL,	160,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(300,	'4000838744',	1638930,	1.5,	0,	23,	'Michelstrasse 9',	47.405,	8.49478,	'Zürich',	8049),
(301,	'4000812894',	2632680,	1.5,	NULL,	140,	'Seebacherstrasse 28',	47.4209,	8.53682,	'Zürich-Seebach',	8052),
(302,	'4000498195',	4906920,	1.5,	NULL,	170,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(303,	'4000412399',	0,	1.5,	3,	200,	'Ackersteinstrasse 120',	47.398,	8.50546,	'Zürich',	8049),
(304,	'4001063449',	791040,	1.5,	2,	19,	NULL,	47.4242,	8.54108,	'Zürich',	8052),
(305,	'4001018413',	852840,	1,	NULL,	17,	'Käshaldenstrasse 39',	47.4296,	8.53902,	'Zürich',	8052),
(306,	'4001015887',	0,	1.5,	12,	200,	'Pfingstweidstrasse 98',	47.3907,	8.51047,	'Zürich',	8005),
(307,	'4001010857',	803400,	2.5,	5,	10,	'Brauerstrasse',	47.3774,	8.52751,	'Zürich',	8004),
(308,	'4000990327',	1545000,	1.5,	0,	19,	'Jakob-Fügli-Strasse 2',	47.3898,	8.48483,	'Zürich',	8048),
(309,	'4001003036',	1928160,	1.5,	2,	22,	NULL,	47.4045,	8.49703,	'Zürich',	8049),
(310,	'4001002482',	3392820,	1.5,	3,	150,	NULL,	47.3983,	8.5469,	'Zürich',	8057),
(311,	'4000992945',	840480,	1,	3,	17,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(312,	'4000988894',	11976800,	1.5,	3,	300,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(313,	'4000964175',	7663200,	NULL,	NULL,	350,	NULL,	47.3671,	8.56792,	'Zürich',	8032),
(314,	'4000957489',	8034000,	2.5,	NULL,	210,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(315,	'4000907272',	2342220,	2.5,	NULL,	180,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(316,	'4000878378',	4511400,	1,	NULL,	240,	NULL,	47.3404,	8.52947,	'Zürich',	8038),
(317,	'4000856865',	2830440,	1.5,	NULL,	130,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(318,	'4000807636',	0,	6,	NULL,	NULL,	NULL,	47.3808,	8.51728,	'Zürich',	8004),
(319,	'4000765155',	1854000,	1.5,	NULL,	23,	NULL,	47.4123,	8.55722,	'Zürich',	8050),
(320,	'4000645068',	2286600,	1.5,	2,	140,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(321,	'4000493669',	0,	1.5,	1,	140,	'Frohalpstrasse 53',	47.3418,	8.52484,	'Zürich',	8038),
(322,	'4000493569',	0,	1.5,	0,	130,	'Frohalpstrasse 53',	47.3418,	8.52484,	'Zürich',	8038),
(323,	'4000391818',	2595600,	1.5,	NULL,	160,	NULL,	47.3952,	8.52163,	'Zürich',	8037),
(324,	'4000199184',	1841640,	1.5,	1,	120,	'Naglerwiesenstrasse 31',	47.4128,	8.48199,	'Zürich',	8049),
(325,	'4001040938',	3658560,	2.5,	NULL,	160,	NULL,	47.3628,	8.49366,	'Zürich',	8055),
(326,	'4001029108',	0,	2.5,	NULL,	410,	'Auf Anfrage',	47.378,	8.58645,	'Zürich',	8044),
(327,	'4001018233',	2311320,	1.5,	NULL,	21,	NULL,	47.3671,	8.56792,	'Zürich',	8032),
(328,	'4001017495',	NULL,	2.5,	NULL,	900,	'Privatstrasse',	47.3551,	8.54344,	'Zürich',	8038),
(329,	'4000946027',	2348400,	1.5,	0,	140,	'Riedhofstrasse 299',	47.4077,	8.48509,	'Zürich',	8049),
(330,	'4000735221',	1946700,	1.5,	2,	24,	'Stampfenbrunnenstrasse',	47.3863,	8.47832,	'Zürich',	8048),
(331,	'3002494724',	0,	NULL,	NULL,	NULL,	'Glatttalstrasse 14, 16',	47.4236,	8.54987,	'Zürich-Seebach',	8052),
(332,	'4001015888',	0,	1.5,	NULL,	150,	NULL,	47.3742,	8.53963,	'Zürich',	8001),
(333,	'4000996551',	NULL,	1.5,	NULL,	NULL,	NULL,	47.3891,	8.51824,	'Zürich',	8005),
(334,	'4000912907',	0,	1.5,	0,	150,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(335,	'4000458462',	1952880,	1.5,	3,	120,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(336,	'4001066174',	791040,	1,	NULL,	NULL,	'Käshaldenstrasse',	47.4311,	8.53357,	'Zürich',	8052),
(337,	'4000960016',	1328700,	1.5,	2,	17,	NULL,	47.4124,	8.54844,	'Zürich',	8050),
(338,	'4000768268',	1730400,	1,	3,	160,	NULL,	47.3598,	8.52972,	'Zürich',	8002),
(339,	'4000278538',	4449600,	1.5,	0,	190,	NULL,	47.4045,	8.49703,	'Zürich',	8049),
(340,	'4000276508',	5308620,	2.5,	NULL,	500,	NULL,	47.3886,	8.54399,	'Zürich',	8006),
(341,	'3003279014',	1205100,	1.5,	NULL,	140,	NULL,	47.3756,	8.5444,	'Zürich',	8000),
(342,	'4001002400',	2892240,	1.5,	0,	160,	NULL,	47.4229,	8.51473,	'Zürich',	8046),
(343,	'4001002298',	3127080,	1.5,	NULL,	170,	NULL,	47.4229,	8.51473,	'Zürich',	8046),
(344,	'4000898994',	1730400,	1.5,	NULL,	160,	NULL,	47.3715,	8.54518,	'Zürich',	8001),
(345,	'4000465451',	NULL,	1.5,	NULL,	180,	NULL,	47.3756,	8.54435,	'Zürich',	8000),
(346,	'4001064863',	4437240,	1.5,	NULL,	NULL,	NULL,	47.3992,	8.54174,	'Zürich',	8057),
(347,	'4000365491',	61800,	NULL,	NULL,	NULL,	NULL,	47.3404,	8.52947,	'Zürich',	8000),
(348,	'4000263195',	NULL,	2,	NULL,	260,	'Riva Bianca 4',	47.3559,	8.57039,	'Zürich',	8008),
(349,	'4000832669',	1668600,	1.5,	NULL,	19,	'Regensbergstrasse 138',	47.4081,	8.54289,	'Zürich',	8050),
(350,	'4000707832',	1897260,	1,	0,	16,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(351,	'4000707685',	3677100,	1.5,	1,	170,	'Rieterstrasse 102',	47.3535,	8.52616,	'Zürich',	8002),
(352,	'4000707683',	1211280,	2.5,	0,	11,	'Rieterstrasse 102',	47.3535,	8.52616,	'Zürich',	8002),
(353,	'4000701969',	3521360,	1.5,	-1,	200,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(354,	'4000701938',	1594440,	1.5,	3,	120,	NULL,	47.3628,	8.49366,	'Zürich',	8055),
(355,	'4000610590',	1903440,	1.5,	5,	20,	'Spiserstrasse',	47.3794,	8.49348,	'Zürich',	8047),
(356,	'4000610540',	2144460,	1.5,	6,	19,	'Spiserstrasse',	47.3794,	8.49348,	'Zürich',	8047),
(357,	'4000555977',	1730400,	1.5,	2,	15,	'Rieterstrasse 96',	47.3534,	8.52586,	'Zürich',	8002),
(358,	'4000555976',	1297800,	2.5,	0,	11,	'Rieterstrasse 96',	47.3534,	8.52586,	'Zürich',	8002),
(359,	'4000555975',	1854000,	1.5,	4,	13,	'Rieterstrasse 96',	47.3534,	8.52586,	'Zürich',	8002),
(360,	'4000553939',	3831600,	1.5,	4,	130,	'Rieterstrasse 102',	47.3535,	8.52616,	'Zürich',	8002),
(361,	'4001051725',	2595600,	1.5,	2,	180,	NULL,	47.3404,	8.52947,	'Zürich',	8000),
(362,	'4001047672',	2719200,	1,	3,	150,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(363,	'4001029905',	2249520,	1.5,	1,	150,	NULL,	47.3518,	8.50859,	'Zürich',	8045),
(364,	'4001029904',	2088840,	1.5,	0,	130,	NULL,	47.3518,	8.50859,	'Zürich',	8045),
(365,	'4001029903',	2422560,	1.5,	3,	130,	NULL,	47.3518,	8.50859,	'Zürich',	8045),
(366,	'4001027640',	1816920,	1.5,	0,	21,	NULL,	47.4229,	8.51473,	'Zürich',	8046),
(367,	'4001021123',	0,	1.5,	NULL,	140,	NULL,	47.4009,	8.57813,	'Zürich',	8051),
(368,	'4001017247',	2342220,	1.5,	NULL,	140,	'Hirzenbachstrasse 76',	47.406,	8.58812,	'Zürich',	8051),
(369,	'4000735139',	2410200,	1.5,	4,	140,	'Grünhaldenstrasse 18',	47.4167,	8.54712,	'Zürich',	8050),
(370,	'4000734772',	2076480,	1.5,	0,	22,	'Grünhaldenstrasse 18',	47.4167,	8.54712,	'Zürich',	8050),
(371,	'4000728788',	2057940,	1.5,	1,	120,	'Apfelbaumstrasse 54',	47.4078,	8.55677,	'Zürich',	8050),
(372,	'4000712048',	0,	NULL,	NULL,	920,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(373,	'4000433483',	4103520,	1.5,	NULL,	200,	'Witikonerstrasse 117',	47.3617,	8.57379,	'Zürich',	8032),
(374,	'4000311773',	2311320,	1.5,	NULL,	21,	'Kapfsteig 50',	47.3618,	8.57345,	'Zürich',	8032),
(375,	'4001065911',	1631520,	1.5,	0,	22,	'Frankentalerstrasse 37',	47.4071,	8.47956,	'Zürich',	8049),
(376,	'4001061280',	791040,	1.5,	NULL,	NULL,	'Käshaldenstrasse 0',	47.4311,	8.53357,	'Zürich',	8052),
(377,	'4001058450',	1952880,	1.5,	1,	130,	'Ausserdofstrasse 11',	47.4242,	8.54108,	'Zürich',	8052),
(378,	'4001044906',	2410200,	1.5,	15,	19,	'Turbinenstrasse 60',	47.4115,	8.55305,	'Zürich',	8050),
(379,	'4001036504',	2620320,	1.5,	1,	22,	NULL,	47.3601,	8.52932,	'Zürich',	8002),
(380,	'4000973575',	0,	1.5,	2,	150,	'Rumpumpsteig 3',	47.3436,	8.53446,	'Zürich',	8038),
(381,	'4000966737',	0,	1.5,	2,	160,	'Rumpumpsteig 3',	47.3436,	8.53446,	'Zürich',	8038),
(382,	'4000946095',	3695640,	1.5,	3,	220,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(383,	'4000924869',	2336040,	1.5,	0,	120,	'Roswiesenstrasse 133',	47.4072,	8.57879,	'Zürich',	8051),
(384,	'4000892956',	0,	NULL,	NULL,	750,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(385,	'4000887335',	753960,	1.5,	NULL,	17,	'Käshaldenstrasse 37',	47.4295,	8.53918,	'Zürich',	8052),
(386,	'4000813189',	5314800,	1.5,	1,	130,	'Zähringerplatz 11',	47.3735,	8.54483,	'Zürich',	8001),
(387,	'4000807143',	2261880,	1.5,	0,	150,	'Michelstrasse 11',	47.4052,	8.49434,	'Zürich',	8049),
(388,	'4000733612',	19158000,	9.5,	5,	860,	NULL,	47.3952,	8.52163,	'Zürich',	8037),
(389,	'4001023826',	0,	1.5,	0,	130,	'Auhofstrasse 15',	47.4072,	8.56927,	'Zürich',	8051),
(390,	'4001010648',	2410200,	1.5,	NULL,	190,	'Marchwartstrasse 27',	47.3378,	8.52625,	'Zürich',	8038),
(391,	'4001005233',	1025880,	1.5,	10,	NULL,	'Route de la Glâne 19 - 1700 Fribourg',	47.3404,	8.52947,	'Zürich',	8000),
(392,	'4000955622',	1915800,	1.5,	1,	23,	'Werdhölzlistrasse 15',	47.3905,	8.48106,	'Zürich',	8048),
(393,	'4000277425',	1854000,	1.5,	NULL,	24,	'Wehntalerstrasse 585',	47.4202,	8.50287,	'Zürich',	8046),
(394,	'4001066810',	0,	2,	NULL,	370,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(395,	'4001063137',	1409040,	2,	1,	20,	'Badenerstrasse 595',	47.3853,	8.49389,	'Zürich',	8048),
(396,	'4001058124',	3584400,	1.5,	3,	140,	'Buchzelgstrasse 82',	47.3599,	8.58997,	'Zürich',	8053),
(397,	'4001047393',	1829280,	1.5,	1,	130,	NULL,	47.3729,	8.49065,	'Zürich',	8047),
(398,	'4001015108',	5438400,	NULL,	NULL,	NULL,	'Kalkbreitestrasse 97',	47.3717,	8.51645,	'Zürich',	8003),
(399,	'4001012334',	1421400,	1.5,	6,	120,	'Mühlackerstrasse 113',	47.4253,	8.49888,	'Zürich',	8046),
(400,	'4000995783',	0,	NULL,	NULL,	440,	NULL,	47.3518,	8.50859,	'Zürich',	8045),
(401,	'4000992139',	1792200,	1.5,	NULL,	140,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(402,	'4000986265',	2051760,	1.5,	NULL,	120,	'Holderbachweg',	47.4179,	8.50351,	'Zürich',	8046),
(403,	'4000979760',	1149480,	1.5,	3,	17,	'Fabrikstrasse 10',	47.3875,	8.52888,	'Zürich',	8005),
(404,	'4000976361',	1198920,	1.5,	3,	15,	'Fabrikstrasse 10',	47.3875,	8.52888,	'Zürich',	8005),
(405,	'4000971425',	2669760,	1.5,	1,	140,	'Holderbachweg',	47.4179,	8.50351,	'Zürich',	8046),
(406,	'4000971403',	1446120,	1.5,	0,	16,	'Holderbachweg',	47.4179,	8.50351,	'Zürich',	8046),
(407,	'4000930648',	2706840,	1.5,	4,	140,	'Grünhaldenstrasse 18',	47.4167,	8.54712,	'Zürich',	8050),
(408,	'4000828510',	8713800,	2.5,	NULL,	430,	'Kappelistrasse',	47.3537,	8.53174,	'Zürich',	8002),
(409,	'4001004115',	0,	1.5,	0,	200,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(410,	'4001004077',	2459640,	2.5,	3,	18,	NULL,	47.3591,	8.55291,	'Zürich',	8008),
(411,	'4000973598',	1915800,	1.5,	3,	23,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(412,	'4000969372',	2125920,	1.5,	2,	120,	NULL,	47.4123,	8.55722,	'Zürich',	8050),
(413,	'4000966594',	1421400,	1.5,	11,	NULL,	'Leutschenbachstrasse 46',	47.4159,	8.55566,	'Zürich',	8050),
(414,	'4000937664',	2002320,	1.5,	0,	120,	'Heizenholz 47',	47.4045,	8.49703,	'Zürich',	8049),
(415,	'4000933408',	185400,	1.5,	2,	15,	NULL,	47.4115,	8.55305,	'Zürich',	8050),
(416,	'4000828931',	2472000,	1.5,	14,	19,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(417,	'4000748967',	1903440,	1.5,	13,	22,	'Schärenmoosstrasse 78',	47.4187,	8.55721,	'Zürich',	8052),
(418,	'4000702154',	2842800,	1.5,	2,	120,	NULL,	47.3518,	8.50859,	'Zürich',	8045),
(419,	'4000701423',	1229820,	1.5,	4,	17,	NULL,	47.3808,	8.51728,	'Zürich',	8004),
(420,	'4000701370',	896100,	2.5,	0,	13,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(421,	'4000701287',	933180,	1.5,	2,	12,	NULL,	47.4045,	8.49703,	'Zürich',	8049),
(422,	'4001038227',	3201240,	1,	NULL,	180,	NULL,	47.386,	8.47935,	'Zürich',	8048),
(423,	'4001027715',	0,	1,	3,	19,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(424,	'4000984388',	1718040,	1.5,	2,	130,	'Naglerwiesenstrasse 78',	47.4131,	8.47993,	'Zürich',	8049),
(425,	'4000870126',	1829280,	1.5,	NULL,	20,	'Bühlwiesenstrasse 15',	47.4163,	8.54801,	'Zürich',	8052),
(426,	'4000838169',	4820400,	1.5,	3,	170,	'Minervastrasse 124',	47.3635,	8.55818,	'Zürich',	8032),
(427,	'4000751500',	0,	1.5,	3,	130,	'Rumpumpsteig 3',	47.3436,	8.53446,	'Zürich',	8038),
(428,	'4000735140',	2793360,	1.5,	3,	150,	'Grünhaldenstrasse 18',	47.4167,	8.54712,	'Zürich',	8050),
(429,	'4000743855',	2756280,	1.5,	1,	160,	'Probusweg 2',	47.4024,	8.54816,	'Zürich',	8057),
(430,	'4000743790',	2818080,	1.5,	0,	150,	'Probusweg 2',	47.4024,	8.54816,	'Zürich',	8057),
(431,	'4000712899',	2929320,	1.5,	3,	120,	'Limmattalstrasse 281',	47.41,	8.49226,	'Zürich',	8049),
(432,	'4000712889',	1891080,	1.5,	0,	18,	'Limmattalstrasse 281',	47.41,	8.49226,	'Zürich',	8049),
(433,	'4000712815',	2064120,	1.5,	3,	17,	'Limmattalstrasse 281',	47.4027,	8.49058,	'Zürich',	8049),
(434,	'4000701893',	3337200,	2,	NULL,	200,	NULL,	47.3671,	8.56792,	'Zürich',	8032),
(435,	'4000593699',	1594440,	1.5,	3,	140,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(436,	'4000567583',	3028200,	1.5,	1,	130,	'Toblerstrasse 50',	47.3804,	8.55676,	'Zürich',	8044),
(437,	'4000530858',	4017000,	1.5,	0,	190,	'Buchzelgstrasse 82',	47.3599,	8.58997,	'Zürich',	8053),
(438,	'3003316769',	2941680,	2.5,	NULL,	200,	'Saatlenstrasse 32',	47.4061,	8.57028,	'Zürich',	8051),
(439,	'3003286292',	4227120,	1.5,	0,	210,	'Frohalpstrasse 21',	47.3431,	8.52476,	'Zürich',	8038),
(440,	'4001065852',	1520280,	1.5,	4,	19,	'Spiserstrasse',	47.3794,	8.49348,	'Zürich',	8047),
(441,	'4001044360',	0,	1.5,	19,	150,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(442,	'4001026418',	2088840,	1.5,	NULL,	24,	'Regensbergstrasse 138',	47.4081,	8.54289,	'Zürich',	8050),
(443,	'4001023231',	1977600,	1.5,	NULL,	130,	'Lochbrunnenweg 3a',	47.3576,	8.59652,	'Zürich',	8053),
(444,	'4000949084',	605640,	2.5,	0,	10,	NULL,	47.3628,	8.49366,	'Zürich',	8055),
(445,	'4000924874',	2286600,	1.5,	4,	24,	'Roswiesenstrasse 133',	47.4072,	8.57879,	'Zürich',	8051),
(446,	'4000924854',	2583240,	1.5,	3,	140,	'Roswiesenstrasse 133',	47.4072,	8.57879,	'Zürich',	8051),
(447,	'4000924819',	2533800,	1.5,	2,	140,	'Roswiesenstrasse 133',	47.4072,	8.57879,	'Zürich',	8051),
(448,	'4000921979',	4449600,	2.5,	1,	220,	'Rieterstrasse 102',	47.3535,	8.52616,	'Zürich',	8002),
(449,	'4000645012',	2101200,	1.5,	1,	150,	'In der Looren 62',	47.3646,	8.59664,	'Zürich',	8053),
(450,	'4000490406',	1804560,	1.5,	NULL,	21,	NULL,	47.3404,	8.52947,	'Zürich',	8038),
(451,	'4000412874',	4264200,	1.5,	NULL,	170,	'Kapfsteig 50',	47.3618,	8.57345,	'Zürich',	8032),
(452,	'4000265807',	1594440,	1.5,	2,	130,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(453,	'3001233746',	3306300,	1.5,	18,	200,	'Leutschenbachstrasse 30',	47.4158,	8.55448,	'Zürich',	8050),
(454,	'4001021537',	3967560,	1.5,	2,	190,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(455,	'4001010623',	2323680,	1.5,	16,	120,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(456,	'4000964864',	2533800,	1.5,	2,	170,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(457,	'4000944857',	2459640,	1.5,	5,	120,	'Im Glockenacker',	47.36,	8.59997,	'Zürich',	8053),
(458,	'4000897250',	NULL,	1.5,	2,	210,	'Balgriststrasse 90',	47.3534,	8.5784,	'Zürich',	8008),
(459,	'4000734065',	1168020,	1.5,	1,	13,	NULL,	47.36,	8.59621,	'Zürich',	8053),
(460,	'4000643074',	3321130,	1.5,	1,	140,	NULL,	47.3886,	8.54399,	'Zürich',	8006),
(461,	'4000533056',	0,	1.5,	NULL,	190,	'Ackersteinstrasse 28',	47.3959,	8.51275,	'Zürich',	8049),
(462,	'4000502744',	0,	2,	23,	370,	'Turbinenstrasse 18',	47.3884,	8.51434,	'Zürich',	8005),
(463,	'4000420719',	4313640,	1.5,	17,	200,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(464,	'3003278455',	0,	1.5,	NULL,	23,	NULL,	47.4233,	8.54226,	'Zürich',	8052),
(465,	'3002233412',	3312480,	1.5,	0,	120,	'Spyristrasse 34',	47.383,	8.55302,	'Zürich',	8044),
(466,	'3002233411',	3683280,	1.5,	1,	140,	'Spyristrasse 34',	47.383,	8.55302,	'Zürich',	8044),
(467,	'4001061484',	0,	2.5,	4,	230,	NULL,	47.3343,	8.51244,	'Zürich',	8041),
(468,	'4001024131',	11000400,	NULL,	NULL,	530,	NULL,	47.3671,	8.56792,	'Zürich',	8032),
(469,	'4001065452',	6167640,	1,	NULL,	630,	'Roswiesenstrasse 157',	47.4082,	8.58069,	'Zürich',	8051),
(470,	'4001063580',	NULL,	1.5,	0,	150,	'Heizenholz 41',	47.4045,	8.49703,	'Zürich',	8049),
(471,	'4001060488',	3448440,	1.5,	4,	160,	'Birchdörfli 50',	47.4092,	8.53077,	'Zürich',	8050),
(472,	'4001058436',	3213600,	1.5,	3,	160,	'Binzallee 14',	47.3642,	8.51666,	'Zürich',	8055),
(473,	'4000921985',	2447280,	1.5,	1,	130,	'Birchdörfli 50',	47.4092,	8.53077,	'Zürich',	8050),
(474,	'4000894420',	17304000,	3,	NULL,	550,	NULL,	47.378,	8.58645,	'Zürich',	8044),
(475,	'4000769624',	2447280,	1,	NULL,	230,	NULL,	47.3715,	8.54518,	'Zürich',	8001),
(476,	'4001004079',	1668600,	1,	2,	19,	NULL,	47.3404,	8.52947,	'Zürich',	8038),
(477,	'4001060493',	NULL,	NULL,	NULL,	NULL,	'Hottingerstrasse',	47.3671,	8.56792,	'Zürich',	8032),
(478,	'4001057809',	NULL,	1.5,	2,	18,	'Käshaldenstrasse 13',	47.4293,	8.54088,	'Zürich',	8052),
(479,	'4000708076',	2163000,	1.5,	2,	140,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(480,	'4000708186',	0,	1.5,	1,	NULL,	NULL,	47.3404,	8.52947,	'Zürich',	8038),
(481,	'4000708282',	3337200,	1.5,	21,	140,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(482,	'4000718779',	1594440,	1.5,	NULL,	22,	'Frohburgstrasse 320',	47.4034,	8.55987,	'Zürich',	8057),
(483,	'4000872607',	3658560,	1.5,	3,	150,	'Schulhausstrasse 40a',	47.361,	8.52771,	'Zürich',	8002),
(484,	'4000909034',	2966400,	1.5,	1,	120,	'Edenstrasse',	47.36,	8.52196,	'Zürich',	8045),
(485,	'4000973152',	1297800,	1.5,	18,	14,	'Leutschenbachstrasse 40',	47.4152,	8.55385,	'Zürich',	8050),
(486,	'4001020330',	3164160,	1.5,	1,	140,	'Brandschenkestrasse 60',	47.3678,	8.52881,	'Zürich',	8002),
(487,	'4001044727',	4078800,	NULL,	NULL,	500,	'Schwamendingenstrasse 86',	47.4233,	8.54226,	'Zürich',	8052),
(488,	'4000982985',	NULL,	1,	0,	120,	'Im Sträler',	47.3717,	8.49916,	'Zürich',	8047),
(489,	'4001046726',	3646200,	1.5,	NULL,	170,	'Zürich',	47.3886,	8.54399,	'Zürich',	8006),
(490,	'4000718249',	1915800,	1.5,	NULL,	140,	'Michael-Maggi-Strasse 10',	47.4245,	8.49904,	'Zürich',	8046),
(491,	'4000660057',	2163000,	1,	0,	21,	'Biberlinstrasse 5',	47.3632,	8.56842,	'Zürich',	8032),
(492,	'4001063118',	4140600,	2,	6,	160,	'Limmatstrasse 260',	47.3891,	8.52584,	'Zürich',	8005),
(493,	'4001051084',	3201240,	1.5,	1,	160,	'Bristenstrasse 20',	47.3898,	8.48797,	'Zürich',	8048),
(494,	'3003232840',	1551180,	1.5,	NULL,	24,	'Michael-Maggi-Strasse 14',	47.4242,	8.49888,	'Zürich',	8046),
(495,	'4001063147',	0,	1.5,	2,	150,	'Katzenbachstrasse 211',	47.4237,	8.54229,	'Zürich',	8052),
(496,	'4001046723',	3151800,	1.5,	4,	150,	'Zürich',	47.3913,	8.50828,	'Zürich',	8005),
(497,	'4001005955',	4684440,	1.5,	0,	180,	'Zürich',	47.378,	8.58645,	'Zürich',	8044),
(498,	'4000990331',	2960220,	1.5,	3,	120,	NULL,	47.3913,	8.50827,	'Zürich',	8005),
(499,	'4000530783',	4140600,	1.5,	1,	200,	'Buchzelgstrasse 82',	47.3599,	8.58997,	'Zürich',	8053),
(500,	'4000277422',	1884900,	1.5,	NULL,	130,	'Wehntalerstrasse 585',	47.4202,	8.50287,	'Zürich',	8046),
(501,	'4000164282',	4511400,	1.5,	3,	190,	'Lehfrauenweg 17',	47.3598,	8.58941,	'Zürich',	8053),
(502,	'3003328585',	2447280,	1.5,	3,	180,	'Tulpenstrasse 35',	47.4055,	8.56723,	'Zürich',	8051),
(503,	'4001031981',	2027040,	1.5,	NULL,	130,	'Eisfeldstrasse 30',	47.415,	8.54894,	'Zürich',	8050),
(504,	'4000932544',	2954040,	1.5,	0,	130,	'Siewerdtstrasse 15',	47.4124,	8.54845,	'Zürich',	8050),
(505,	'4000834326',	3083820,	1.5,	3,	580,	NULL,	47.3404,	8.52947,	'Zürich',	8000),
(506,	'4000699640',	2657400,	1.5,	3,	150,	'Baumackerstrasse',	47.409,	8.544,	'Zürich',	8050),
(507,	'4000502926',	1854000,	1.5,	NULL,	22,	'Naglerwiesenstrasse 74',	47.4132,	8.48047,	'Zürich',	8049),
(508,	'4001024320',	2286600,	1.5,	0,	120,	'Werdhölzlistrasse 15',	47.3905,	8.48106,	'Zürich',	8048),
(509,	'4000972813',	NULL,	2,	NULL,	NULL,	'Gsteigstrasse 5',	47.4028,	8.49903,	'Zürich',	8049),
(510,	'4000936271',	1594440,	1.5,	1,	14,	'Bergstrasse 16',	47.3749,	8.56045,	'Zürich',	8044),
(511,	'4000823885',	2039400,	1.5,	1,	22,	'Birchdörfli 50',	47.4092,	8.53077,	'Zürich',	8050),
(512,	'4000745557',	2941680,	2.5,	NULL,	230,	'Grossackerstrasse 54',	47.3249,	8.51096,	'Zürich',	8041),
(513,	'4000354604',	1347240,	1.5,	1,	18,	'Badenerstrasse 841',	47.3933,	8.47446,	'Zürich',	8048),
(514,	'3003243010',	NULL,	2.5,	NULL,	400,	'Sonnenbergstrasse',	47.3671,	8.56792,	'Zürich',	8032),
(515,	'4000159545',	1545000,	1.5,	3,	120,	'Zürich',	47.4229,	8.51473,	'Zürich',	8046),
(516,	'4000999561',	2904600,	1.5,	4,	130,	'Immenweg 35',	47.4094,	8.52997,	'Zürich',	8050),
(517,	'4000999559',	2397840,	1.5,	1,	140,	'Immenweg 35',	47.4094,	8.52997,	'Zürich',	8050),
(518,	'4000999558',	2200080,	1.5,	3,	24,	'Immenweg 35',	47.4094,	8.52997,	'Zürich',	8050),
(519,	'4000973584',	3077640,	2.5,	NULL,	180,	'Frymannstrasse 62',	47.3359,	8.51562,	'Zürich',	8041),
(520,	'4000961564',	2706840,	1.5,	3,	120,	'Förrlibuckstrasse 183',	47.3916,	8.51041,	'Zürich',	8005),
(521,	'4000821602',	1297800,	1.5,	3,	16,	'Röschibachstrasse 71',	47.3935,	8.52817,	'Zürich',	8037),
(522,	'4001032275',	1965240,	1.5,	4,	19,	'Turbinenstrasse 56',	47.387,	8.51332,	'Zürich',	8005),
(523,	'4001011931',	0,	2.5,	NULL,	220,	'Im Waidegg 7',	47.3981,	8.53156,	'Zürich',	8037),
(524,	'4000999560',	2274240,	1.5,	0,	120,	'Immenweg 35',	47.4094,	8.52997,	'Zürich',	8050),
(525,	'4000999556',	2317500,	1.5,	3,	24,	'Immenweg 35',	47.4094,	8.52997,	'Zürich',	8050),
(526,	'4000877563',	2064120,	1,	1,	21,	'Biberlinstrasse 5',	47.3632,	8.56842,	'Zürich',	8032),
(527,	'4000771639',	4449600,	1.5,	NULL,	130,	'Schaffhauserstrasse 226b',	47.4017,	8.54645,	'Zürich',	8057),
(528,	'4000530848',	1668600,	1.5,	3,	23,	'Badenerstrasse 853',	47.3934,	8.47287,	'Zürich',	8048),
(529,	'4001053448',	2762460,	1.5,	2,	140,	'Anton-Graff-Strasse 74',	47.4991,	8.71201,	'Winterthur',	8400),
(530,	'4001019824',	1718040,	1.5,	2,	130,	'Schlosstalstrasse 84',	47.4976,	8.69969,	'Winterthur',	8406),
(531,	'4001019819',	1297800,	1.5,	1,	21,	'Schlosstalstrasse 84',	47.4976,	8.69969,	'Winterthur',	8406),
(532,	'4001053410',	2366940,	1.5,	0,	150,	'Anton-Graff-Strasse 74',	47.4991,	8.71201,	'Winterthur',	8400),
(533,	'4001019825',	976440,	1.5,	3,	12,	'Schlosstalstrasse 84',	47.4976,	8.69969,	'Winterthur',	8406),
(534,	'4001058886',	4449600,	NULL,	NULL,	730,	'Hörnlistrasse 66',	47.4899,	8.75069,	'Winterthur',	8400),
(535,	'4001058123',	1854000,	2.5,	NULL,	240,	'Churfirstenweg 7',	47.5115,	8.71869,	'Winterthur',	8400),
(536,	'4000813951',	2904600,	2.5,	NULL,	400,	NULL,	47.5066,	8.76055,	'Winterthur',	8404),
(537,	'4001065281',	1718040,	1.5,	NULL,	130,	'Breitestrasse 104',	47.4908,	8.72193,	'Winterthur',	8400),
(538,	'4001054076',	1347240,	1.5,	3,	24,	'Rychenbergstrasse 22',	47.5095,	8.72552,	'Winterthur',	8400),
(539,	'4001054075',	1229820,	1.5,	3,	140,	'Geerackerweg 24',	47.5142,	8.68853,	'Winterthur',	8408),
(540,	'4000339688',	1402860,	1.5,	3,	150,	'Winterthur',	47.5066,	8.76055,	'Winterthur',	8404),
(541,	'4001066059',	1155660,	1.5,	3,	160,	'Gotzenwilerstrasse 6',	47.4788,	8.77111,	'Winterthur',	8405),
(542,	'4001040419',	1427580,	1.5,	0,	23,	'Bergstrasse 11',	47.4967,	8.70632,	'Winterthur',	8400),
(543,	'4000974150',	2700660,	2.5,	NULL,	240,	'Arvenweg 29',	47.5146,	8.76163,	'Winterthur',	8404),
(544,	'4000946069',	1106220,	1.5,	1,	24,	'Landvogt-Waser-Strasse 77',	47.4857,	8.76693,	'Winterthur',	8405),
(545,	'4000264639',	3071460,	1.5,	2,	200,	'Kanzleistrasse 9',	47.4837,	8.76195,	'Winterthur',	8405),
(546,	'4000143222',	1415220,	1.5,	1,	22,	'Kanzleistrasse 9',	47.4837,	8.76195,	'Winterthur',	8405),
(547,	'3003315968',	2027040,	1.5,	2,	210,	'Schlossackerstrasse 48',	47.509,	8.76554,	'Winterthur',	8404),
(548,	'3003237843',	1477020,	1.5,	2,	22,	'Kanzleistrasse 9',	47.4837,	8.76195,	'Winterthur',	8405),
(549,	'4000959727',	6056400,	NULL,	NULL,	NULL,	NULL,	47.4857,	8.72929,	'Winterthur',	8400),
(550,	'4000689423',	0,	NULL,	NULL,	NULL,	NULL,	47.4857,	8.72929,	'Winterthur',	8400),
(551,	'4000986591',	1421400,	2.5,	NULL,	180,	'Etzbergstrasse 21 f',	47.4916,	8.76476,	'Winterthur',	8405),
(552,	'3003232207',	1724220,	1.5,	0,	120,	'Kanzleistrasse 9',	47.4837,	8.76195,	'Winterthur',	8405),
(553,	'4000993194',	0,	2.5,	4,	160,	'Wingertlistrasse 46A',	47.4877,	8.75992,	'Winterthur',	8405),
(554,	'4000941242',	2653690,	2.5,	NULL,	260,	'Bachtelstrasse 40',	47.5098,	8.71851,	'Winterthur',	8400),
(555,	'4000940958',	1347240,	1.5,	NULL,	130,	'Zinzikerbergstrasse 72',	47.5147,	8.75415,	'Winterthur',	8404),
(556,	'4000931693',	729240,	1.5,	NULL,	15,	'Rychenbergstrasse 23',	47.5098,	8.72569,	'Winterthur',	8400),
(557,	'4000930309',	1149480,	1.5,	1,	24,	'Tössuferweg 4',	47.493,	8.70332,	'Winterthur',	8406),
(558,	'4000840594',	3077640,	1.5,	NULL,	290,	'Im Eichbühl 43',	47.4868,	8.77339,	'Winterthur',	8405),
(559,	'4000782455',	1545000,	1.5,	NULL,	150,	'Bergblumenstrasse 36',	47.5062,	8.69403,	'Winterthur',	8408),
(560,	'4000427450',	2706840,	NULL,	NULL,	360,	'Oberer Graben 14',	47.4989,	8.73139,	'Winterthur',	8400),
(561,	'4001057545',	1844730,	1.5,	NULL,	200,	'Weierholzstrasse 6',	47.473,	8.77517,	'Winterthur-Gotzenwil',	8405),
(562,	'4001049002',	729240,	1.5,	NULL,	22,	'Ruediweg 21',	47.5158,	8.7632,	'Winterthur',	8404),
(563,	'4000974149',	2447280,	2.5,	NULL,	250,	'Arvenweg 31',	47.5146,	8.76175,	'Winterthur',	8404),
(564,	'3003480479',	1174200,	1.5,	2,	170,	'Haltenrebenstrasse 53',	47.5166,	8.68065,	'Winterthur',	8408),
(565,	'4001028995',	2954040,	2.5,	3,	230,	NULL,	47.4767,	8.78167,	'Winterthur',	8405),
(566,	'4000974148',	2181540,	2.5,	NULL,	180,	'Arvenweg 33',	47.5146,	8.76175,	'Winterthur',	8404),
(567,	'4001057546',	1721130,	1.5,	NULL,	200,	'Eidbergstrasse 16',	47.4731,	8.77479,	'Winterthur-Gotzenwil',	8405),
(568,	'4001057539',	2181540,	1.5,	NULL,	280,	'Oberseenerstrasse 46',	47.4804,	8.76817,	'Winterthur',	8405),
(569,	'4001043871',	2447280,	1.5,	NULL,	160,	'Im Eichbühl 50',	47.4859,	8.77333,	'Winterthur',	8405),
(570,	'4001043845',	2138280,	1.5,	NULL,	160,	'Im Eichbühl 52',	47.4859,	8.77333,	'Winterthur',	8405),
(571,	'4001039347',	1149480,	1.5,	2,	170,	NULL,	47.4857,	8.72929,	'Winterthur',	8400),
(572,	'4000892707',	587100,	1,	0,	13,	'Reismühlestrasse 4',	47.5062,	8.76798,	'Winterthur',	8409),
(573,	'4000762794',	1458480,	1.5,	NULL,	20,	'Schaffhauserstrasse 84',	47.5146,	8.72156,	'Winterthur',	8400),
(574,	'4000762793',	2200080,	1.5,	NULL,	170,	'Schaffhauserstrasse 84',	47.5146,	8.72156,	'Winterthur',	8400),
(575,	'4000762792',	2175360,	1.5,	NULL,	170,	'Schaffhauserstrasse 84',	47.5146,	8.72156,	'Winterthur',	8400),
(576,	'4000762791',	2706840,	1.5,	NULL,	260,	'Schaffhauserstrasse 84',	47.5146,	8.72156,	'Winterthur',	8400),
(577,	'4000343172',	0,	1.5,	0,	21,	'Bachwiesenstrasse 5',	47.4827,	8.77082,	'Winterthur',	8405),
(578,	'4001062181',	0,	1.5,	NULL,	200,	NULL,	47.4875,	8.70535,	'Winterthur',	8406),
(579,	'4000929556',	1205100,	1.5,	0,	150,	'Kirchackerstrasse 20',	47.48,	8.76731,	'Winterthur',	8405),
(580,	'4001062463',	8256480,	2,	NULL,	400,	NULL,	47.4857,	8.72929,	'Winterthur',	8400),
(581,	'4001049113',	1062960,	1.5,	3,	19,	'Schlossackerstrasse 48',	47.509,	8.76555,	'Winterthur',	8404),
(582,	'4001030973',	2163000,	1.5,	NULL,	180,	NULL,	47.4767,	8.78167,	'Winterthur',	8405),
(583,	'4000947043',	4573200,	2,	NULL,	400,	'Seidenstrasse 41',	47.4992,	8.73607,	'Winterthur',	8400),
(584,	'4000789781',	2163000,	1.5,	4,	130,	'Turmstrasse 80',	47.4914,	8.73205,	'Winterthur',	8400),
(585,	'4000736106',	1940520,	2,	NULL,	220,	NULL,	47.5181,	8.75763,	'Winterthur',	8404),
(586,	'4000694951',	1532640,	1.5,	NULL,	120,	NULL,	47.4767,	8.78167,	'Winterthur',	8405),
(587,	'4000460408',	1186560,	1.5,	NULL,	21,	NULL,	47.4767,	8.78167,	'Winterthur',	8405),
(588,	'4000694950',	1236000,	1.5,	NULL,	21,	NULL,	47.4767,	8.78167,	'Winterthur',	8405),
(589,	'4000719609',	3034990,	2.5,	0,	220,	NULL,	47.4857,	8.72929,	'Winterthur',	8400),
(590,	'4000570426',	NULL,	1,	NULL,	220,	'Am Iberghang 71',	47.4767,	8.78167,	'Winterthur',	8405),
(591,	'4001066189',	2441100,	1,	NULL,	NULL,	'Am Iberghang',	47.4633,	8.77774,	'Winterthur',	8405),
(592,	'4001026594',	1724220,	1.5,	NULL,	190,	'Maria-Kübler-Weg 17',	47.4851,	8.69403,	'Winterthur',	8406),
(593,	'4000761373',	1402860,	1.5,	2,	140,	'Tösstalstrasse',	47.4695,	8.76438,	'Winterthur',	8405),
(594,	'4000701232',	1507920,	1.5,	NULL,	150,	NULL,	47.5044,	8.77493,	'Winterthur',	8409),
(595,	'4001039349',	1106220,	1.5,	1,	120,	NULL,	47.4857,	8.72929,	'Winterthur',	8400),
(596,	'4000967298',	976440,	1.5,	3,	120,	'Landvogt-Waser-Strasse 44',	47.4869,	8.76181,	'Winterthur',	8405),
(597,	'4000762004',	1371960,	1.5,	NULL,	140,	'Tösstalstrasse',	47.4656,	8.75934,	'Winterthur',	8405),
(598,	'4001057816',	1334880,	1.5,	1,	NULL,	'Dättnauerstrasse 76B',	47.4825,	8.69606,	'Winterthur',	8406),
(599,	'4001026659',	1106220,	1.5,	3,	120,	NULL,	47.4875,	8.70535,	'Winterthur',	8406),
(600,	'4000981268',	1211280,	1.5,	1,	22,	NULL,	47.5087,	8.68735,	'Winterthur',	8408),
(601,	'4001063390',	1168020,	1.5,	2,	130,	'Kirchackerstrasse',	47.4802,	8.76739,	'Winterthur',	8405),
(602,	'4001028647',	3708000,	NULL,	NULL,	650,	'Wülflingerstrasse 321',	47.5132,	8.68612,	'Winterthur',	8408),
(603,	'4000255585',	1903440,	1.5,	3,	230,	'Chlösterlistrasse 80',	47.4628,	8.77758,	'Winterthur',	8405),
(604,	'4001032828',	2305140,	NULL,	NULL,	NULL,	'Bürglistrasse 0',	47.5059,	8.71362,	'Winterthur',	8400),
(605,	'4001030104',	1100040,	1,	2,	120,	'Auf Pünten 12',	47.4835,	8.76626,	'Winterthur',	8405),
(606,	'4001030099',	821940,	1.5,	NULL,	19,	'Ibergstrasse 53',	47.4646,	8.77676,	'Winterthur',	8405),
(607,	'4001027174',	2441100,	1,	NULL,	220,	'Am Iberghang 0',	47.4633,	8.77774,	'Winterthur',	8405),
(608,	'4001001324',	1952880,	1.5,	6,	140,	'Gertrudstrasse 20',	47.5003,	8.72029,	'Winterthur',	8400),
(609,	'4001001322',	2336040,	1.5,	6,	160,	'Gertrudstrasse 20',	47.5003,	8.72029,	'Winterthur',	8400),
(610,	'4000969168',	1790960,	1.5,	NULL,	150,	'Im Schützenbühl 28',	47.4791,	8.76435,	'Winterthur',	8405),
(611,	'4000910261',	1718040,	2,	NULL,	210,	'Hofackerstrasse 4 / Brunnenweg 4',	47.5181,	8.75763,	'Winterthur',	8404);

-- 2024-04-22 10:33:07
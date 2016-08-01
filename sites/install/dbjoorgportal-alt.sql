-- Adminer 4.1.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE `tblabteilung` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldAbteilung` varchar(80) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tblabteilung` (`fldindex`, `fldAbteilung`) VALUES
(1,	'Brotwaren'),
(2,	'Milchprodukte'),
(3,	'Getraenke'),
(4,	'Obst / Gemuese'),
(5,	'Gewuerze'),
(6,	'(ohne)'),
(7,	'Mehl / Zucker'),
(8,	'Kaffee / Tee'),
(9,	'Konserven'),
(10,	'TiefkÃ¼hlkost'),
(11,	'002 Marmelade / Muesli');

CREATE TABLE `tbladrantw` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldadrind` bigint(20) NOT NULL,
  `fldadrbez` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fldstatus` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fldeingdat` date NOT NULL,
  `fldantwdat` date NOT NULL,
  `fldbemerk` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbladr_group` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldtyp` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbladr_group` (`fldindex`, `fldbez`, `fldtyp`) VALUES
(3,	'Privat',	''),
(13,	'Rechtsschutz',	''),
(23,	'Beschenkte',	''),
(33,	'(ohne)',	''),
(43,	'Bekannte Christiane',	''),
(53,	'Bekannte Horst',	''),
(63,	'Folkband Ohrensausen',	''),
(73,	'Quasselstrippe',	''),
(83,	'Familie Dreger',	''),
(93,	'Familie Meyer Köln',	''),
(103,	'Kindergarten',	''),
(113,	'Arbeit',	''),
(123,	'Bekannte Frieda',	''),
(133,	'Krankenhaus',	''),
(143,	'Unvollständig',	''),
(144,	'Geburtstagsfeier Horst',	''),
(223,	'Geburtstagsfeier Horst',	''),
(153,	'Firmen',	''),
(163,	'Auto',	'AUTO'),
(173,	'Friend',	''),
(183,	'Rechnungen',	'RECH'),
(193,	'Adressliste Reise',	''),
(203,	'Krankenkasse',	''),
(213,	'Familiencafe',	''),
(224,	'Lohnsteuerverein',	'LOHNSTEUER'),
(225,	'Arm trotz Arbeit',	''),
(226,	'Flüchtlingsarbeit',	''),
(231,	'FlüchtlingeInternetAG',	'');

CREATE TABLE `tbladr_grpdetail` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldgrp_ind` bigint(20) NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbladr_liste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_group` bigint(20) NOT NULL,
  `fldid_typ` bigint(20) NOT NULL,
  `fldfirstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `fldlastname` varchar(255) COLLATE utf8_bin NOT NULL,
  `fldcompany` varchar(255) COLLATE utf8_bin NOT NULL,
  `fldbriefanrede` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldanrede` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldstreet` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldplz` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldtown` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldtelefon` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldhandy` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldemail` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldbemerk` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldoeffnungszeiten` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldstatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `flderfdatum` date NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbladr_liste` (`fldindex`, `fldid_group`, `fldid_typ`, `fldfirstname`, `fldlastname`, `fldcompany`, `fldbriefanrede`, `fldanrede`, `fldstreet`, `fldplz`, `fldtown`, `fldtelefon`, `fldhandy`, `fldemail`, `fldbemerk`, `fldoeffnungszeiten`, `fldstatus`, `flderfdatum`) VALUES
(3,	0,	3,	'Horst',	'Meyer',	'Mauser Werke',	'Sehr geehrter',	'Herr',	'Merkenicher Hauptstr. 160',	'50769',	'Köln',	'0221/5302037',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(443,	0,	13,	'',	'Krankenhaus',	'',	'',	'',	'Am Knappschaftskrankenhaus 1',	'44309',	'Dortmund',	'',	'',	'',	'ehem.Wieckesweg 27',	'',	'',	'0000-00-00'),
(13,	0,	3,	'Ralf',	'Beckers',	'Schule',	'Sehr geehrter',	'Herr',	'Moselstr. 10-12',	'50354',	'Hürth-Efferen',	'02233/6279892',	'0151 25570242',	'milkabaer@yahoo.de',	'Weizenbier',	'',	'offen',	'0000-00-00'),
(23,	0,	3,	'Christiane',	'Meyer',	'Kliniken der Stadt Köln Krankenhaus Merheim',	'',	'',	'Merkenicher Hauptstr. 160',	'50769',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(33,	0,	3,	'Hadwig',	'Fonfara',	'',	'',	'',	'Schulstr.29',	'51103',	'Köln',	'0221/872901',	'',	'',	'.',	'',	'offen',	'0000-00-00'),
(43,	0,	3,	'Edgar',	'Meyer',	'',	'',	'',	'Siegenerstr.55',	'65936',	'Frankfurt',	'',	'',	'',	'',	'',	'',	'0000-00-00'),
(53,	0,	3,	'Erna',	'Meyer',	'',	'',	'',	'Auf dem Dreieck 4',	'53567',	'Asbach / Ww',	'02683/4715',	'0160 4157005',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(73,	0,	3,	'Hartmut',	'Schulte',	'',	'',	'',	'MÃ¼hlentorweg 4a',	'59174',	'Kamen',	'02307/72613',	'',	'',	'',	'',	'',	'0000-00-00'),
(83,	0,	3,	'Brigitte',	'Schulte',	'',	'',	'',	'MÃ¼hlentorweg 4a',	'59174',	'Kamen',	'02307/72613',	'',	'',	'',	'',	'',	'0000-00-00'),
(93,	0,	3,	'Rahel',	'Gessat',	'',	'',	'',	'Maria-Hilf-Str. 19',	'50669',	'Köln',	'0221/2704330',	'',	'',	'.',	'',	'offen',	'0000-00-00'),
(103,	0,	3,	'Dagmar',	'LiÃŸke',	'',	'',	'',	'MachabÃ¤erstr. 73',	'50668',	'KÃ¶ln',	'0221/131806',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(113,	0,	3,	'Sabine',	'Dreger',	'',	'Liebe',	'',	'Bertold-Brecht-Straße 1/1',	'71093',	'Weil im Schönbuch',	'07157/523879',	'0160 7868172',	'sabine@dregers.de',	'',	'',	'offen',	'0000-00-00'),
(123,	0,	3,	'Manfred',	'Losse',	'',	'',	'',	'Tilsiter Str. 37',	'50259',	'Pulheim Brauweiler',	'02234/484784',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(133,	0,	3,	'Horst',	'Jewanski',	'',	'',	'Herr',	'Hochstraße 86',	'41372',	'Niederkrüchten',	'',	'',	'',	'.',	'',	'offen',	'0000-00-00'),
(143,	0,	3,	'Angelika',	'Weber',	'',	'',	'',	'Moselstr. 2',	'50859',	'Köln Frechen',	'02234/70894',	'',	'',	'.',	'',	'offen',	'1970-01-01'),
(153,	0,	3,	'Frieda Lina',	'Meyer',	'',	'',	'',	'Merkenicher Hauptstr. 160',	'50769',	'KÃ¶ln',	'',	'0172',	'frieda.meyer@horald.de',	'',	'',	'',	'0000-00-00'),
(163,	0,	3,	'Ruth',	'Krabbe',	'',	'',	'',	'Clevischer Ring 93-95',	'51063',	'KÃ¶ln',	'0221/4200060',	'',	'',	'',	'',	'',	'0000-00-00'),
(173,	0,	3,	'Harry',	'Dreger',	'',	'',	'',	'Bertold-Brecht-StraÃŸe 1/1',	'71093',	'Weil im SchÃ¶nbuch',	'07157/523879',	'',	'',	'',	'',	'',	'0000-00-00'),
(183,	0,	3,	'Antonia',	'Dreger',	'',	'',	'',	'',	'',	'Köln',	'',	'',	'',	'',	'',	'offen',	'2015-08-19'),
(193,	0,	3,	'Damaris',	'Dreger',	'',	'',	'',	'Bertold-Brecht-StraÃŸe 1/1',	'71093',	'Weil im SchÃ¶nbuch',	'07157/523879',	'',	'',	'',	'',	'',	'0000-00-00'),
(203,	0,	3,	'Louis',	'Dreger',	'',	'',	'',	'Bertold-Brecht-StraÃŸe 1/1',	'71093',	'Weil im SchÃ¶nbuch',	'07157/523879',	'',	'',	'',	'',	'',	'0000-00-00'),
(213,	0,	3,	'Orell',	'Schulte',	'',	'',	'',	'Ostkamp 40',	'59174',	'Kamen',	'02307/970275',	'',	'',	'',	'',	'',	'0000-00-00'),
(223,	0,	3,	'Sylvia',	'Schulte',	'',	'',	'',	'Ostkamp 40',	'59174',	'Kamen',	'02307/970275',	'',	'',	'',	'',	'',	'0000-00-00'),
(233,	0,	3,	'Gerrit',	'Schulte',	'',	'',	'',	'Ostkamp 40',	'59174',	'Kamen',	'02307/970275',	'',	'',	'',	'',	'',	'0000-00-00'),
(243,	0,	3,	'Martin',	'LiÃŸke',	'',	'',	'',	'MachabÃ¤erstr. 73',	'50668',	'KÃ¶ln',	'0221/131806',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(253,	0,	3,	'Anja',	'Sauerland',	'',	'',	'Frau',	'',	'',	'KÃ¶ln',	'',	'0177-2782243',	'',	'',	'',	'',	'0000-00-00'),
(263,	0,	3,	'Joy',	'Ralfs Freundin',	'',	'',	'',	'Moselstr. 10-12',	'50354',	'HÃ¼rth-Efferen',	'02233/6279892',	'',	'',	'Limo',	'',	'zugesagt',	'0000-00-00'),
(273,	0,	3,	'Eva',	'Esche',	'',	'',	'',	'Merheimerstr. 210',	'50733',	'KÃ¶ln',	'0221/733573',	'',	'',	'',	'',	'',	'0000-00-00'),
(283,	0,	3,	'Hans',	'von Orth',	'',	'',	'',	'',	'',	'KÃ¶ln',	'',	'0172 2989359',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(293,	0,	3,	'Nina',	'RÃ¶thlein',	'',	'',	'',	'Merkenicher Hauptstr. 150d',	'50769',	'KÃ¶ln',	'0221/9228721',	'',	'',	'',	'',	'',	'0000-00-00'),
(303,	0,	3,	'Lili-Sue',	'Engel',	'',	'',	'',	'Dantestrasse 23',	'',	'Dormagen-Nievenheim',	'',	'',	'',	'',	'',	'',	'0000-00-00'),
(313,	0,	3,	'Andrea',	'Dahmann',	'',	'',	'',	'GÃ¶theallee 14b',	'01309',	'Dresden',	'03513/125026',	'',	'',	'',	'',	'',	'0000-00-00'),
(323,	0,	3,	'Hildegard',	'Daut',	'',	'',	'',	'Merkenicher Hauptstr. 205',	'50769',	'KÃ¶ln',	'',	'',	'',	'',	'',	'',	'0000-00-00'),
(333,	0,	3,	'Gudrun',	'Schauer',	'',	'',	'',	'Hundsdorf 51',	'94136',	'Thyrnau',	'08501495',	'',	'',	'',	'',	'',	'0000-00-00'),
(343,	0,	3,	'Iris',	'Burmeister',	'',	'',	'',	'Wormersdorferstr. 71',	'53359',	'Rheinbach',	'0222/57099844',	'',	'',	'',	'',	'',	'0000-00-00'),
(353,	0,	3,	'Klaus',	'Pannier',	'',	'',	'',	'In der Pietsch 13a',	'21224',	'Rosengarten',	'04108490698',	'',	'',	'',	'',	'',	'0000-00-00'),
(363,	0,	3,	'Mareike',	'Hoffmann',	'',	'',	'',	'SÃ¼danlage 7a',	'35390',	'Giessen',	'0641/41501',	'',	'',	'',	'',	'',	'0000-00-00'),
(373,	0,	3,	'Sandra',	'Witzig',	'',	'',	'',	'St. TÃ¶nnis StraÃŸe 95',	'50769',	'KÃ¶ln',	'0221/7127673',	'',	'',	'',	'',	'',	'0000-00-00'),
(383,	0,	3,	'Siggy',	'PlÃ¼ckhan',	'',	'',	'',	'Martinstr. 30',	'53332',	'Bornheim-Merten',	'02227923060',	'',	'',	'',	'',	'',	'0000-00-00'),
(393,	0,	3,	'Anette',	'Heidkam',	'',	'',	'',	'Am Weingardsberg 1',	'51143',	'Porz-Langel',	'02203/86219',	'',	'',	'',	'',	'',	'0000-00-00'),
(403,	0,	3,	'Frederike',	'Pannier',	'',	'',	'',	'In der Pietsch 13a',	'21224',	'Rosengarten',	'04108490698',	'',	'',	'',	'',	'',	'0000-00-00'),
(413,	0,	3,	'Sabine',	'Becker',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'0000-00-00'),
(433,	0,	3,	'Firma',	'Mauser-Werke GmbH',	'Mauser-Werke GmbH',	'',	'',	'SchildgesstraÃŸe 71-163',	'',	'50321 BrÃ¼hl',	'',	'',	'',	' ',	'',	'',	'0000-00-00'),
(863,	0,	0,	'Deborah',	'Wolf',	'',	'',	'',	'Vogelsangerweg 25',	'50354',	'HÃ¼rth',	'02233/7130847',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(853,	0,	0,	'Andreas',	'Wolf',	'',	'',	'',	'Vogelsangerweg 25',	'50354',	'HÃ¼rth',	'02233/7130847',	'01733263545',	'andi-wolf@gmx.de',	'.',	'',	'zugesagt',	'0000-00-00'),
(763,	0,	0,	'Pong',	'Sohn von Ralf',	'',	'',	'',	'Moselstr. 10-12',	'50354',	'HÃ¼rth-Efferen',	'02233/6279892',	'',	'',	'Cola',	'',	'zugesagt',	'0000-00-00'),
(923,	0,	0,	'Ruben',	'Baucks',	'',	'',	'',	'',	'50769',	'KÃ¶ln',	'0221/4719263',	'',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(913,	0,	0,	'Noel',	'Baucks',	'',	'',	'',	'',	'50769',	'KÃ¶ln',	'0221/4719263',	'',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(903,	0,	0,	'Xaver',	'Baucks',	'',	'',	'',	'',	'50769',	'KÃ¶ln',	'0221/4719263',	'',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(893,	0,	0,	'Gundolf',	'Baucks',	'',	'',	'',	'',	'50769',	'KÃ¶ln',	'0221/4719263',	'',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(883,	0,	0,	'Miriam',	'Baucks',	'',	'',	'',	'',	'50769',	'KÃ¶ln',	'0221/4719263',	'',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(793,	0,	0,	'Lewin',	'Gessat',	'',	'',	'',	'Maria-Hilf-Str. 19',	'50669',	'KÃ¶ln',	'0221/2704330',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(843,	0,	0,	'Wiebke',	'Mandt',	'',	'',	'',	'Aegidienbergerstr.9',	'50939',	'KÃ¶ln',	'0221/2780695',	'',	'',	'.',	'',	'versendet',	'0000-00-00'),
(803,	0,	0,	'Markus',	'Schulz',	'',	'',	'',	'Am HÃ¶fenweg 41',	'50769',	'KÃ¶ln',	'0221/7001519',	'',	'',	'Bier',	'',	'zugesagt',	'0000-00-00'),
(873,	0,	0,	'Christa',	'aus der Wieschen',	'',	'',	'',	'Diesterwegstr. 6',	'51109',	'KÃ¶ln',	'0221/98931874',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(783,	0,	0,	'JÃ¼rgen',	'Weber',	'',	'',	'',	'Moselstr. 2',	'50859',	'KÃ¶ln Frechen',	'02234/70894',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(733,	0,	0,	'Werner',	'Hippmann',	'',	'',	'',	'',	'50259',	'Pulheim Brauweiler',	'',	'',	'',	'.',	'',	'abgesagt',	'0000-00-00'),
(833,	0,	0,	'Birgit',	'Losse',	'',	'',	'',	'Tilsiter Str. 37',	'50259',	'Pulheim Brauweiler',	'02234/484784',	'',	'',	'.',	'',	'zugesagt',	'0000-00-00'),
(63,	0,	3,	'Heinz',	'Meyer',	'',	'',	'',	'Auf dem Dreieck 4',	'53567',	'Asbach / Ww',	'02683/4715',	'0162 6025335',	'',	'Teilchen',	'',	'zugesagt',	'0000-00-00'),
(943,	0,	0,	'Beate',	'',	'',	'',	'',	'',	'',	'KÃ¶ln',	'',	'',	'',	'Quiche',	'',	'zugesagt',	'0000-00-00'),
(963,	0,	0,	'Olaf',	'Bach',	'',	'',	'',	'Cleverstr. 28',	'',	'KÃ¶ln',	'0221/1396933',	'',	'',	'',	'',	'zugesagt',	'0000-00-00'),
(953,	0,	0,	'Meike',	'Bach',	'',	'',	'',	'Cleverstr. 28',	'',	'KÃ¶ln',	'0221/1396933',	'',	'',	'',	'',	'zugesagt',	'0000-00-00'),
(813,	0,	0,	'Dorothea',	'Schulz',	'',	'',	'',	'Am HÃ¶fenweg 41',	'50769',	'KÃ¶ln',	'0221/7001519',	'',	'',	'Limo',	'',	'zugesagt',	'0000-00-00'),
(773,	0,	0,	'Renate',	'Schulz',	'',	'',	'',	'Am HÃ¶fenweg 41',	'50769',	'KÃ¶ln',	'0221/7001519',	'',	'',	'Wasser, Kartoffelsalat',	'',	'zugesagt',	'0000-00-00'),
(823,	0,	0,	'Katharina',	'Schulz',	'',	'',	'',	'Am HÃ¶fenweg 41',	'50769',	'KÃ¶ln',	'0221/7001519',	'',	'',	'Limo',	'',	'zugesagt',	'0000-00-00'),
(964,	0,	0,	'',	'Lohnsteuerhilfeverein e.V.',	'Lohnsteuerhilfeverein e.V.',	'',	'',	'',	'',	'KÃ¶ln',	'',	'',	'',	'',	'',	'',	'0000-00-00'),
(965,	0,	0,	'',	'Rechtsschutz',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'0000-00-00'),
(966,	0,	0,	'Nina',	'HÃ¤mmerli',	'',	'',	'',	'',	'',	'',	'',	'',	'n.haemmerli@gmx.de',	'',	'',	'',	'2015-03-25'),
(976,	0,	0,	'',	'ALV E.V.',	'',	'',	'',	'Neusser Straße 594',	'50737',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(983,	0,	0,	'',	'Aktuell Lohnsteuerhilfeverein',	'',	'',	'',	'Bonner Wall 6',	'50677',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(981,	0,	0,	'',	'Aktuell e.V.',	'',	'',	'',	'Belvederestr. 53',	'50933',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(984,	0,	0,	'',	'Bergische Lohnsteurhilfe',	'',	'',	'',	'Neusser Str. 457',	'50733',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(985,	0,	0,	'',	'Deniz e.V.',	'',	'',	'',	'Auguststr. 52',	'50733',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(980,	0,	0,	'',	'ISAR E.V.',	'',	'',	'',	'Krefelder Straße 7',	'50670',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(978,	0,	0,	'',	'Kölner Lohnsteuerberatung ',	'',	'',	'',	'Hansaring 25 - 27',	'50670',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(986,	0,	0,	'',	'Ledia Lohnsteuerhilfeverein e.V.',	'',	'',	'',	'Eintrachtstr. 2',	'50668',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(979,	0,	0,	'',	'Lohn- und Einkommensteuer Hilfe-Ring Deutschland e.V.',	'',	'',	'',	'Hansaring 80',	'50670',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(982,	0,	0,	'',	'Lohnsteuerhilfe Bayern e.V.',	'',	'',	'',	'Friesenwall 5-7',	'50672',	'Köln',	'',	'',	'',	'',	'',	'geantwortet',	'0000-00-00'),
(987,	0,	0,	'',	'Lohnsteuerhilfe Rheinland e.V.',	'',	'',	'',	'Dellbrücker Hauptstr. 156',	'51069',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(988,	0,	0,	'',	'Lohnsteuerhilfe-IDL',	'',	'',	'',	'Eythstr. 10a',	'51103',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(989,	0,	0,	'',	'Lohnsteuerhilfeverein',	'',	'',	'',	'Dünnwalder Str. 45',	'51063',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(975,	0,	0,	'',	'Noris e.V. Lohnsteuerhilfe',	'',	'',	'',	'Hansaring 30',	'50670',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(990,	0,	0,	'',	'Rheingeld e.V.',	'',	'',	'',	'Merheimer Str. 377',	'50739',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(977,	0,	0,	'',	'STEUEREULE - DIE LOHNSTEUERBERATER',	'',	'',	'',	'Lindenstraße 14',	'50674',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(991,	0,	0,	'',	'Vereinigte Lohnsteuerhilfe',	'',	'',	'',	'Tarnowitzer Str. 6-8',	'51065',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(993,	0,	0,	'',	'HUK24 AG',	'',	'',	'',	'Willi-Hussong-Straße 2',	'96440',	'Coburg',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(999,	0,	0,	'',	'Allrecht Rechtsschutzversicherungen',	'',	'',	'',	'Liesegangstr. 15',	'40211',	'Düsseldorf',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1000,	0,	0,	'',	'Arag Rechtsschutz',	'',	'',	'',	'ARAG Platz 1',	'40472',	'Düsseldorf',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1006,	0,	0,	'',	'DFV Deutsche Familienversicherung AG',	'',	'',	'',	'Reuterweg 47',	'60323',	'Frankfurt am Main',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(992,	0,	0,	'',	'ADVOCARD Rechtsschutzversicherung AG',	'',	'',	'',	'Besenbinderhof 43',	'20097',	'Hamburg',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1003,	0,	0,	'',	'Concordia Rechtsschutz-Versicherungs-AG',	'',	'',	'',	'Karl-Wiechert-Allee 55',	'30625',	'Hannover',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1002,	0,	0,	'',	'BGV Badische Versicherungen',	'',	'',	'',	'Durlacher Allee 56',	'76131',	'Karlsruhe',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1005,	0,	0,	'',	'Debeka Allgemeine Versicherung AG',	'',	'',	'',	'',	'56058',	'Koblenz',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(996,	0,	0,	'',	'DEURAG Deutsche Rechtsschutz-Versicherung AG',	'',	'',	'',	'Bonner Wall 118',	'50677',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(453,	0,	0,	'',	'DEVK Rechtsschutz',	'DEVK',	'',	'',	'Riehler Str. 190',	'50735',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(997,	0,	0,	'',	'DGB Rechtsschutz GmbH',	'',	'',	'',	'Gottesweg 54',	'50969',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(994,	0,	0,	'',	'Jurpartner Rechtsschutz- Versicherung AG',	'',	'',	'',	'Eumeniusstr. 15 -17',	'50679',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(995,	0,	0,	'',	'ROLAND Rechtsschutz-Versicherungs-AG',	'',	'',	'',	'Deutz-Kalker Str. 46',	'50679',	'Köln',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(998,	0,	0,	'',	'Allianz Deutschland AG',	'',	'',	'',	'Königinstr.  28',	'80802',	'München',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1001,	0,	0,	'',	'Auxilia Rechtsschutz- Versicherungs-AG',	'',	'',	'',	'Uhlandstr. 7',	'80336',	'München',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1008,	0,	0,	'',	'LVM- Rechtsschutzversicherungs-AG',	'',	'',	'',	'Kolde-Ring 21',	'48126',	'Münster',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1004,	0,	0,	'',	'DA Deutsche Allgemeine Versicherung AG',	'',	'',	'',	'Oberstedter Strasse 14',	'61440',	'Oberursel',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1010,	0,	0,	'',	'Württembergische Versicherung AG',	'',	'',	'',	'Gutenbergstr. 30',	'70176',	'Stuttgart',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1007,	0,	0,	'',	'Direct Line Versicherung AG',	'',	'',	'',	'Rheinstr.  7a',	'14513',	'Teltow',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1009,	0,	0,	'',	'R+V Rechtsschutzversicherung AG',	'',	'',	'',	'Raiffeisenplatz 1',	'65189',	'Wiesbaden',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1011,	0,	0,	'',	'Flinkster',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1012,	0,	0,	'Christoph',	'Rollbühler',	'',	'',	'',	'',	'',	'Köln',	'',	'',	'christoph.rollbuehler@thomaschristuskirche-koeln.de',	'',	'',	'offen',	'0000-00-00'),
(1013,	0,	0,	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'kontakt@wi-lo.de',	'Willkommen in Longerich',	'',	'offen',	'0000-00-00'),
(1014,	0,	0,	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'wiko@lebenswert-kirche.de',	'Willkommen in Bilderstöckchen (Lebenswert Kirche)',	'',	'offen',	'0000-00-00'),
(1015,	0,	0,	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'willkommeninagnes@gmx.de',	'Willkommen in Agnes',	'',	'offen',	'0000-00-00'),
(1016,	0,	0,	'',	'Otto',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'offen',	'0000-00-00'),
(1017,	0,	0,	'',	'Amazon',	'Philips',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'offen',	'2015-10-05'),
(1018,	0,	0,	'Markus',	'Schulz',	'',	'',	'',	'',	'Köln',	'',	'',	'',	'schulzmarkus@gmx.net',	'',	'',	'offen',	'0000-00-00'),
(1021,	0,	0,	'Simon',	'Unbekannt',	'',	'',	'',	'',	'',	'',	'',	'',	'web@svdanwitz.de',	'',	'',	'offen',	'0000-00-00');

CREATE TABLE `tbladr_lstgrp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_liste` bigint(20) NOT NULL,
  `fldid_group` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbladr_lstgrp` (`fldindex`, `fldid_liste`, `fldid_group`) VALUES
(3,	3,	23),
(13,	23,	23),
(23,	23,	3),
(43,	73,	43),
(53,	83,	43),
(73,	13,	3),
(83,	33,	3),
(93,	43,	3),
(103,	53,	3),
(113,	63,	3),
(123,	73,	3),
(133,	83,	3),
(143,	93,	3),
(153,	13,	53),
(163,	33,	53),
(173,	43,	53),
(183,	53,	53),
(193,	63,	53),
(203,	93,	53),
(213,	103,	53),
(233,	3,	3),
(243,	3,	63),
(253,	123,	63),
(263,	133,	63),
(273,	143,	63),
(283,	183,	43),
(293,	193,	43),
(303,	173,	43),
(313,	203,	43),
(323,	113,	43),
(333,	163,	43),
(343,	233,	43),
(353,	213,	43),
(363,	223,	43),
(373,	23,	73),
(383,	3,	73),
(393,	253,	73),
(403,	343,	43),
(413,	313,	43),
(423,	323,	43),
(433,	303,	43),
(443,	393,	43),
(453,	363,	43),
(463,	353,	43),
(473,	383,	43),
(483,	293,	43),
(493,	333,	43),
(503,	373,	43),
(513,	273,	53),
(523,	243,	53),
(533,	403,	43),
(543,	263,	53),
(553,	283,	53),
(563,	183,	83),
(573,	193,	83),
(583,	173,	83),
(593,	203,	83),
(603,	113,	83),
(613,	23,	93),
(623,	153,	93),
(633,	3,	93),
(643,	413,	73),
(653,	413,	103),
(663,	3,	103),
(673,	433,	113),
(683,	303,	123),
(703,	443,	133),
(713,	33,	143),
(723,	133,	143),
(733,	253,	143),
(743,	283,	143),
(753,	303,	143),
(763,	413,	143),
(773,	423,	143),
(793,	443,	143),
(794,	53,	144),
(804,	63,	144),
(814,	863,	144),
(824,	853,	144),
(834,	13,	144),
(844,	263,	144),
(854,	763,	144),
(864,	923,	144),
(874,	913,	144),
(884,	903,	144),
(894,	893,	144),
(904,	883,	144),
(914,	33,	144),
(924,	93,	144),
(934,	793,	144),
(944,	103,	144),
(954,	243,	144),
(964,	843,	144),
(974,	773,	144),
(984,	823,	144),
(994,	813,	144),
(1004,	803,	144),
(1014,	873,	144),
(1024,	283,	144),
(1034,	143,	144),
(1044,	783,	144),
(1054,	133,	144),
(1064,	733,	144),
(1074,	123,	144),
(1084,	833,	144),
(1094,	14,	53),
(1104,	14,	53),
(803,	453,	13),
(813,	453,	143),
(823,	463,	153),
(833,	483,	113),
(843,	493,	163),
(853,	503,	163),
(863,	523,	173),
(1885,	0,	226),
(883,	1011,	183),
(893,	553,	203),
(903,	553,	193),
(913,	433,	193),
(923,	63,	193),
(933,	483,	193),
(943,	313,	193),
(953,	43,	193),
(963,	363,	193),
(973,	13,	193),
(983,	73,	193),
(993,	233,	193),
(1003,	323,	193),
(1013,	273,	193),
(1113,	563,	193),
(1033,	93,	193),
(1043,	163,	193),
(1053,	103,	193),
(1063,	143,	193),
(1123,	573,	193),
(1083,	123,	193),
(1093,	343,	193),
(1103,	113,	193),
(1133,	583,	193),
(1143,	603,	213),
(1153,	643,	213),
(1163,	653,	213),
(1173,	663,	213),
(1183,	673,	213),
(1193,	683,	213),
(1203,	693,	213),
(1213,	703,	213),
(1223,	713,	213),
(1882,	0,	3),
(1243,	733,	63),
(1253,	743,	153),
(1263,	753,	3),
(1273,	733,	223),
(1283,	53,	223),
(1293,	63,	223),
(1303,	13,	223),
(1313,	263,	223),
(1323,	33,	223),
(1333,	93,	223),
(1343,	103,	223),
(1353,	243,	223),
(1363,	283,	223),
(1373,	143,	223),
(1383,	133,	223),
(1393,	123,	223),
(1403,	763,	223),
(1413,	773,	223),
(1423,	783,	223),
(1433,	793,	223),
(1443,	803,	223),
(1453,	813,	223),
(1463,	823,	223),
(1473,	833,	223),
(1483,	843,	223),
(1493,	853,	223),
(1503,	863,	223),
(1513,	873,	223),
(1523,	883,	223),
(1533,	893,	223),
(1543,	903,	223),
(1553,	913,	223),
(1563,	923,	223),
(1573,	263,	143),
(1583,	763,	143),
(1593,	903,	143),
(1603,	893,	143),
(1613,	923,	143),
(1623,	883,	143),
(1633,	913,	143),
(1673,	803,	143),
(1683,	823,	143),
(1693,	813,	143),
(1703,	773,	143),
(1713,	863,	143),
(1723,	853,	143),
(1733,	873,	143),
(1753,	783,	143),
(1773,	733,	143),
(1793,	933,	3),
(1803,	933,	53),
(1813,	943,	223),
(1823,	953,	223),
(1833,	963,	223),
(1834,	943,	144),
(1844,	974,	224),
(1854,	984,	224),
(1855,	985,	224),
(1856,	986,	224),
(1857,	987,	224),
(1858,	988,	224),
(1845,	975,	224),
(1846,	976,	224),
(1847,	977,	224),
(1848,	978,	224),
(1849,	979,	224),
(1850,	980,	224),
(1851,	981,	224),
(1852,	982,	224),
(1853,	983,	224),
(1859,	989,	224),
(1860,	990,	224),
(1861,	991,	224),
(1881,	0,	163),
(1862,	992,	13),
(1863,	993,	13),
(1864,	994,	13),
(1865,	995,	13),
(1866,	996,	13),
(1867,	997,	13),
(1868,	998,	13),
(1869,	999,	13),
(1870,	1000,	13),
(1871,	1001,	13),
(1872,	1002,	13),
(1873,	1003,	13),
(1874,	1004,	13),
(1875,	1005,	13),
(1876,	1006,	13),
(1877,	1007,	13),
(1878,	1008,	13),
(1879,	1009,	13),
(1880,	1010,	13),
(1884,	1012,	226),
(1886,	0,	226),
(1887,	1013,	226),
(1888,	0,	226),
(1889,	1014,	226),
(1890,	0,	3),
(1891,	1015,	226),
(1892,	0,	183),
(1893,	1016,	183),
(1894,	0,	183),
(1895,	1017,	183),
(1896,	0,	3),
(1897,	1018,	3),
(1901,	1021,	231);

CREATE TABLE `tbladr_typ` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblanlass` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblanlass` (`fldindex`, `fldbez`) VALUES
(3,	'Weihnachten'),
(13,	'Geburtstag'),
(23,	'(ohne)');

CREATE TABLE `tblartikel` (
  `fldIndex` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fldBez` char(80) DEFAULT '0',
  `fldArtikelnr` varchar(20) NOT NULL,
  `fldTyp` varchar(5) NOT NULL,
  `fldSort` varchar(20) NOT NULL,
  `fldAbteilung` varchar(30) NOT NULL,
  `fldOrt` varchar(25) NOT NULL,
  `fldPreis` decimal(10,2) NOT NULL,
  `fldAnz` int(3) NOT NULL,
  `fldKonto` varchar(8) NOT NULL,
  `flda01barcode` varchar(20) NOT NULL,
  `fldReihenfolge` int(11) NOT NULL,
  `fldBarcode` varchar(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblartikel` (`fldIndex`, `fldBez`, `fldArtikelnr`, `fldTyp`, `fldSort`, `fldAbteilung`, `fldOrt`, `fldPreis`, `fldAnz`, `fldKonto`, `flda01barcode`, `fldReihenfolge`, `fldBarcode`) VALUES
(21,	'Milch (Frischmilch)',	'FRIMILCH',	'STAMM',	'0004MILCH',	'Milchprodukte',	'Aldi',	0.65,	1,	'LEBEN',	'22130112',	0,	'22130112'),
(22,	'gelbe MÃ¼llsÃ¤cke',	'GELBMUELLSACK',	'STAMM',	'004',	'Haushalt / Putzmittel',	'Kaufland',	2.49,	1,	'HAUSHALT',	'',	0,	''),
(23,	'KÃ¤seaufschnitt',	'KAESE',	'STAMM',	'0004MILCH',	'Milchprodukte',	'Aldi',	0.99,	1,	'LEBEN',	'',	0,	''),
(24,	'Bananen',	'BANANEN',	'STAMM',	'0006OBST',	'Obst / Gemuese',	'Aldi',	0.89,	1,	'LEBEN',	'',	0,	''),
(26,	'Bauernschnitt',	'KLBROT',	'STAMM',	'0001BROT',	'Brotwaren',	'Aldi',	0.59,	1,	'LEBEN',	'',	0,	'29705108'),
(28,	'Toastbrot',	'TOAST',	'STAMM',	'0001BROT',	'Brotwaren',	'Aldi',	0.55,	1,	'LEBEN',	'22136084',	0,	'22136084'),
(29,	'Traubenschorle',	'APFELSCHORLE',	'STAMM',	'00035GETRAENKE',	'Getraenke',	'Aldi',	0.89,	6,	'LEBEN',	'001',	0,	'42141167'),
(30,	'Stilles Wasser',	'STILLESWA',	'STAMM',	'00035GETRAENKE',	'GetrÃ¤nke',	'Aldi',	2.64,	1,	'LEBEN',	'',	0,	''),
(32,	'Calciumbrause',	'CALCIUMBR',	'STAMM',	'0003WINDELN',	'Windeln',	'Aldi',	0.69,	1,	'',	'',	0,	''),
(33,	'Magnesiumbrause',	'MAGNESIUMBR',	'STAMM',	'0003WINDELN',	'Windeln',	'Aldi',	0.69,	1,	'LEBEN',	'',	0,	''),
(34,	'Butter',	'BUTTER',	'STAMM',	'0004MILCH',	'Milchprodukte',	'Aldi',	1.19,	1,	'LEBEN',	'22116505',	0,	'22116505'),
(35,	'Joghurt Natur',	'NATURJOGHURT',	'STAMM',	'0004MILCH',	'Milchprodukte',	'Aldi',	0.55,	1,	'LEBEN',	'',	0,	''),
(38,	'Magerquark',	'MAGQUARK',	'STAMM',	'0004MILCH',	'Milchprodukte',	'Aldi',	0.55,	1,	'LEBEN',	'',	0,	''),
(39,	'ReibekÃ¤se',	'REIBEKAESE',	'STAMM',	'0004MILCH',	'Milchprodukte',	'Aldi',	1.19,	1,	'LEBEN',	'',	0,	'22126542'),
(40,	'Margarine',	'MAGARINE',	'STAMM',	'0005EIER',	'Eierwaren',	'Aldi',	0.75,	3,	'LEBEN',	'',	0,	''),
(41,	'Rahmspinat',	'RAHMSPINAT',	'STAMM',	'0005ZTKKOST',	'Tiefkuehlkost',	'Aldi',	0.39,	1,	'LEBEN',	'22113566',	0,	''),
(42,	'Clementinen',	'CLEMENTINEN',	'STAMM',	'0006OBST',	'Obst / GemÃ¼se',	'Aldi',	1.99,	1,	'HAUSHALT',	'',	0,	''),
(44,	'Kiwi',	'KIWI',	'STAMM',	'0006OBST',	'Obst / Gemuese',	'Aldi',	1.29,	1,	'LEBEN',	'',	0,	''),
(45,	'Paprikaschoten rot',	'PAPSCHOTROT',	'STAMM',	'0006OBST',	'Obst / Gemuese',	'Aldi',	1.69,	1,	'LEBEN',	'',	0,	''),
(47,	'Zwiebeln',	'ZWIEBELN',	'STAMM',	'0006OBST',	'Obst / Gemuese',	'Aldi',	0.69,	1,	'LEBEN',	'',	0,	''),
(48,	'Ã„pfel Braeburn',	'AEPFEL',	'STAMM',	'0006OBST',	'Obst / Gemuese',	'Aldi',	1.55,	1,	'LEBEN',	'4020959000001',	0,	''),
(49,	'Amaranth Erdbeer MÃ¼sli',	'AMERDMUESLI',	'STAMM',	'',	'(ohne)',	'DM',	2.25,	1,	'LEBEN',	'',	0,	''),
(51,	'KrÃ¤utersalz',	'KRAEUTERSALZ',	'STAMM',	'',	'Salz / Mehl',	'Kaufland',	1.00,	1,	'LEBEN',	'',	0,	''),
(52,	'Baguette-BrÃ¶tchen',	'BAGUETTEBROETCH',	'STAMM',	'',	'Brotwaren',	'Aldi',	0.35,	1,	'LEBEN',	'',	0,	'22115904'),
(53,	'Bio Kartoffeln',	'BIOKARTOFFELN',	'STAMM',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1,	'LEBEN',	'',	0,	'4050373133986'),
(54,	'Buttermilch',	'BUTTERMIL',	'STAMM',	'',	'Milchprodukte',	'Aldi',	0.29,	1,	'LEBEN',	'',	0,	''),
(56,	'RapsÃ¶l',	'RABSOEL',	'STAMM',	'',	'Konserven',	'Aldi',	0.95,	1,	'LEBEN',	'',	0,	''),
(57,	'Spiralinudeln',	'SPIRALINUDELN',	'STAMM',	'',	'Brotwaren',	'Aldi',	0.49,	1,	'LEBEN',	'',	0,	'22111326'),
(59,	'Weintrauben kernlos',	'WEINTRAUBEN',	'STAMM',	'',	'Obst / Gemuese',	'Aldi',	1.49,	1,	'LEBEN',	'',	0,	''),
(60,	'Tomaten',	'TOMATEN',	'STAMM',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1,	'LEBEN',	'',	0,	''),
(61,	'O-Saft',	'OSAFT',	'STAMM',	'',	'Getraenke',	'Aldi',	0.95,	6,	'LEBEN',	'22131201',	0,	'22131201'),
(62,	'scharfer KÃ¤se',	'scharferkaese',	'STAMM',	'',	'Milchprodukte',	'Aldi',	1.59,	1,	'LEBEN',	'',	0,	''),
(63,	'Sofix fÃ¼r alle BÃ¶den',	'SOFIX',	'STAMM',	'',	'Haushalt / Putzmittel',	'Kaufland',	4.45,	1,	'HAUSHALT',	'',	0,	'4015000019927'),
(64,	'Kakao Tropengold',	'KAKAO',	'STAMM',	'',	'Kaffee / Tee',	'Aldi',	1.00,	1,	'LEBEN',	'',	0,	'4000550426004'),
(65,	'losen zucker',	'ZUCKER',	'STAMM',	'',	'Mehl / Zucker',	'Aldi',	0.00,	1,	'LEBEN',	'',	0,	''),
(66,	'parmesan kÃ¤se',	'PARMKAESE',	'STAMM',	'',	'Milchprodukte',	'Aldi',	1.00,	1,	'LEBEN',	'',	0,	''),
(67,	'passierte tomaten',	'PASSTOMATEN',	'STAMM',	'',	'Konserven',	'Aldi',	0.35,	1,	'LEBEN',	'',	0,	'22114235'),
(68,	'Duschdas Palmoliv absolute relax',	'DUSCHDASCHRIS',	'STAMM',	'',	'Koerperpflege',	'Kaufland',	1.00,	1,	'PFLEG',	'',	0,	''),
(69,	'Shampoo Herbal fÃ¼r feines Haar',	'SHAMPOOCHRIS',	'STAMM',	'',	'Koerperpflege',	'Kaufland',	1.00,	1,	'PFLEG',	'',	0,	''),
(70,	'GemÃ¼sebrÃ¼he',	'GEMUESEBRUEHE',	'STAMM',	'',	'Gewuerze',	'Aldi',	0.59,	1,	'LEBEN',	'22113139',	0,	''),
(72,	'Sojaschnitzel',	'SOJASCHNITZEL',	'STAMM',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2,	'LEBEN',	'22130259',	0,	''),
(73,	'Broccoli',	'BROCCOLI',	'STAMM',	'',	'Obst / Gemuese',	'Aldi',	0.95,	1,	'LEBEN',	'',	0,	''),
(75,	'Schokolade Orange',	'SCHOKOORANGE',	'STAMM',	'',	'SÃ¼ssigkeiten',	'Aldi',	0.95,	1,	'GENUSS',	'',	0,	''),
(76,	'Schlangengurke',	'SCHLGURK',	'STAMM',	'0006Obst',	'Obst / Gemuese',	'Aldi',	0.30,	1,	'LEBEN',	'',	0,	''),
(78,	'KnÃ¤ckebrot',	'KNAECKEBROT',	'STAMM',	'',	'Brotwaren',	'Aldi',	1.00,	1,	'LEBEN',	'',	0,	''),
(79,	'HÃ¼ttenkÃ¤se',	'HUETTENKAESE',	'STAMM',	'',	'Milchprodukte',	'Kaufland',	2.00,	1,	'LEBEN',	'',	0,	''),
(80,	'koffeinfreie cola',	'KOFFEINFREIECOLA',	'STAMM',	'',	'GetrÃ¤nke',	'Kaufland',	3.00,	1,	'LEBEN',	'5449000017901',	0,	''),
(81,	'Naschtomaten ( Mini )',	'NASCHTOMATEN',	'STAMM',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1,	'LEBEN',	'',	0,	'4049929247550'),
(123,	'H-Milch',	'',	'STAMM',	'',	'Milchprodukte',	'Aldi',	0.59,	1,	'LEBEN',	'',	0,	'22116413'),
(753,	'Joghurt Natur',	'',	'STAMM',	'',	'Milchprodukte',	'Aldi',	0.45,	1,	'LEBEN',	'',	0,	'22121738'),
(463,	'KÃ¤seaufschnitt',	'',	'STAMM',	'',	'Milchprodukte',	'Aldi',	1.39,	1,	'LEBEN',	'',	0,	'22144225'),
(453,	'Margarine',	'',	'STAMM',	'',	'(ohne)',	'Aldi',	0.69,	1,	'LEBEN',	'',	0,	'22112446'),
(113,	'Multivitaminsaft',	'',	'STAMM',	'',	'Getraenke',	'Aldi',	0.95,	6,	'LEBEN',	'',	0,	'22131218'),
(443,	'scharfer KÃ¤se',	'',	'STAMM',	'',	'Milchprodukte',	'Aldi',	1.79,	1,	'LEBEN',	'',	0,	'22125811'),
(763,	'Sojaschnitzel',	'',	'STAMM',	'',	'Kuehltheke',	'Aldi',	1.79,	2,	'LEBEN',	'',	0,	'22130259'),
(103,	'Tofuaufschnitt',	'TOFUAUFSCHNITT',	'STAMM',	'',	'Milchprodukte',	'Aldi',	1.79,	1,	'LEBEN',	'',	0,	'22144515'),
(433,	'Orangenwasser',	'',	'STAMM',	'',	'Getraenke',	'Kaufland',	0.49,	6,	'LEBEN',	'',	0,	'4300175374170');

CREATE TABLE `tblaufgabenbenutzer` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_benutzer` bigint(20) NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldfarbeWE` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblaufgabenbenutzer` (`fldindex`, `fldid_benutzer`, `fldfarbe`, `fldfarbeWE`) VALUES
(3,	1,	'#FFFF00',	''),
(13,	2,	'#00FFFF',	''),
(23,	3,	'#FF00FF',	''),
(24,	50002,	'',	''),
(25,	50003,	'',	''),
(26,	50004,	'',	'');

CREATE TABLE `tblaufgabenliste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) NOT NULL,
  `fldtext` varchar(500) NOT NULL,
  `fldid_haeufigkeit` bigint(20) NOT NULL,
  `fldid_benutzer` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblaufgabenliste` (`fldindex`, `fldbez`, `fldtext`, `fldid_haeufigkeit`, `fldid_benutzer`) VALUES
(2,	'Bad reinigen',	'Waschbecken putzen, Badewanne putzen, Duschtasse putzen, Handtücher wechseln.',	3,	50006),
(3,	'Wäsche aufhängen',	'Wäsche aufhängen.',	1,	50006),
(4,	'Klorollen auffüllen',	'Klorollen auffüllen im unteren und im oberen Bad.',	3,	3),
(5,	'Mülleimer leeren',	'Mülleimer leeren in der Küche, im Wohnzimmer, im unteren Bad, im Arbeitszimmer, im Vorkeller, im Keller, im oberen Bad, im Kinderzimmer u. im Schlafzimmer.',	3,	1),
(6,	'Tisch decken',	'Tisch decken, Getränke hochholen, ggfs. Kaffee kochen.',	1,	50006),
(7,	'Spülmaschine ausräumen',	'Spülmaschine ausräumen.',	1,	50005),
(8,	'Tisch abräumen',	'Tisch abräumen und anschliessend abwischen.',	1,	50006),
(9,	'Küche wischen',	'Küche wischen.',	1,	3),
(10,	'Wäsche i d Keller',	'Wäsche in den Waschkeller bringen, Wäschekorb oberes Bad und Wäschekorb unteres Bad.',	1,	50007),
(11,	'Brotdose richten',	'Brote schmieren und Trinkflasche befüllen',	1,	3),
(12,	'Spülmaschine einräumen',	'Spülmaschine einräumen',	1,	50005),
(13,	'Betten machen',	'Betten machen',	1,	2),
(14,	'Toiletten putzen',	'Toiletten putzen',	1,	2),
(15,	'Wäsche waschen',	'Wäsche in die Waschmaschine stecken und laufen lassen.',	1,	50007),
(16,	'Staubsaugen',	'Staubsaugen alle Räume',	1,	2),
(17,	'Staub wischen',	'Staub wischen',	1,	2),
(18,	'Böden wischen',	'Böden wischen alle Räume',	3,	50007),
(19,	'Altglas wegbringen',	'Altglas wegbringen',	3,	50005),
(20,	'Altpapier rausbringen',	'Altpapier in die blaue Tonne bringen ',	3,	50005),
(21,	'Blumen gießen drinnen',	'Blumen gießen im Wohnzimmer, Küche',	1,	2),
(22,	'Blumen gießen draußen',	'Blumen auf der Terrasse gießen ',	1,	2),
(23,	'Wäsche bügeln',	'Wäsche bügeln',	1,	50007),
(24,	'Fenster putzen',	'Fenster putzen',	5,	50002),
(25,	'Betten beziehen ',	'Bettzeug neu beziehen',	4,	3),
(26,	'Wäsche einräumen',	'Wäsche einräumen',	1,	50003),
(27,	'Kaffeemaschine entkalken',	'Kaffeemaschine entkalken',	5,	1),
(28,	'Waschmaschine reinigen',	'Waschmaschine reinigen',	4,	50002),
(29,	'Spülmaschine reinigen',	'Spülmaschine reinigen',	4,	50002),
(30,	'Backofen reinigen',	'Backofen reinigen',	3,	50006),
(31,	'Küche reinigen',	'Arbeitsplatte, Spüle und Ceranfeld reinigen.',	1,	50005),
(32,	'Kühlschrank reinigen',	'Kühlschrank reinigen',	3,	50007),
(33,	'Glühbirnen wechseln',	'Glühbirnen wechseln',	5,	1),
(34,	'Feuermelder Batterien tauschen',	'Feuermelder Batterien tauschen',	4,	1),
(35,	'Briefe öffnen und klären',	'Briefe öffnen und klären\r\njeder seinen eigenen ohne dabei allein zu sein.',	1,	50003),
(36,	'Rechnungen überweisen',	'Rechnungen, Telefon, überweisen.',	4,	1),
(37,	'Familieneinkäufe',	'wöchentliche Großeinkauf i.d.R. samstags ',	3,	1),
(38,	'kleine Besorgungen',	'kleinere Besorgungen wie z.B. Toastbrötchen',	6,	50002),
(39,	'Steuererklärung',	'Steuererklärung abgeben und auf Fragen vom Steuerbüro reagieren',	7,	1),
(40,	'Ausmisten und Aufräumen',	'Jeder räumt in seinem Bereich auf, damit wieder mehr Ordnung herrscht',	3,	50003),
(41,	'Ranzenkontrolle',	'',	1,	3),
(42,	'Hausaufgaben',	'',	1,	3);

CREATE TABLE `tblaufgabenplan` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldtext` varchar(500) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  `fldid_benutzer` bigint(20) NOT NULL,
  `fldrotate` varchar(1) COLLATE utf8_bin NOT NULL,
  `fldid_aufgabe` bigint(20) NOT NULL,
  `fldsort` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblaufgabenplan` (`fldindex`, `fldbez`, `fldtext`, `flddatum`, `fldid_benutzer`, `fldrotate`, `fldid_aufgabe`, `fldsort`) VALUES
(1008,	'Klorollen auffÃ¼llen',	'Klorollen auffüllen',	'2015-05-12',	1,	'J',	4,	''),
(1022,	'Tisch abrÃ¤umen',	'Tisch abräumen',	'2015-05-16',	1,	'J',	8,	''),
(1046,	'',	'',	'2015-05-16',	1,	'N',	6,	''),
(1048,	'',	'',	'2015-05-13',	1,	'J',	5,	''),
(1053,	'',	'',	'2015-05-11',	3,	'J',	6,	''),
(1054,	'',	'',	'2015-05-12',	3,	'J',	6,	''),
(1055,	'',	'',	'2015-05-13',	3,	'J',	6,	''),
(1056,	'',	'',	'2015-05-14',	3,	'J',	6,	''),
(1057,	'',	'',	'2015-05-15',	3,	'J',	6,	''),
(1058,	'',	'',	'2015-05-11',	3,	'J',	2,	''),
(1059,	'',	'',	'2015-05-11',	2,	'J',	3,	''),
(1060,	'',	'',	'2015-05-11',	2,	'J',	9,	''),
(1061,	'',	'',	'2015-05-11',	2,	'J',	10,	''),
(1062,	'',	'',	'2015-05-11',	1,	'J',	8,	''),
(1063,	'',	'',	'2015-05-11',	2,	'J',	7,	''),
(1064,	'',	'',	'2015-05-12',	1,	'J',	8,	''),
(1065,	'',	'',	'2015-05-13',	1,	'J',	8,	''),
(1066,	'',	'',	'2015-05-14',	1,	'J',	8,	''),
(1067,	'',	'',	'2015-05-15',	1,	'J',	8,	''),
(1068,	'',	'',	'2015-05-17',	2,	'N',	6,	''),
(1069,	'',	'',	'2015-05-17',	2,	'N',	8,	''),
(1070,	'',	'',	'2015-05-12',	2,	'J',	3,	''),
(1071,	'',	'',	'2015-05-13',	2,	'J',	3,	''),
(1072,	'',	'',	'2015-05-14',	2,	'J',	3,	''),
(1073,	'',	'',	'2015-05-15',	2,	'J',	3,	''),
(1074,	'',	'',	'2015-05-12',	2,	'J',	7,	''),
(1075,	'',	'',	'2015-05-13',	2,	'J',	7,	''),
(1076,	'',	'',	'2015-05-14',	2,	'J',	7,	''),
(1077,	'',	'',	'2015-05-15',	2,	'J',	7,	''),
(1078,	'',	'',	'2015-05-12',	2,	'J',	9,	''),
(1079,	'',	'',	'2015-05-13',	2,	'J',	9,	''),
(1080,	'',	'',	'2015-05-14',	2,	'J',	9,	''),
(1081,	'',	'',	'2015-05-15',	2,	'J',	9,	''),
(1082,	'',	'',	'2015-05-12',	2,	'J',	10,	''),
(1083,	'',	'',	'2015-05-13',	2,	'J',	10,	''),
(1084,	'',	'',	'2015-05-14',	2,	'J',	10,	''),
(1085,	'',	'',	'2015-05-15',	2,	'J',	10,	''),
(1086,	'',	'',	'2015-05-12',	3,	'J',	2,	''),
(1087,	'',	'',	'2015-05-13',	3,	'J',	2,	''),
(1088,	'',	'',	'2015-05-14',	3,	'J',	2,	''),
(1089,	'',	'',	'2015-05-15',	3,	'J',	2,	''),
(1091,	'',	'',	'2015-05-18',	1,	'J',	6,	''),
(1092,	'',	'',	'2015-05-18',	1,	'J',	2,	''),
(1093,	'',	'',	'2015-05-18',	3,	'J',	3,	''),
(1094,	'',	'',	'2015-05-18',	3,	'J',	9,	''),
(1095,	'',	'',	'2015-05-18',	3,	'J',	10,	''),
(1096,	'',	'',	'2015-05-18',	2,	'J',	8,	''),
(1097,	'',	'',	'2015-05-18',	3,	'J',	7,	''),
(1105,	'Klorollen auffÃ¼llen',	'Klorollen auffüllen',	'2015-05-19',	2,	'J',	4,	''),
(1107,	'',	'',	'2015-05-19',	1,	'J',	6,	''),
(1108,	'',	'',	'2015-05-19',	2,	'J',	8,	''),
(1109,	'',	'',	'2015-05-19',	3,	'J',	3,	''),
(1110,	'',	'',	'2015-05-19',	3,	'J',	7,	''),
(1111,	'',	'',	'2015-05-19',	3,	'J',	9,	''),
(1112,	'',	'',	'2015-05-19',	3,	'J',	10,	''),
(1113,	'',	'',	'2015-05-19',	1,	'J',	2,	''),
(1120,	'',	'',	'2015-05-20',	2,	'J',	5,	''),
(1122,	'',	'',	'2015-05-20',	1,	'J',	6,	''),
(1123,	'',	'',	'2015-05-20',	2,	'J',	8,	''),
(1124,	'',	'',	'2015-05-20',	3,	'J',	3,	''),
(1125,	'',	'',	'2015-05-20',	3,	'J',	7,	''),
(1126,	'',	'',	'2015-05-20',	3,	'J',	9,	''),
(1127,	'',	'',	'2015-05-20',	3,	'J',	10,	''),
(1128,	'',	'',	'2015-05-20',	1,	'J',	2,	''),
(1136,	'',	'',	'2015-05-21',	1,	'J',	6,	''),
(1137,	'',	'',	'2015-05-21',	2,	'J',	8,	''),
(1138,	'',	'',	'2015-05-21',	3,	'J',	3,	''),
(1139,	'',	'',	'2015-05-21',	3,	'J',	7,	''),
(1140,	'',	'',	'2015-05-21',	3,	'J',	9,	''),
(1141,	'',	'',	'2015-05-21',	3,	'J',	10,	''),
(1142,	'',	'',	'2015-05-21',	1,	'J',	2,	''),
(1151,	'',	'',	'2015-05-22',	1,	'J',	6,	''),
(1152,	'',	'',	'2015-05-22',	2,	'J',	8,	''),
(1153,	'',	'',	'2015-05-22',	3,	'J',	3,	''),
(1154,	'',	'',	'2015-05-22',	3,	'J',	7,	''),
(1155,	'',	'',	'2015-05-22',	3,	'J',	9,	''),
(1156,	'',	'',	'2015-05-22',	3,	'J',	10,	''),
(1157,	'',	'',	'2015-05-22',	1,	'J',	2,	''),
(1165,	'Tisch abrÃ¤umen',	'Tisch abräumen',	'2015-05-23',	2,	'J',	8,	''),
(1166,	'',	'',	'2015-05-23',	1,	'N',	6,	''),
(1168,	'',	'',	'2015-05-24',	2,	'N',	6,	''),
(1169,	'',	'',	'2015-05-24',	2,	'N',	8,	''),
(1171,	'',	'',	'2015-05-25',	1,	'J',	6,	''),
(1172,	'',	'',	'2015-05-25',	1,	'J',	2,	''),
(1173,	'',	'',	'2015-05-25',	3,	'J',	3,	''),
(1174,	'',	'',	'2015-05-25',	3,	'J',	9,	''),
(1175,	'',	'',	'2015-05-25',	3,	'J',	10,	''),
(1176,	'',	'',	'2015-05-25',	2,	'J',	8,	''),
(1177,	'',	'',	'2015-05-25',	3,	'J',	7,	''),
(1185,	'Klorollen auffÃ¼llen',	'Klorollen auffüllen',	'2015-05-26',	2,	'J',	4,	''),
(1187,	'',	'',	'2015-05-26',	1,	'J',	6,	''),
(1188,	'',	'',	'2015-05-26',	2,	'J',	8,	''),
(1189,	'',	'',	'2015-05-26',	3,	'J',	3,	''),
(1190,	'',	'',	'2015-05-26',	3,	'J',	7,	''),
(1191,	'',	'',	'2015-05-26',	3,	'J',	9,	''),
(1192,	'',	'',	'2015-05-26',	3,	'J',	10,	''),
(1193,	'',	'',	'2015-05-26',	1,	'J',	2,	''),
(1200,	'',	'',	'2015-05-27',	2,	'J',	5,	''),
(1202,	'',	'',	'2015-05-27',	1,	'J',	6,	''),
(1203,	'',	'',	'2015-05-27',	2,	'J',	8,	''),
(1204,	'',	'',	'2015-05-27',	3,	'J',	3,	''),
(1205,	'',	'',	'2015-05-27',	3,	'J',	7,	''),
(1206,	'',	'',	'2015-05-27',	3,	'J',	9,	''),
(1207,	'',	'',	'2015-05-27',	3,	'J',	10,	''),
(1208,	'',	'',	'2015-05-27',	1,	'J',	2,	''),
(1216,	'',	'',	'2015-05-28',	1,	'J',	6,	''),
(1217,	'',	'',	'2015-05-28',	2,	'J',	8,	''),
(1218,	'',	'',	'2015-05-28',	3,	'J',	3,	''),
(1219,	'',	'',	'2015-05-28',	3,	'J',	7,	''),
(1220,	'',	'',	'2015-05-28',	3,	'J',	9,	''),
(1221,	'',	'',	'2015-05-28',	3,	'J',	10,	''),
(1222,	'',	'',	'2015-05-28',	1,	'J',	2,	''),
(1231,	'',	'',	'2015-05-29',	1,	'J',	6,	''),
(1232,	'',	'',	'2015-05-29',	2,	'J',	8,	''),
(1233,	'',	'',	'2015-05-29',	3,	'J',	3,	''),
(1234,	'',	'',	'2015-05-29',	3,	'J',	7,	''),
(1235,	'',	'',	'2015-05-29',	3,	'J',	9,	''),
(1236,	'',	'',	'2015-05-29',	3,	'J',	10,	''),
(1237,	'',	'',	'2015-05-29',	1,	'J',	2,	''),
(1245,	'Tisch abrÃ¤umen',	'Tisch abräumen',	'2015-05-30',	2,	'J',	8,	''),
(1246,	'',	'',	'2015-05-30',	1,	'N',	6,	''),
(1248,	'',	'',	'2015-05-31',	2,	'N',	6,	''),
(1249,	'',	'',	'2015-05-31',	2,	'N',	8,	''),
(1820,	'',	'',	'2015-06-08',	1,	'J',	6,	''),
(1821,	'',	'',	'2015-06-08',	1,	'J',	2,	''),
(1822,	'',	'',	'2015-06-08',	3,	'J',	3,	''),
(1823,	'',	'',	'2015-06-08',	3,	'J',	9,	''),
(1824,	'',	'',	'2015-06-08',	3,	'J',	10,	''),
(1825,	'',	'',	'2015-06-08',	2,	'J',	8,	''),
(1826,	'',	'',	'2015-06-08',	3,	'J',	7,	''),
(1827,	'Klorollen auffÃ¼llen',	'Klorollen auffüllen',	'2015-06-09',	2,	'J',	4,	''),
(1828,	'',	'',	'2015-06-09',	1,	'J',	6,	''),
(1829,	'',	'',	'2015-06-09',	2,	'J',	8,	''),
(1830,	'',	'',	'2015-06-09',	3,	'J',	3,	''),
(1831,	'',	'',	'2015-06-09',	3,	'J',	7,	''),
(1832,	'',	'',	'2015-06-09',	3,	'J',	9,	''),
(1833,	'',	'',	'2015-06-09',	3,	'J',	10,	''),
(1834,	'',	'',	'2015-06-09',	1,	'J',	2,	''),
(1842,	'',	'',	'2015-06-10',	2,	'J',	5,	''),
(1843,	'',	'',	'2015-06-10',	1,	'J',	6,	''),
(1844,	'',	'',	'2015-06-10',	2,	'J',	8,	''),
(1845,	'',	'',	'2015-06-10',	3,	'J',	3,	''),
(1846,	'',	'',	'2015-06-10',	3,	'J',	7,	''),
(1847,	'',	'',	'2015-06-10',	3,	'J',	9,	''),
(1848,	'',	'',	'2015-06-10',	3,	'J',	10,	''),
(1849,	'',	'',	'2015-06-10',	1,	'J',	2,	''),
(1857,	'',	'',	'2015-06-11',	1,	'J',	6,	''),
(1858,	'',	'',	'2015-06-11',	2,	'J',	8,	''),
(1859,	'',	'',	'2015-06-11',	3,	'J',	3,	''),
(1860,	'',	'',	'2015-06-11',	3,	'J',	7,	''),
(1861,	'',	'',	'2015-06-11',	3,	'J',	9,	''),
(1862,	'',	'',	'2015-06-11',	3,	'J',	10,	''),
(1863,	'',	'',	'2015-06-11',	1,	'J',	2,	''),
(1864,	'',	'',	'2015-06-12',	1,	'J',	6,	''),
(1865,	'',	'',	'2015-06-12',	2,	'J',	8,	''),
(1866,	'',	'',	'2015-06-12',	3,	'J',	3,	''),
(1867,	'',	'',	'2015-06-12',	3,	'J',	7,	''),
(1868,	'',	'',	'2015-06-12',	3,	'J',	9,	''),
(1869,	'',	'',	'2015-06-12',	3,	'J',	10,	''),
(1870,	'',	'',	'2015-06-12',	1,	'J',	2,	''),
(1871,	'Tisch abrÃ¤umen',	'Tisch abräumen',	'2015-06-13',	2,	'J',	8,	''),
(1872,	'',	'',	'2015-06-13',	1,	'N',	6,	''),
(1874,	'',	'',	'2015-06-14',	2,	'N',	6,	''),
(1875,	'',	'',	'2015-06-14',	2,	'N',	8,	''),
(1877,	'',	'',	'2015-06-15',	2,	'J',	6,	''),
(1878,	'',	'',	'2015-06-15',	2,	'J',	2,	''),
(1879,	'',	'',	'2015-06-15',	1,	'J',	3,	''),
(1880,	'',	'',	'2015-06-15',	1,	'J',	9,	''),
(1881,	'',	'',	'2015-06-15',	1,	'J',	10,	''),
(1882,	'',	'',	'2015-06-15',	3,	'J',	8,	''),
(1883,	'',	'',	'2015-06-15',	1,	'J',	7,	''),
(1884,	'Klorollen auffÃ¼llen',	'Klorollen auffüllen',	'2015-06-16',	3,	'J',	4,	''),
(1885,	'',	'',	'2015-06-16',	2,	'J',	6,	''),
(1886,	'',	'',	'2015-06-16',	3,	'J',	8,	''),
(1887,	'',	'',	'2015-06-16',	1,	'J',	3,	''),
(1888,	'',	'',	'2015-06-16',	1,	'J',	7,	''),
(1889,	'',	'',	'2015-06-16',	1,	'J',	9,	''),
(1890,	'',	'',	'2015-06-16',	1,	'J',	10,	''),
(1891,	'',	'',	'2015-06-16',	2,	'J',	2,	''),
(1899,	'',	'',	'2015-06-17',	3,	'J',	5,	''),
(1900,	'',	'',	'2015-06-17',	2,	'J',	6,	''),
(1901,	'',	'',	'2015-06-17',	3,	'J',	8,	''),
(1902,	'',	'',	'2015-06-17',	1,	'J',	3,	''),
(1903,	'',	'',	'2015-06-17',	1,	'J',	7,	''),
(1904,	'',	'',	'2015-06-17',	1,	'J',	9,	''),
(1905,	'',	'',	'2015-06-17',	1,	'J',	10,	''),
(1906,	'',	'',	'2015-06-17',	2,	'J',	2,	''),
(1914,	'',	'',	'2015-06-18',	2,	'J',	6,	''),
(1915,	'',	'',	'2015-06-18',	3,	'J',	8,	''),
(1916,	'',	'',	'2015-06-18',	1,	'J',	3,	''),
(1917,	'',	'',	'2015-06-18',	1,	'J',	7,	''),
(1918,	'',	'',	'2015-06-18',	1,	'J',	9,	''),
(1919,	'',	'',	'2015-06-18',	1,	'J',	10,	''),
(1920,	'',	'',	'2015-06-18',	2,	'J',	2,	''),
(1921,	'',	'',	'2015-06-19',	2,	'J',	6,	''),
(1922,	'',	'',	'2015-06-19',	3,	'J',	8,	''),
(1923,	'',	'',	'2015-06-19',	1,	'J',	3,	''),
(1924,	'',	'',	'2015-06-19',	1,	'J',	7,	''),
(1925,	'',	'',	'2015-06-19',	1,	'J',	9,	''),
(1926,	'',	'',	'2015-06-19',	1,	'J',	10,	''),
(1927,	'',	'',	'2015-06-19',	2,	'J',	2,	''),
(1928,	'Tisch abrÃ¤umen',	'Tisch abräumen',	'2015-06-20',	3,	'J',	8,	''),
(1929,	'',	'',	'2015-06-20',	1,	'N',	6,	''),
(1931,	'',	'',	'2015-06-21',	2,	'N',	6,	''),
(1932,	'',	'',	'2015-06-21',	2,	'N',	8,	''),
(1985,	'',	'',	'2015-06-22',	3,	'J',	6,	''),
(1986,	'',	'',	'2015-06-22',	3,	'J',	2,	''),
(1987,	'',	'',	'2015-06-22',	2,	'J',	3,	''),
(1988,	'',	'',	'2015-06-22',	2,	'J',	9,	''),
(1989,	'',	'',	'2015-06-22',	2,	'J',	10,	''),
(1990,	'',	'',	'2015-06-22',	1,	'J',	8,	''),
(1991,	'',	'',	'2015-06-22',	2,	'J',	7,	''),
(1992,	'Klorollen auffÃ¼llen',	'Klorollen auffüllen',	'2015-06-23',	1,	'J',	4,	''),
(1993,	'',	'',	'2015-06-23',	3,	'J',	6,	''),
(1994,	'',	'',	'2015-06-23',	1,	'J',	8,	''),
(1995,	'',	'',	'2015-06-23',	2,	'J',	3,	''),
(1996,	'',	'',	'2015-06-23',	2,	'J',	7,	''),
(1997,	'',	'',	'2015-06-23',	2,	'J',	9,	''),
(1998,	'',	'',	'2015-06-23',	2,	'J',	10,	''),
(1999,	'',	'',	'2015-06-23',	3,	'J',	2,	''),
(2007,	'',	'',	'2015-06-24',	1,	'J',	5,	''),
(2008,	'',	'',	'2015-06-24',	3,	'J',	6,	''),
(2009,	'',	'',	'2015-06-24',	1,	'J',	8,	''),
(2010,	'',	'',	'2015-06-24',	2,	'J',	3,	''),
(2011,	'',	'',	'2015-06-24',	2,	'J',	7,	''),
(2012,	'',	'',	'2015-06-24',	2,	'J',	9,	''),
(2013,	'',	'',	'2015-06-24',	2,	'J',	10,	''),
(2014,	'',	'',	'2015-06-24',	3,	'J',	2,	''),
(2022,	'',	'',	'2015-06-25',	3,	'J',	6,	''),
(2023,	'',	'',	'2015-06-25',	1,	'J',	8,	''),
(2024,	'',	'',	'2015-06-25',	2,	'J',	3,	''),
(2025,	'',	'',	'2015-06-25',	2,	'J',	7,	''),
(2026,	'',	'',	'2015-06-25',	2,	'J',	9,	''),
(2027,	'',	'',	'2015-06-25',	2,	'J',	10,	''),
(2028,	'',	'',	'2015-06-25',	3,	'J',	2,	''),
(2029,	'',	'',	'2015-06-26',	3,	'J',	6,	''),
(2030,	'',	'',	'2015-06-26',	1,	'J',	8,	''),
(2031,	'',	'',	'2015-06-26',	2,	'J',	3,	''),
(2032,	'',	'',	'2015-06-26',	2,	'J',	7,	''),
(2033,	'',	'',	'2015-06-26',	2,	'J',	9,	''),
(2034,	'',	'',	'2015-06-26',	2,	'J',	10,	''),
(2035,	'',	'',	'2015-06-26',	3,	'J',	2,	''),
(2036,	'Tisch abrÃ¤umen',	'Tisch abräumen',	'2015-06-27',	1,	'J',	8,	''),
(2037,	'',	'',	'2015-06-27',	1,	'N',	6,	''),
(2039,	'',	'',	'2015-06-28',	2,	'N',	6,	''),
(2040,	'',	'',	'2015-06-28',	2,	'N',	8,	'');

CREATE TABLE `tblautosyncstatus` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddbname` varchar(50) NOT NULL,
  `fldtblname` varchar(50) NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblautosyncstatus` (`fldindex`, `flddbname`, `fldtblname`, `fldtimestamp`) VALUES
(12,	'dbjoorgportal',	'tblktosal',	'2014-11-05 07:52:35'),
(13,	'dbjoorgportal',	'tblktosal',	'2014-11-05 07:53:13'),
(14,	'dbjoorgportal',	'tblktosal',	'2014-11-05 21:15:55'),
(15,	'dbjoorgportal',	'tblktosal',	'2014-11-06 06:57:17'),
(16,	'dbjoorgportal',	'tblktosal',	'2014-11-06 18:29:15');

CREATE TABLE `tblbarcode` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldbarcode` varchar(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblbenutzer` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fldbackgroundfilename` char(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblbenutzer` (`fldindex`, `fldbez`, `fldtimestamp`, `fldbackgroundfilename`) VALUES
(1,	'Horst',	'0000-00-00 00:00:00',	''),
(2,	'Christiane',	'0000-00-00 00:00:00',	''),
(3,	'Frieda',	'2015-02-02 06:20:07',	'../images/tk005.jpg'),
(50005,	'Block 1',	'2015-10-18 19:23:14',	''),
(50000,	'Felix',	'0000-00-00 00:00:00',	''),
(50001,	'Willi',	'0000-00-00 00:00:00',	''),
(50002,	'(wechseln)',	'2015-09-19 11:05:56',	''),
(50003,	'(jeder)',	'2015-09-19 11:20:04',	''),
(50004,	'[_______________]',	'2015-09-19 11:23:57',	''),
(50006,	'Block 2',	'2015-10-18 19:23:24',	''),
(50007,	'Block 3',	'2015-10-18 19:23:35',	''),
(50008,	'Erna',	'2015-11-17 06:24:05',	''),
(50009,	'Heinz',	'2015-11-17 06:24:17',	'');

CREATE TABLE `tblbeschenkte` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldname` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblbeschenkte` (`fldindex`, `fldname`) VALUES
(3,	'Horst'),
(13,	'Christiane'),
(23,	'Frieda'),
(33,	'Orell'),
(43,	'Opa Heinz'),
(53,	'Oma Erna'),
(63,	'Opa Hartmut'),
(73,	'Oma Brigitte'),
(83,	'Tante Sylvia'),
(93,	'Onkel Gerrit'),
(103,	'(ohne)');

CREATE TABLE `tblbildart` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblbildart` (`fldindex`, `fldbez`) VALUES
(1,	'Fillys');

CREATE TABLE `tblbilder` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldb01bez` varchar(200) NOT NULL,
  `fldb01bild` blob NOT NULL,
  `fldb01filetype` varchar(10) NOT NULL,
  `fldid_art` bigint(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblbilder` (`fldIndex`, `fldb01bez`, `fldb01bild`, `fldb01filetype`, `fldid_art`) VALUES
(24,	'Schere',	'����\0JFIF\0\0H\0H\0\0��\r[Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j\Z\0\0\0\0\0\0\0p\0\0\0\0\0\0\0x(\0\0\0\0\0\0\0\0\0\0\0\0\0\0�i\0\0\0\0\0\0\0�\0\0LHUAWEI\0\0U8650\0\0\0\0H\0\0\0\0\0\0H\0\0\0\0\n�\0\0\0\0\00220�\0\0\0\0\0\0\0��\0\0\0\0\0\0�\0\0\0\0\0�\n\0\0\0\0\0\0&�\0\0\0\0\00100�\0\0\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0\0\0\0��\0\0\0\0\0\0.\0\0\0\02014:12:27 13:36:19\02002:12:08 12:00:00\0\0\0�\0\0\0d\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0�\0\0\0\0\0\0�(\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0����\0JFIF\0\0\0\0\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0���(�R�Sb���P�@�4�qNU��4-\0sRb���\0д�b��Nn�MYV��*an����E<-*�*@���ZxJr�<\n�KB*`rjA�`riș�R��h��Čc\'�~)�;PyflfsK�)	☁�EVx�j��i\0��\r�����erX�ќ����s�S�S��<g����c�N0E9G�@\r�\n�-;m ڗi��N@�(�8\nv0iq��@����\r?o�1\0Zx\\�du�\\��&*�T�SGZ~kDd�M!<U\"�i���cg�Q,3Fi��h�=h�8\n\0��(�r��<\n@1N�@\0�sF}�w�h\ZqO�	�T�4���)�\n	�=�?=@�i�e9$�4��-ɩ\0���w�5���I0h��H\\\nø�%���3�^�W\"��\0��ȟ�ߊ�9�su��⤢����J(�q�Ii��F�]���\nڡ�\0��>t��\ry�r��C�7q\"��U���Բc�w	>�+ͥ��s��ݏv4߲^�P���_3J��T������_�OP[��e\\�;���+�E����$\\wSZ�>/�I�����uq�c,:��?���L&��5�k�o�O�7Z�Y}x�R���ei+\ZM�g�a�ƄIG \n�q�Ah��p���Vvqֳo��\0�0c�t\"���W��\0�\0��G��T-�_?܁��ci3��܅�\0��za�n�K�>��\0ע��H��:���_��&b3%���UV��������\rI�\0? �\0���s�t��r��m\"MG9���\r����ԍ���U�d�\0���\0�h>��{���i{T�E*]�i�m,p\Zv�\rC6�h`u�%�T�OcQ\rL?�~F��ۃ�D��:ϱJ��f�|����&�\"��A8�\"�÷C��PI��D�`s��;��՝�P�j��\0_��͹K�*9{\Z�&�r�K8��Pn�j�w��eԱ4���	O�H�s�ҫ�Q�򒦣1ʜ�(^L�ki85��]���\"���޴Vh�FS����xx�#�f��U��?�*����y9<�.����\\@1���sc��\\�--��(dm����j�ov3��О\rK���z��p���\0:w0��.1d�j�4?	�`�l�W=s�k�6�+\"��ڲ_6���\ZҜ䝞�;�k��/C��V\'�\n�+�����r��Qڷ�? ֵW8\'Ir�`Q�P:S�sC|�=@���CR�N��|���1�0iQq�\nC����R�P�[H��*@�����kd��4�d�qWvӀ�ʊ�e/���Uk�8�$*�կ����wZ�SM\Z�3����%�\r�+�G�7�e�J��W�X�v%I!k�te\rb{l�p�����`E,d�Z�.����{u�v���H;��j!%}Oj�25�����0$��t� P�\'\n{��K!wo� Ϯ;Q\r���aӥw�r+�1���敟c\nO*�!�B85�{6��=V�ޟ��0݈��R��g������x��r�w��ѡo~�ŲC�{��qm+�U?��95u4nE!\0�3[:w�f��Λ�=@й��qֆW�|�Ջ��u�Y?��G�u�Tv��[B�F0�0*s]QVV<��S��آ)�1ڜzzW9� q�w�OJj(S�:��b���ݹ�`�P)ؤ��֘�֤�QN�)��\0������M\'h&��w�j���8\0\Z���rx�*<�E��1n����1�\\����h�ǡ����vx���l�W5\\:��:�b�M��mneӮ\n0;{�ލ��MѐO�qK{�$����5��m���5,t5tjJ+�h��S����,��e��)-��s�3^4�dc\0�֜����x�ob\rmh^�I�{�	\Z���\"�x�ʜ�{՚��ܻ�i �A���3�nA�\0�,J�(��u����R����R1��I�c�3V�nT�9�H����M5��*lv�S�C��;$PԘ$���c�{R�GjUP8u��#�O\r�\r4�8�i�x��\n;Ӷ�@o��g<t��d��\\*�,+����֝�lN9��7f��&8����٭7�TkG�m��җ\"c��pؖo�qZ��#LJN\n�1�����\0�#5#�R��60�)�!�Q3\0i�`isM�k��ڜ)�֔SAKL������$ө�1N�øf�u��Ph�\\q�E1�\npzQ�A�b[�p�Q��7SH��Ii�SKf�2x�H��?7ҝғ���sUb[<���␶j�!�{њh<Sw|�d$b�c�J���)	��\0�s@4�x�xƎ��L)å1��`=�{S���J\r0t��!��\'4�H�\"�)��ҡ�ҡ�\'ޤ^�D�n��*�S���-��f��{�`��S�\0\ni�d�N����5X���9�H�8��JX�np©��B�FM-?�����1��G$\n����:������http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\'﻿\' id=\'W5M0MpCehiHzreSzNTczkc9d\'?>\n<x:xmpmeta xmlns:x=\'adobe:ns:meta/\'>\n<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>\n\n <rdf:Description xmlns:exif=\'http://ns.adobe.com/exif/1.0/\'>\n  <exif:Make>HUAWEI</exif:Make>\n  <exif:Model>U8650</exif:Model>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:YCbCrPositioning>Zentriert</exif:YCbCrPositioning>\n  <exif:Compression>JPEG-Kompression</exif:Compression>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:ExifVersion>Exif-Version 2.2</exif:ExifVersion>\n  <exif:DateTimeOriginal>2014:12:27 13:36:19</exif:DateTimeOriginal>\n  <exif:DateTimeDigitized>2002:12:08 12:00:00</exif:DateTimeDigitized>\n  <exif:ComponentsConfiguration>\n   <rdf:Seq>\n    <rdf:li>Y Cb Cr -</rdf:li>\n   </rdf:Seq>\n  </exif:ComponentsConfiguration>\n  <exif:FocalLength>4,3 mm</exif:FocalLength>\n  <exif:FlashPixVersion>FlashPix-Version 1.0</exif:FlashPixVersion>\n  <exif:ColorSpace>sRGB</exif:ColorSpace>\n  <exif:PixelXDimension>2048</exif:PixelXDimension>\n  <exif:PixelYDimension>1536</exif:PixelYDimension>\n  <exif:InteroperabilityIndex>R98</exif:InteroperabilityIndex>\n  <exif:InteroperabilityVersion>0100</exif:InteroperabilityVersion>\n </rdf:Description>\n\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\'r\'?>\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0���e�E���� ������X��=E�T���J��\"�qe~�� A�Iq��j\"2#C�X±�)=�z�nm�dJ��H.��;��# D��L��X\0�i�e&����p�\r(�4�FAym��ޓ4����A�� ��VTYSeK�6r)#U�\\�DK~g��`�a;\nXQ&�DqF���^�����(%\n�k&U��E�A����\0��\0� Xԭ���TG\"�I\0�jh!r>?;��`p``d��Z6MU]Q�M+X��)�aߛW���}`�hH4(���d,�6ah�i2:rGs!�o\n����˫6���eĩ2l����6��;Զ(!�ht`�O��L��T5��$��WZ~OC�^�.h��S���q���﹛�n��|�l8�:�mg�Fο���[\r����ˎ�F�*�,UEV�U�錴��q��>��\nކh�);�M���v7<����9#�Kw�Q�ݏ�l���m���%��2T�L�&4��Y��US�7?[7�=�/\'nTTe�U�F�n[�F�ܮ�וŇ��m���<��ˋ��# �	�d2��jl���������_9�������A��ӻ�ly�Ű��u����npyx=������ֳst:6c��t\0#�W&��q�D�?_c�������/��:}ϜՋGw3o���]w��W�]�\0)�2r�W7G����i ��`a�2+s|mM�;���������k�4�d����vY���[�kӬ]l��B]���]2�O@Z�FB�80Ș\0@��i�y1��ܮ������\'�u�y�#���u����tʗ��Ua���`,N��6M�Yj @@�R(�9�|-m�.��U���+ҷ����.j��\r���\nz\Z##td8�.c!�C;.r@9V�+W22Н������ͮ�9�F�b���CPÈ!r �����+H4��\n�eF�������i]9�m\0XB�㈃ �d�F���r���en]�q*eEu\rI��u9�P\rA	�� �\0�ƕ�h���J���*&r2B�-*U�;����8�����: �� �&4Z.CHPX	1���`%S/.~gL4A�DZp\" � 5��J��iZ��	�5�A3*�,Et���Ǥ�, �%�\nA�5X�lB���cN\"ҵ���4�C�)�Genl0�,4��)5��5riS/�\Z�J�IV��sY7�3!9r?��\0)\0\0\0\0\0\0\0 !10A\"#$@��\0\0;}+��+�*�QE	�a��q��ڸK��ʐ��Q(����@H�j���(�;N�*(���(�\"���؄QVE{P��EP��7�Q�~�좊(����P�+ٗ�4~��b��|)P�Yg����J�l\\w9�y�3u<ZĿ����H�}{�{p̼�}�\0��rDr�D<�\"D<�=��c�C_/����q��@��r�NG�rr��,y�ݖ)i�����Ŵ�����qd��\Z��p��Z��<�>Nԏ�r1���`��#Z+cjR�rd��\0\"����$�-jr�FLFl��M�ù<S�ag<�E��et�a����`��Q�,��{���>h�I�s��92P�t��\\��!���Dz�����d�ڟѱ�d1dxg�w�D#��JǮ|q`G�>:>:>2>4O������̽.16�d�.��Hz�ƙ\ri����}��9����F�It��U��P��Q�b\Z<H�#č�w,���M���3�Z�?B�����^H2d��;/�ts��y:n�~xD�{4$�F	�q�.����O��8���K_���%�ͩ�O�*�kK,\r\r��M�R\\�K;H����dƌ�陰3c[�2=|��ه��2ôޯ����w��G���\0Q��E\Z���|K\'�NVx2�Mlk��ճĵ�we�$�N����3�\\ע��_^��K���5fl6e�F�K�R};c���^��bZ�p��^��J�Ye�X�Y|7E��G��ՙ1Y,L�8l���k���*�Hl_e~�\\6w\\��h�<h�:�_|н+����E�����/����I�!z��t\'|Ye�_���c;K�+����z��/�e�Yb�2K�Ye�b��1�(��/��������<��_&��M�g��\01\0\0\0\0\0\0\0\0! 012\"@AQ#3B�Ca�����\0?����]{�QG.���\"�׺>��m����oudQG��Q�9YZ�J�qR�?�_ҝ�ǀ������ʆ��$rC�,���a�39�]j�G������pI��j�C��(0��7��X�i��!�j/>�#�Fx���\0���AIS��*zIiϩ]_-��j�и�\\a���q���\0��\'�c6�&CgM���1�F����u3��SNʨ��hZj�\"tuCحi�u`Btv죩t~�n�QF׷�O��Z��>��^ˇ!\\���e\nv�>���H0��d�X�S�n�O$z0���Z�CGWu��\Z��Q�Mţ>BɵpIة����v�L3⟁�<\\�����jd��n�ۨ�t.�l-��>�+��+�p��n`��t�PCH��_�� ))!�ɪL1���\Z	[�W�����~aO���EQ��S�o�QI5!�\r�dN�T�\0���~BwSQWZ�����2k*|E���G]��Fț�St���~.��̦�U���1[�fj\rk���\0���?���\\Ӯ�����u?\r����}��6M�ɒ��uS�بel���Q���ھS^����TR������抨�8�H��J���uI�\0��>�9�%T�\']btm��S;���c���l�M�&���x(�>DNW�wM��9�%^�K�*�9��[6r�	)ݦ@�� �JC�U<RR�Gs���ڇY6R���p�e5@��\0�:�;�\0�uM-#m\0�O+�~�����;�u�kZ�z{���mu�k(���oe|�%�(���O%ǲ�1���_��\0\n��W��v��G�utr�G1��E|f���1��̍՗��\0,\0\0\0\0\0\0\0\01 !@\"0AQPa#2`bq��\0?(][y�B��{W�~Mu׍u��#����U-�+¢��%5LY`s`s`K#�1c��eRO��ŝ�Dr�nFJEu�\rX��g%�\n9Q4An��}�}�\Z��GYt�&&aw\Zlp%\\�G5��~$oÿ����G�!�?���H���yg�je�_�;E��JP��=���%�G#����&\\&O�<M3��1K���4�QE2�����ts��/�����vf��S[����,d-^�/ڢ�(ҍ(�\'���FW�;�j�1�#V9C�\0b�;�ʤ��?���J�X̘G,R�,���؜~��I��)��%��\n,�t��8�d��,:;�l~6m,��<*FLm-2�I�(���P�&\Z}��0fq\"�5ؔ]��P�c�Z��^\rt5d�!b���e�(�{��tߋC���(��]OƣJ+��WJ�ݥ�ײ�WWn���xL�;�҇���/c��\02\0\0\0\0\0\0\0\0\0!1\"2Q Aaq�3@P�#B`��0Rpr���\0\0?������=8�l��vJ�rj��#�yl�-��4S#���wb�i�F�B0$�8�y���ΦOE��\\��L��ak��dQΈE֑\'l�����ۧ�x���h�c)���H��v��`摳_�8��j���wVֱU�J{T���$D3â+����껼�U��ʜʯS\n˙M��w��^��)��49�AK�X�)�7de(e2�Pȝ�����ǆ��D�xhdB7I��9�8�7!�������JJ��h����\n(@�,$k��D\'fC�H��t �ha�2�5���H)\r��OR�JN%3,:��x�I�$ISg8�|�	)��J�\"�BrB�\0��9%�����<7v��#[��F�KOѓw��\0&\0\0\0\0\0\0\0\0!1AQaq���� ������\0\0?!�HQ�B��(���h�آb��-bOg`�eo��I�BXX���Hv�l��,��#��\\\\:��\n^\rsG�î$�k\'�\\���$472Q*�рA\"rg_���H��%Ob~ï�>�	`e:�=�Z��` �|�x%�#�\"�zMf�(���#b��ؑ�\r\r��o�f�A> ���D2%�Б2$!���%9�M3�.&9h���%�dH��D4 �Ј\"X[	�U�.\r,�ண���\0 �\Z�C��\0u�`��In��7x��h���Q*f!��#���l���Gt�M�>��d��_�3�\0��;>��д�ӿ�����\nT3�>�*<�2�_Y/w�ľ�J���h�ԃ�)�g�L}\r��\0x��o~��e�Fj���\0�侦e��X5��1NI������zc9q:�Df �����Bcl��L��Bd�������{L�m1P����g���pn�����Ǡ�o�3�*1&G�Π���gP�\r���{��)ڄ��n�zSY���b8���?���4�Gd���+y��A	Ţ�[G�5��#������\"�\0�o�!�\0P����#�t��7��\Z�����m~\\4����G�>��5��bD��\0��u�ȩ�_�bu�X��D\Z>��b��J�`����Vz�wNr���o?�\Z,�=��t��eo�5��[}?����_��8�b>�{G�b��ފ��D$A(#zz������Rl�V�s�����������na���\r�}3$��&(�V(�b��/�^����j���	LĘR�2\"����G�<Խ��!YB�t\rS��-Y4L�,�aOk�*خ�-\"QY��)+DDl�4$��]��y1Vסb���ߠ&\n.��S�8���\Z!PF�b�A!`���5\n��\"�τF^����u��\ZX�mK �H�[o�[\Z\Z�ѣ�I�*xV�FD����	�$)0�B�b\Z�V�t�E�\0�����/��i�v��3\nLȋ���b�\rH�\"�y�c��3�GN-����nlB�w06!��I����6��4JळE�ِ�b�2Mp���:�/(EF���Bd��6.�v��n��1�\"��D�,\n]!B�%>F授xE\\��!2�N��x�X���y5�b���p��cS<��w%C.D.o�X&7�\n6�κ!e��\Z��i��\r�d J��LB��4o�!��z��`��\Z�lw���K��͂���\0\0\0\0\0\0&C������Ý��z��;�1�>���݅��g\n�|��`.���S�b��OI�����6���m$LPƼ�u@��P�e&,��6. ǀ8���Ւ�\0�P!�X�k�����>\n��+�R�}��T)W.Adh����Jg��̪�z�X���A�D1K�2G�>�ؓ����Zl�t�[ i���9�cb�e���*�oI�)�TP��]�T���L�B��i���P�Ӧ�e��xӶ[�-I\0D��/�?w��H��Q\r;�6̈Z#��y���^���Q�\r���1O��<1��\0\'\0\0\0\0\0\0\0\0\0!1AQaq� ������0���\0?{�GtZW����Z��y,�`�y�钹Wz<襶1�Ǒ�Tab�G�:X�ǽt��i�⮏�`�H��n�h�lH��2����B=������b��6p6!2�=��뱗��hycC�h�ٟ&(��\'��*Ĉcb$����L}X��\Z(d���HoW��e�%��ND$\\R�}�cc��\rr^�L��^G�_���#$bF��d�\Z	��b�\n=������%�+��=���z=�Bb\"v�M�������K�4+�a�1�� ��~�}�B^p*Нc���B�bh�%�Ľ��e����_9��|��띤_�\"e��w�܂�&���\r%���~�ޅ�U�hS�,\Z��й��i��lK����>>1EY�^�1.�!������8SMe$�\\?����̕�ٞC�XmF�L!�M��t�s��=e��z	�d���{\rp\0o��\Zղ U�Љ\\_@���H-��,��G��(�Ѻ�ϟ���F��/�ϱǮ�$���d��V�\Z�ݟ��Zb���}Wq�#.��s[<��FYbb�.b�%�(�$���/Q?%\\�BbbU�w��\r�����[.����&1�-���$7⊪D�������޿=�<#a1^�O����İ��95�&�������	��!�`/��`�Ŏ�SQY��e�õ��cKmyɏB|�feO��p��F����s��*�1뱔H�!���4Q3e�)J8]\"�8��AQ�V�F�a�U1IS�_��#�����3U������i$Eع�/E�Ҙ(�C��CK!VŞ�ߏ�Vă�Q�u}��Pְ;���nƞ:+��W��\"�f�\0��o�s�8~�㣩���k>k�,��jq��K��ҫ?Ҧc}-��������4�����{�l`u��(��\"�B^Qx��o�����(�s҄7:�ͺ4ZAF�!�)K��n��Y���^L���c�njl�\0�%{#2b��\\�~X��(Ń46W��FF�lx��9�]��J�^NKM=�.��^���\n6e����x�i�skl�*Y+ئ����_\"p⡶�F�-6��E�2�L��:e�������Ye\Z<c}��J�-��	x\Z�s�[c�F�+��э�h���!1��o�V^�g��W��\"C���#�t�\Z�(��\Z����<b��,��c!�n2�����8\'+�m\rClI:0Np.��L��R,�:!���%Y)��Ĵ��#��;��0M\re!,I��\0&\0\0\0\0\0\0\0\0\0!1AQa q0�������\0?��8z����Iّ`X/�	�^o\"y����E�{�Ĕ���D8(�%��6v(�z\Z�9[(��	��J^=>0Tkf%6��%��.�0�B�\n\'E�3FE��\Z��:��d�	�)Y|���&%�>���Qs��L7��`E��1D\"y1�Hz돮\rd��Y�x�3�;�+�]�����A�1�Ge��_p�3�\Z�R	,m0v��8��Ǳx�.�k4o�,���-vũ�&!��F��\rO\"���$�LH_���h��Ǳ�6x�7��������\0����6i�(��;��QW�L��\n�׳�^N���<�Xb�\Z�pc�Øo�Y����OCFBX\r��f]�m��[������ط�3���\0�GX$�����e�f)�b&-`�Z��&���C�G���F�+CjXߢ�)�c���\rt��b*���-�Eo%�бԄ�W��(��ӌ�oWbo%1�ۦ#��*�1�j�$j��nz� �m`��%`�����������R���k�3�A6�>F�CJ��e�G���A2�06��x+�Q\rVIM�=��m*׃�ꅬ��]�kS%m��\n�~(l�*ˡ�xcT�h��fR���u�A\"1�|u	�L�%x�B�u�˟�0/(�~0h�F���TCM����G��|���hZF4�;լe�8���Q��r���\Zl��B5��[�!W���p4�(�lCp~8��I3�\rdgd0o\\a2\\�Y!��Bv�<�D(���H�m���b�#ch����tc�����DB\"Q/\"P��a�lY:#뇸QqЯF�#=q	*A)�G���dH��//��*���\"�4f��Q���&\'��M���B;�\Z�&lH�Ě�g�$|{�p����(l��\'B5�%�}�0AR`�#�\'h��\np�6`�wb3�%4��Q&�����&w�Ę��H��Y���\Z��L�\Z	\Z�Æ�	Q�%	���q�a��;ᨨ�؟c�����%{$hZ?��\0%\0\0\0\0\0\0\0!1AQaq����������\0\0?�MO:���\n125l����]�xլ���\\��h|�|�g�Xu�C*�mc�)w��P���\0.���,��L\r��P�ߙgJ���. G�P:���+1\'�)��	�e9�b@X}�UW�o\\Ɗ�x�fP:�����9�5\r\'/>f\Z�J�0V���S�!+m���t�\"[t|M���?�(�F�ժ\04�>!)�9��q�E��(�7a����ʠ��9aST�@p�[����&@׉aD��J������-0Us�$,��\r�\ZӘ�m]�j㽿R�ġ��zS\\(��Xo����U\r�#���RĲ���#��2�(\nf.g��*`��qY���)��蛺�\\P�U�ckZ�2����X�6��|0����[\\͋�2�[\"\0�*E�K�n�E�(g0�?�f9���i=�L0���a^�&9��#�j���q�\\�ʅ�V���%+%��\0��?�\n��BL���f�����<>�&��0ӝ�7v��mq�=faP(�R�p����0�#�c����9e*��l|Ō:�a���FQ�94���� ��_Ģ���fB��L�L��M�9�&^�v�T�R���B��ob=��\0�k�c���_���r�6�7R�怮N �����\0��r�~��\\\n���$E?0%�\n+Ly�\Z\r�a�y��}L\'H�qtK\r8��qj;b�$d�c3>��%C����_��+�2�ە�X,�LK,Hc�w�QY{�F�T���p��Q���.s��b����\"�����@��}���k!����S�Kj���Y�*6i��=��I�P�$\0ܕ�SxKc���?B,-|LJأ�E;pPr�K���e�����l��\n�$��1.����7w�`��W����;�9Mz�M�?��\"Z�d@xN������UTs�j�#oKp,�-Wux��\0�g\"W썛\0��A\\�\0D��)��j�`�.ey�\0J�}�>���;��i~�n�\n��Av����\0|�z��Ƕ&�R.1�~��qM�CE��h(���(���uP|c�������\0L���J��\"@�?ωnE�$CQ����m7$�5Eh���X\01�Eٔ����\r��Z�����؏\"�ʫ��#��P�[�����,k�$e��d$8[eKƿ��y��삤\0y���m��y�*�~�%��߆\'��_�!P�S�>�`o�Dҝ1q7R�)��e\r-Ni�P0�(�.����B���>�x�������);yY��S-NS�f��\nq���xe��L��`p��Ѩ��\r�����m@�E\0TWa����`F���|�s��ETVb��L�M��(����r��\n1�Z���F7\05\Zq*�s�p�u��b�J��\0����	�0.qV�5.�\"%P��-���eg84<Jp.l�f@^�vu��4�\0�/��?�8\n.�0��~��ň~���bT�`ī���p��g��4���\"l�\n��=\\CaC�����\"���*`֠W�b/\0�`��ǁ� .V�A��F��N?��V�\0�ėrK>�U�����)��FU��8:�aV]E�P�X��7��;��^���<E/h\0%e����}����\r ��\\�c�I�J��*�y�(��4�!��i�x����E����e���W���JpQ�C��Ģ]��G���\Z;�(1�G=xg��)d9:#1y����1���f������f^��a�l����oW�SP&�����)B���PpjdY�]��vQa����[�B�g.Mz?�����.����o-J-����ێ�]�t��Blt�.%�AL����q��%�FV��qp4���!|���\n�F\\[��3�\Z�Z�*)aLW1����U�\0\\,0x�#��F��xw8�HV��mex�����ۨ[��g���\\2��P�;�N=�<*d4�\n4�b����,�����rJ�`�uw�mUr�k>%��G9>%�\Zu�dg����|us�cwQ����ճ$Z�(m����r����g�J�o�\0��*�b�9���#f�&E�Ú��~ ���(S737����_��e@J\Z�����%;�1[ɋ�\n�F����*�1<�ն]���\0(�fQAb�[����/!/���}D7��E��xůq w�T�P	��()�ġ;]�A�p��<Lջ�CN#��`e)��~`]n3���a�\0�a�������cuX�a�2�x�MLԻ�:���\\�P���]��{�s����1�2����)�c0,��+b�%r.��1qԦ���×�2d�]�C����\n�zܩ{�\r_0G�P�ϙMssk/2΢U�����9b���BԩV�\01ʫ3�\"��˘/M�T���ı�h�(�<@�̭�S	�Q�o�u&��8��f�/�oJ�3��`���^����E?2��9��_��B��\0�K�h��Ju����ب�L���j���\04sF����Nc��p�^a9q	v&���\'ԥp��|By�E����f9)g�X칷�z�|�����������(>X�n�2Ȣ[�����WǏQJ���<D@�f��b���u�E���',	'image/jpeg',	0),
(25,	'Tesafilm',	'����\0JFIF\0\0H\0H\0\0��:Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j\Z\0\0\0\0\0\0\0p\0\0\0\0\0\0\0x(\0\0\0\0\0\0\0\0\0\0\0\0\0\0�i\0\0\0\0\0\0\0�\0\0LHUAWEI\0\0U8650\0\0\0\0H\0\0\0\0\0\0H\0\0\0\0\n�\0\0\0\0\00220�\0\0\0\0\0\0\0��\0\0\0\0\0\0�\0\0\0\0\0�\n\0\0\0\0\0\0&�\0\0\0\0\00100�\0\0\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0\0\0\0��\0\0\0\0\0\0.\0\0\0\02014:12:27 15:49:07\02002:12:08 12:00:00\0\0\0�\0\0\0d\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0�\0\0\0\0\0\0�(\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\n�\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0����\0JFIF\0\0\0\0\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��)g�NU�=j@�ƕ�:���J�&��\Z4�R�JYq֘�ozM�	���0)�ʎ�$d)�V5�~)��X1^�R.S�=��2��H��+�8/����KCv҅李)@�h�cx�T���Z&d��ZL\n~*7;j�6\Z��F�`ӷ���2�� CO#�U$O��V�\0j&�[�b��=jP�8��6슕cc޼�w��Z3����0)�i�����O\0�N��Ӹ� ZxZUS�����)�i�h�x���1STg��;��E\n���JEJPV���A�N�;Ra�֨͡ƣgރ�j\'n�V�`�֠$�9����j�&�M?8�UrlFs�I�ZRi��Sq�b���S��ӽ��R\n}+�aӱ�Hi�қcH\0杌P*E�;�v)x�4�f���<�jR9���\0=)Z9r��֝ÔG�ԟj��c�c?�2Vq�V�by V�I��Br��SpO�v?�&H\\�>\\�JI�첁8��@�	C֘�\\I/q�kuc	&�1\"�&�w�Ң�`*���\n��1��g�U���I��fnIu,1��*�^��TF�R~�?\n|��tt�qKڐR�����РS��1zә��4XhwZp�sQ���-� SQ��b���[�/&��I�H�YD\0T5b�\Z�Ku���=���f9��GBi�]�#3I�9��I���Ҡ$c���\nRj7.1rص$ɍ�5Y��*ߝT����+Ur$yc��(�WSi�]����F��=«`���v$� ��)�qB@c��J	�\\�X�)b��������x��{֪6z�]n\\�CUb٫RFJ0?Z�V�y�kTm�)칤ێ�j�zS	��s�*2	=)\rz���	�x�8`TR1c�f� <\0i�yR(@G�Z����F*��)�b������{يF�J�U�E\\Bs�8��o��֬dw�gh��\n�=�PK���� �\\�+>�wW88�o���V�*��w��\r�\0sSG+�.&�$a�8VU�n�F�ٳ.`@��})���\'ڵM�x���M4E\Z�Q�U�q��X����z�\'��\\��M��̥H\"�ԁ��Ğ�ס\n���g�e�Z4g���U��RsS��w�ƻ77^����%F�B�/��7S���0�gު�Y>ե7��*�dA�4����VJ�\\\n��}i�s4�ď35\'��1�T��AqT�r^�E�P�<R�9�y����^SG���z�Q�)4Rc�V���\n;=n�TZ�,�H���D/}\nv��q1kP9$UE��� ��*�@�[�+��ԙI�Y����y)���U��;��V	J�\Z���ɞ�U��j���A!}����8M�}�W#��9�Q-��B�v��Yow{3��4�6�kV9@	R	��y��ϭtޒ����N�3�\"��b<�U�{Yb$����֔v,p\"�`$�H�(���2����9����R��e>[Ӛ�W{�¶�O����gI�|�򎂓�v)��M,�8%��T̀+W4�F<���_�JG<}i�cU9\'&�$�UY��QdDn\n��Mu�qNQ��n+\Z�Թ�4�u(5�u��!|SI���reĐ6NjE\0��O52�I���`\0)��!`��5��D�%�\"�d0�F\\g�i0)�Ԛ�S��j�B�+g��h���Ԧ(��cQ�SC�A�\Z���Ǣ�\\(t\n^����4�sZD�ɕ��#�\n\ri39L�ާcQE���+���9&����5+J���FL�Rs֫9*i�$T�rj����ڔ�8�HMZD�;�4�j�5*���&��I�NE9�Tg����\"(lS���i�f�4�.����4�\0)��M\rHQ�isMߑM-X����QQɧ�	��Ԡ�M!<VщE�iU�aP�{Ԋpk��L%\"Ҝ\nc�)7qP���Q�$-�D�\'9�ߚ��d�\n*7ZR��Lgx�HL��i�4�y�$\n�w%R@�g�79�i{\\\']�-�L-M���ɨ�����Ӂ�;R��IDd��Fρ�!&��5CCC�P	<�F8�k;_R�(ꍉ�H�j\"l��i4ܚU��XĆ����1x5*��1�؅ǭ1W�$<�3�jf5�⛿��j9\r4&!9��\r��b1������9��3!�$�����http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\'﻿\' id=\'W5M0MpCehiHzreSzNTczkc9d\'?>\n<x:xmpmeta xmlns:x=\'adobe:ns:meta/\'>\n<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>\n\n <rdf:Description xmlns:exif=\'http://ns.adobe.com/exif/1.0/\'>\n  <exif:Make>HUAWEI</exif:Make>\n  <exif:Model>U8650</exif:Model>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:YCbCrPositioning>Zentriert</exif:YCbCrPositioning>\n  <exif:Compression>JPEG-Kompression</exif:Compression>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:ExifVersion>Exif-Version 2.2</exif:ExifVersion>\n  <exif:DateTimeOriginal>2014:12:27 15:49:07</exif:DateTimeOriginal>\n  <exif:DateTimeDigitized>2002:12:08 12:00:00</exif:DateTimeDigitized>\n  <exif:ComponentsConfiguration>\n   <rdf:Seq>\n    <rdf:li>Y Cb Cr -</rdf:li>\n   </rdf:Seq>\n  </exif:ComponentsConfiguration>\n  <exif:FocalLength>4,3 mm</exif:FocalLength>\n  <exif:FlashPixVersion>FlashPix-Version 1.0</exif:FlashPixVersion>\n  <exif:ColorSpace>sRGB</exif:ColorSpace>\n  <exif:PixelXDimension>2048</exif:PixelXDimension>\n  <exif:PixelYDimension>1536</exif:PixelYDimension>\n  <exif:InteroperabilityIndex>R98</exif:InteroperabilityIndex>\n  <exif:InteroperabilityVersion>0100</exif:InteroperabilityVersion>\n </rdf:Description>\n\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\'r\'?>\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\0��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0��u�$�Q\\n8�F#�S��B��`X^aJO�QӶ���#i�\\=7�ց�\\O`���1c��\\H�壯]���U��@�&���G�|�\0�fR��$�$�1�9Ă@\"M���1ƈ̥�WEd�l�9����D��z�v Ļ-Q�ϋ�q$8�*�+0�&�UH�h3�WNm1�B%ǁ�э�_N8�.�Aq��۰��ՙC�tVN9Y �\n/���jfT#m~\'�]���{َuj`䑉ö�^e�-92\Zʗ�+�d8��0Rޗ��1/��Ac�,b�6��6bz�k��.�η��Z\\��G,��Ug�<_L��c��[pj)c�\Z�U��e��%�\'O=-\nZQ�̔����إaD�O#K1X: �m�_D�K1� �h��1&�W�5F1t�=<��trB`�<ؙ1?:���U��?5�\r�b�T7b�J��]K쎸j��ZT�.�]�����񝹴e���W�a,x/\reZ��\0�{͏q`s0�=T�:a[�Ƌ�:��q��S\'o$�?Gw����;��3�����ԁ����������K)���\'.�j#�F���9W��x���~\\},�z��sS��Վ_K��\r��9!nb���]�ƥ���=�:iN\"�����sz���z�M�[�c�ZV�=,�Nd^�W�浹��GK�����2����hڍ��7��ųjS@s�Q�z%�y��絑��/�I�Ey}3�t����r����lFKB�T2e��QE:��_�ֆ�fS�?��{�#�pvk澡���[���y��8�[J�=�9��-\'��%���BF*�V�Ӏײ�W���m���JMw>�}�ǚ������鎼��R�B�Ù%iR�e7C�N�[#NAks��>���U�i>z0w����HҧK��љsɍ�@�+5��C��9�\nD�6h�L2�c��+��G�����w���\Zr�#RF�#$�U$3�*���ʬ�*���l&��z������D��ިm`�f�!U<���.(�N��oR$R$g9�dL�����\Zr���؇q���!i�V�!�t���JR}�W�Rp+�Gee]��gT�;Р�,�4iEʖ}l���̣p�uPR}D�&�2�i�LĜ8��W��̀\0Է��VN\r��*1%�؅�\"��d��9�M\n�k�^��\nrlJ���A�	F<�S�8�]Q���Qr��ST��3�ʌ:�n�ғ��I�X�L%D\\�B��c���l\0������\r�8��-P�$A�,9֖��uefH38Y�\\3�� ̡re�c��\0\'\0\0\0\0\0\0\0\0\0! \"12A0#3��\0\0>�\"Ef�(����(���QCE,MqG�*�BEc���T8��Oʊ�,o\\m�a�9eH핚6��i�Q^X�,l�YCb,�h��(��Yq9F�9���V9�-��Eeb�Y���9�e���P���K5fҰ�CՊ;�{3��W��<Ѕ�o�ID�\"�Q�tn�UR�Yx_��>���%vl�(t�13q\'�N�*�Iu1%��$�9<#���D~����D�KR�$)�Ȍ�i:r���/�3��Q!��\0�kjQ�L����#�*c��$P��YCtFm��B������!��z��KSi=M�q��F�:�yAiu3f�����z�\\�S�+6�L���n:\noclN�H�}�R�5-����i\Zz-�_���.0H{GW�(|\"��rL�F\'X�B�o�O�G�_R����-�e3�mHC>�=4��k���MTrY|>E,uk���%+�ҟ��gQ�3I��6j�:zG��[]y��OU�.�{=Vm����NCB)�E�|�>G�:Qsѭ�:<��H�ܗ��֌��A��VΗCON=�i��7��mt�g⣳5D��6���l~˵�1��Q�+�H��Iϫ��[�j:�\Z[��Hzgn\'�{�*?�I��\"�l��$Q��p6k���P��t�n,Y�b��c$1�.(~\r�!a������,����D��k�Ǆ)�!Hr���xO���R�ȔmU\'�ʋ����ŏ1e߂x�\r�\\��(c�5��p����,��ྦྷ����vŏ,&7�x��n(Xx�&NG�YtYx�ς>����\"%Ⱦ��7�&Y�D�����ś��?���yf�7��\0(\0\0\0\0\0\0\0\0 !10A\"@a2QqB��\0?勂�^�:�{����\Z�����Enk��X�\0	����kg8���x��}�X��K�ȻW�s��ڳHƆ^\ZO���1�k}l\\�P�$2�(q�;ä9��=S[e�ğ��G��X���?�g�Z�����W�T���I	�dX�#쏍˄O��xZ�\'�.��TJL�H��C�ec����&7B\\[��f�J����56?ye��<�\0Y)�����d�$)6iRF�%��?���g,�~�r�¬8�t��MB�H4�	���IP�G��_�Ĝܟ$��Ԥ���8���BTvK�6��D��X�F�MY�ئ�9j�$V�:VI�)e�gg�8Yg�\"�NZ�Ue��%���񴭱�6iϒ_�$���M���b�������JN�>�_��K�����5!�ʎؠ�\"K?x[>7d��uؼ���R�?�� �Mz�F�zb�/�zrc�M\ZM8b���{,XXp�4#�L��zQ藍O�x���_Cć�K��-�e��f��=����:��ce���<ZV�/}�X�����!l��e�Ycc,��5C��-����yccŚ�!:/ؼ<�㱗��t}���+jC;%��<<1�<�\0��\0(\0\0\0\0\0\0\0!1 A0Qaq\"2���\0?n��\\	pW��W�ŗ��QG\"Tp?���=xp<z��vñ�xz���)�J�,�VX���+�X�9�x��^,u�/��[�ߏE�&lb��GN$���?��~�|,�ˢȈVV5�_g8F�f︥dZ�������E�X�ٰ�ѵ,Ka�$IpG�h�%�.G\Z+�M�e-�U��_|�YXPm\r5�d�\'D�>�|܈�2:���?�*�8	�{��,\"��%�C��ʡE�r�{G�\"n�#ɥ\"\ZIvF�F2(��7���r���2�1���\r�a�F�j)�pO�U�F���[���%��+�eF�Y|�����~.�vAvM��=F=K�����ѷ�C��DYb������6vpq�extG��\"�O�n�zTnq�)�F�.�$�R�pi�l�ɣy������j�D��H�d�8}�%����F�M�]26ͮ�(�t=Do7<�(~gn��W$iӾ�idtZ��GGR^��o�h���O�tOY#O]{���	sg�����Q�\0|[7b:�>V|�]<��%�\'�#���s_�՗l�\'ح�BvD�^}X��Clb���<7�]egm�HD_B��a���+�hr�o��?yB���H�1�¬عeYC:.�,�����<�.ȡ}�e�z�(��������������7^_C��EY��d�C(��+�.D/���&2��Ea����6�#�?��x�^61r�O�BK2��F��ef\"��E���?��\0(\0\0\0\0\0\0\0\0\0!1 @Q\"02AP`aqR���\0\0?����ѽ��n��I肻�]�ہ�՝�*�ZI��y�ZvI�F�w.U�D2�:\rU�;󦥌Gиc3W*}��9�w�Z���j�}R�A��E%\"h�si�\Z�߫�A4���C�S��O&�o\nh�NH�W��M\n%�L/W��.iʜ[��g��\r*q�#��BF�GL�0�I����\"Ty�#����G���\0$\0\0\0\0\0\0\0\0\0!1AQaq���� ����\0\0?!��]��	\Z!�����s)\\6��^D7�B~\r��iz7��HK�p8*�1��T]ȖvBA\r	��44\Zxo��ϲ7�%ǃBG����k�(G�.��&U�����4Qhm��������C0�/���b��!,�OP�<1�2D1#�i��sz�`0��R%HA!,�h��([��9衺����τ�`���~��I�R�[����N��h�������D��z�������(�{;b\\A\"	:%��<��ǁ�x���q�x2��H0��&\nA�؄��Pw���ϑ-*>��3\r�c�xG�J�.�Jk��\"&�x�러A!�H�LHKȖ����>|!��_C�M=2���oW�w�ഘ=���{N����S��2����|ы����B�(j1����E�c���e����_G����1�(g��bo=�\Z\r�hRo�!.@:����6}A<\Z��p�l�\'��~�!UoGФ~X񪰬�#^בұ=��!�Kjf�1�*xH�;��S�mD��c�C���\'����b�Hǌō��L�B�b�	 �F��dE:I\rpCD�C\'>�%�i����h�ɓ��tEL6k��Io3�C�>��Hi��u�n߁!�΅kpH���S��ϧ�\'��=����C�Q���a�\r��	\"����^�7��h�KN��@ױ�[�z\Z#�\0ȓ�	~Lm:����&�|��5�܏�H~��\0�S�{�pmD:Q��\"���Ix.y�ȍXxHA_鉋}ĆBjv>��v\r���c��jĎx�6\'��)�\"C(i�LUu��\rX(���U�%���D��v�D\n�$��N]����+u\\y]��%GL�KE�؜OO���	�׋!���Uif�������V���N�Ѓ�ݳ�:Q���\nx�t1�0�M8��1���c�C�v2���\r�i�p\'��$1R��5����1O8\Z|�*Z&nS\r\r�\"cL�S�������p�9)�ϹJQ���|��kș\'܃D��4~�xF�hn\r�\'��1��M�H�1�Z��Mb������A-po��p�\Z1�za�M�n��!F�uКE4�>L�#���<�&2�4b���\'БpLn0�F6?q닃�7�?���\0\0\0\0\0\0_����<MGKZԹkx��*����ġ�g��m�ᭅ9����;A��4�����K�IS��㱈p�N��Y߯�DqO�i�4QB2�\Z�|�6q�>�j��v�\"E�kT�+��AC����ѓ�����B�Z84m��	\"�F\Z�S\\�y��>s0��Mh���\nA_�K�)��}��G�ZW�l�o��Z�<��re��\"��ѧ�2H�BZ����T��d����A��\'�����d�e�\"e�=}Q\0/D��11(���v_R�vh$�@����$�?	\n�ϟ:��\0\"\0\0\0\0\0\0!1AQaq�������\0?Η���\\�+�jJe|��\ZN�������\Z�／��ٟ����n�N]m|�M��\'��h��_���ʷV?H?v\'K�f���u.�C��卑������G��Xβ$��{��S��_�o˾�v��!�,wl\'	4�œ��9��rfAv��Dt��л��\\/���X��X=�γ���,76N����;�$�s�6nI�˶	:�T��=���Ú��{=�\'W�Z;)�ϑ���\'�a�k&��w	���2g�H2���g�Y��}���d��ꃼ�ݻ���m�O<�f�;�����~�Ys{�&{�]q��c�\0����\0.�����c��/8��2{�+���Z{ ���|�3�!�G��2���}}�kE��\0pk���K� �`$��/�c\'p�Y����z���x۲�\\]�ܝ�<N�i�r���a�[i�?=��O��3��\Z�Kn���q#`�\0�U���Xr&u쯟���n��\'��m;�_��.��\\�r�Y7��\0z_�q�0�6ۡ�(|��?��ǳ���Ƿ_dy4��l���o�7nB۲[.C��P�9�S�g�$ӢcO%q�=��M���`/-x;3��2���s��t�K��f��D��b܇�������3�1���6g/�\0%w��N�o�}�ÿ�sw�<� ogw#I��k� O �s�(�x���𼵸�h�#0\\H4�z6R�_�i�_V���x��,\'cˣ6�F�Av=e����m^��9�񻝹b#�o|�԰i(k9m�>��t�m����>p��!�d�n8��L�}�q1~���&���!�?��0�׻���������$!y�\r��y����fF$!�-?[~M��0�\r�������\'�鈘]�]��ܸ�!��&7#؅v��WC�%�K�.ɗ[={2�^����7�B�T��cy,�{�ԗ�������b�0r\\�vu�E�wO��Ÿ�e�Pݖu��\0�ƾ�?�=v�}�KF�$.9=�b|�ϒ˶���t��&Yo�&��O]J|�˷�H�C�\\�����p���������.��sg������_�A�I�80����^?��_��������v��������3�Y$\'�ū����&۷��d������q�[�6���/�����_��|�ߓ�eɒ]�$K\ny,��/���gX?pl�G^�_ B��D۟-��#��������,O��d�zم�l��\0��5a�A͐�\r6�Գ�,�`n!V2�\r���,����ޡp�.�����\0$\0\0\0\0\0\0\0!1AQaq��������\0?7�a�,�����������{�믋���avsߛ_?�ۼ����m-�0�R�K�\Z��y\"���� �`�����|�eÍ���G�\\���ײ�w�>�Ӱ�s�Xt�Ǘ�}��]YfL��8��`�K�n�#��p��e�S�\Z����g}��7�0��G��r3/}�2�ab��2�K���k��I��;o��_	����2646>�7�� y\Z{/�ǐ�yl�0�;f޻�8�[���ŵ����\\c�tc-%���>�gՃ���^���a�.aԅ���K�@C����>a�_�\r�a�gp`Y>�]�R��w�ü��\Z�W/y\r�p��9qL�������0��_��m��:��v<��΍��lS�����rߝ��ٟ�� C��Ͱ�#�M�ճ[?����]-�;�:_����B��;��3$8\'B���h�A�n[��Z<��́F�_�g�|��7��k�k�t�����}����/�t����F�X9���ö�e���\n-�g��F�.�q�ߙf\"����f���[@��I�nNy?E��l=�hMm�o������O{g�a�w�_Ŀ���}�!}Xh$A���^���f�S��짓����,����+�Ԁ���`p�=�s0�ȣW��1��P��[	j�wz���8}Ν��\\<�\\�3����8a|��h̃��!:�?6�#�2n�IZ����~��z�X�w�?o����2�tx�Sg�����@zɕ��]z��f}��xɔݖLx[���\Zo���8C��?��X�4�X쀇��ݦ�`�K����/��vhA��͗���ZZf|��r��-�.��0k��3�r���q��첃�w2�����bT�=�)��,5���v�~@�oxJ{	�	j�c�q�u����%�j�@�q���\0���\0�2뭀��M��K�d�®��2�K|K۽��~�l�˭�A�n��(��J�@���ݹ���~��������52\r�䲆I:|��c�s/��i�8�~��跶c�.���CG�_��e�@��{��i���	�\0s�\0�l�b�l��5�ys����\"�|,1�J�C�z-/��WԸhB�n�ɩ�-��4�l����2,�n�l^Kb蒵�5g�C뭜��m����6C��\0��m����H���z���f}�Q�̼���9q�>��Cߋ�(2p\\\'Nm`q��n�hs�N��O5�&B`|Z��`=��f{l��7���Y�~a�^��-�񴾲u��\Z��������:�G�.g͂��k|�7�5�u�-�|\"�ۯ�9��\Zّ��,��ɦi۱�^�����d65�>�\\V���K5�q`���5,\"�l\0lyg��͉iw/��9\n[>d��%\"���@j�$@3�@��.<��p[uRG�1�� #�z/���um�-rLݗ�w�_��\0%\0\0\0\0\0\0\0!1AQaq����������\0\0?���8�m�۬ 9V�J�y��[\0.�\'w9��INqS��S��ǫ؝|M��omoqײj��� �\0D���0+ ��` k�\0R��H���}��m��wN�ie�h�Qg�:��ziqhܡM�5k�X&5׈�Pb��bKG��\0W����\r%�Շ��\\/gId��Ӧ�\0�\0��5/��I�Te�\0gWamx\"{�+���C�o���F�u\n֎QuԬV�3X	���i����s@������Ф�������W\r�#D�ES���\nἳ\"�ءc{�X�q�7�H�	d_�\'<J+k�K��E�\n5����]+r�V��UWԤ��n�Cx�ڮf���3ϛ&���t���nq�����\\^�m1�Xx��a��~c9��ט��nB�X�k^�[.\0�K.�\Z.?!��{��e� �\0bX��:���?��W���C����S6(��KN,���.+�\Z�\\S>S7�����V�e�m~EǩYx����bm���=G���\"����Or�YO��7|���-V�]J��9%���s\Z�����C!zN~Ŏ�&/|�R�yp6�mQ��{�jؕ���.��\\l��D�<QmHҀ~KT�KG�O��S,�\0�g\\W3o9\Z�Q�9T�P��\\\0ӗԤ��� �ְk[�5z&�?���P��\r[�P9|D���OdsN�\\FT/y�\r�����9*�jop�;bǋ��iTX��k+5�~Y�Эe���\0��\0�4S�<��ud�r�{��2�z�3�Í�6���O\"|EJ<��K�+�S��X�Z���p��-~�KsOr��B����_�\0�\\��U�eQ�:^��PT�&*L���%S���gP1�� �T���^���Pp�M�\'Q��,-e%b�]�l�(~�J��a����aQi��b���z�(�7�\ZYa�,m.��\rt�����+�)�Jj�_�Zy�\rR�������\0�5e�@��*������\"�s�WK�ΐ���m�ض-8ր!eF�K�!���\"[+�\0<\n�Q���P�{��^n%�ɥ�F����(Dpb�C�;�˂c�s=lC�=}�ʈQq�\"����M�z��ǈ��\r�ټ\Z��!Q��9P��e�ǝ����ߘ�y��g]�6��	�\Z���x��v56�HE�\\|������w-�P�\r����|��[��EL��J�3����g�J�1鯅���5q+���]6����M�1̲Qv���A=|^�\0�D�0	g�t�p�͖�؊b<�a�C�F����W�7Lg��-=���r��a�����s}ϙ��\"Rj�V�Pw\r(�w˿���R��0�%�s+�5*���m�]1�K{R��P�An��(!�\"��}˰��ǉ��\n_�-W*aj����0�R�5_Br��?���1�����ҬR\n�>{����Mġl��\\���Xy�F�����V�\0fj���E���M������`��f����:0��{J/a`\rג1J���߼\n�R>�F�q~��\n~T9�H��@��!_���RȦ��CJW3\'�b.%B��\'�I�\Z�����X\Z����ʖ���A]�����k@� +���Љ�5��lz�̨[�\n�¾�fuY6h��7i��\0�TeY�s�Y��K)��y������H�Л_��Ǵ ��)H>���b&O_�����^����\\�W��]��C\n��-&��S��	R���ݘ���\n���~�-w��LYTA���~�`溂�����b�pQ؏	8@�,c�y8jlv�(F�*.�ፁ�@��P��6uJ��]T�īK~*\0���9��`F�\Zyӊ�mcJѹ`%���:i�(C�*�?��oX@��y��fx���\0ַA,Ӟ�xk�;r�����[�0��> ����2�[��,+�f��\0����6;�S�S���oN�oW���Y���\"/�AݖPpi^ ������<�ɨ��#�5�k�����\\�)�@���;��M�V�y.A��Z˽��Y_`\rvO��H�禭���;�eKU���b��PQ�N��[C����bSS�L\\�6\r@\Z�>e�x%�9�X�ĵk��TʔwC(w�*��E\0�z�\0��}�2%q���D�K=�G%G5�6�}�ؼ���������mm���.�/̻^o��#d�ߙ|�jj<E|%T)�\0����o�Ɔ�\n���tؖ���}A�[�2�����A\r��\n��&\"���j�\0�Pn�c��&�@%TP�]J�R�*b/�\n+�������Q� K��~X$=66�mM�g����\0\"^߳J�ĮY��=`C��e��]y���!�uoE��.�x�0N�O�X�UF�\r*���r��˟��qŁ�p���,��{�j��`1���=ʻۆ�#�)�\\>H���e�#���D�?a7��Bӿ�Wf�lh�]�85��z��%n	�U�z�\\��8�Di�,�>U�QW� �v\r�>G�h�=�K<��\0a����N�P��=.��sq ��e�l]F�Q�\n�\0b����\Z+����',	'image/jpeg',	0),
(26,	'Backpapier',	'����\0JFIF\0\0H\0H\0\0���Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j\Z\0\0\0\0\0\0\0p\0\0\0\0\0\0\0x(\0\0\0\0\0\0\0\0\0\0\0\0\0\0�i\0\0\0\0\0\0\0�\0\0LHUAWEI\0\0U8650\0\0\0\0H\0\0\0\0\0\0H\0\0\0\0\n�\0\0\0\0\00220�\0\0\0\0\0\0\0��\0\0\0\0\0\0�\0\0\0\0\0�\n\0\0\0\0\0\0&�\0\0\0\0\00100�\0\0\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0\0\0\0��\0\0\0\0\0\0.\0\0\0\02014:12:27 16:51:04\02002:12:08 12:00:00\0\0\0�\0\0\0d\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0�\0\0\0\0\0\0�(\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\r�\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0����\0JFIF\0\0\0\0\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0���N�̟�8����J:pkV�S16`��ޓh�q[2[�(�s�+2h�r�ҡ�\Z\'r,{S���p)\n�I@*ż��n��{�Q�$�\0ڍ�|:�ژ-f�K�J��Z�\n.+\rF*LqK�4�!$1��H�q?�N#�b<R2Իi6�\"��@���\n�\"��F3ަ\"�V���y(^*F�&��q�@pª�k��Z\0.sMeRzP�\r����\\\n\rcE]��*�Rd�_*����:�[F��v20h`�Rcb�/&c��zT�5���S�\0T1�p��[)���~�R�/���Qr�M�\0ӱP�/�uQS)�)�.)�����i)�f��ߥ\06�E��M2{S��Q��FM+L\0�j\"��1X@���0)MHE0�bdDQ�jsP��c����3�p|u�����܀�pFZE�.��9c�M)#����@\'+VΡ\0$�Uɾ�f��e�=|�T�ŚvH-.ܣ�|�cuwo<cim�ڨ3*��}��}�w��p�Z�6*�@8���4����f��?����h-�k\'V=�U7ؗx�rȫU�{\Z<�cP�G�j��\Z���N{�ڭ�\0k�9�����N8SMi���[�IW[\\=��C��ۀ�����a���q��4k�����ִ���.��k�v��:��hN|�?�e�l�r)�\0cl}��R����It4���?\ZckI�\0<O�Y�����1����\0�?j����/>�0!9��1�!X���f]�vQ4�J\n�e%��iV�ˀF�?AV��r;>S���O��:|:�M(B�A�MaK��[8�J�$��Y��:��A:/�������G{*D��I�Rz�l��a�U\"d����c�7W3�$�H��+r����0��2�N0�3�⹋85�X�� uRsʏ�ڶ ���D�&B�zQti��U�%���Fr��\0��ң�m�����F�-�n2q��gK��N�\\vf��\0�Uu]NU\"C#n����%#g��ڋ���&�\rB������ Tt��U�h6�ټ�.0����r)S�0y�9�i�s�J�Yg���V�f%2ې�N	���h�)1���R��[R�����q�mf�P���ma9.Ʊ��\"���.�n�!�?��Hg��z�y r����Z�G(2dv\0c�?��=x���l�\"�{�ξXP���U����\r�{�f����+)3X�D�R�\0t~T�d�S��\\�#���=�.�]�j��̿/v�.� Yq�4.kAgK�J��ޕIFD�.J�b�D�p�Su/��9�T%�.Q�A&W���7�������ُ� BF=+�7&r�r��t�+��I�� n��4��O1%r��qYi�_�ay�\0~[�*��nc���G�B��U��)(ꅟM�iL�0-�	�G�?�\Z}��ww>���a��U[N��D��T�h����}b#�Q��ĺي�XO��WOa��͜r�Uf�U��-�M�>�*�$��$�lT���R�ó}^���Q��(��;{;��t���G�t�%}��6�w����F���q)\'��ߕv0�}̗������o}�~�Q�5!4z��B���WB4[u9H��9t�P�O.q��I��|�G����d����g����@�Tp�V���[�U�!Y6���ޱ�5}S}�c��\"M��Lia.�?|eN8?�5!��\\x��}�\"\0��ڱ�#UQ�+� ���~ƚ�����j����\r�\0p�+D�Ve?�[�4drG����,�����p����ľ���n��h��F���c<��J�2�r�����o΃}9��KV�S��3R\"�[װ��n�L@�jC\nv�rAF�O9�iI����x��eB���{R�Wb���Y�a�i�b*�ӭx;��?�]~�3��\r2���QB�B�����d��1�d�����͈��Z�N�;��h��\0���#+#\'Z���,�KkQx*��5VE�$��H���o5����?��S�bu�{�A� y,��[���l��x��O�����LC�-*j��}@)ؤ�d�4�i)A4�HP�1\n)CSx=�H�d��]اlZS\"�f�h9���L\nS�*e9�e��{�1��0�M3��U���I��4[����G4������D6J�A��Ņ�����åcOG(���+h�H蟠�\';�MAmp\'�N~a��OZ��\0�M1�a�H:Tc�Q\r��C���lv��$�C#ҥ���^�é3I�)1�&����A���P�ӳL�K)1����&h���LOzi$R�\\�I5\r�A��:R�j1��f�@��qFi��<U$Kd�Ӂ����Fl�����m�(����6Ov����3�I�\"��l��\nfqI����6!`� �u-!��`�(�F��Z�9����rz�Ni\0R�(CȦ��֝Ma�RƉddS�Au�3Hc�I��4�њ��q��9��r�8\Z�Sڥ��?9�s��Ұ\\3�4�8��g�E1\\z�\"�xVl�ʚ|m��j��39�{S���<�Y&�O$U�7��a<�5>H�K)�9B��kmA=�T�a%asK�z_-�cM���5D�y��9*Ƒ�cc��z�	4ǐ���g*=�[#ϔ��idzD��~i��Jh�r��G�m���rjV�2/?f�������8\Z�;�c���\Z.�r<Wn�I��\0\Zx�m�D���\0h��9��k]��zF?�!���+�u���ӗ�\n�g�N+��sަI����c�>%2���zSb�\0������u�r�yEc!9튳�T`�O�J��H5I��_Η�Jc���6������Fj�fV�y�}Г���&�B�������G\0��>޵�3\0Af�c�?���ߒ2ަ��5���\np}i�GU�j�f`)D�G&��b鸕�~T}�Q���T�ϭ ?.h�b�F�jSF����x���7��Es���0��U\Z��:3��QU�������85��w\Z�Ԑ��{�����http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\'﻿\' id=\'W5M0MpCehiHzreSzNTczkc9d\'?>\n<x:xmpmeta xmlns:x=\'adobe:ns:meta/\'>\n<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>\n\n <rdf:Description xmlns:exif=\'http://ns.adobe.com/exif/1.0/\'>\n  <exif:Make>HUAWEI</exif:Make>\n  <exif:Model>U8650</exif:Model>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:YCbCrPositioning>Zentriert</exif:YCbCrPositioning>\n  <exif:Compression>JPEG-Kompression</exif:Compression>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:ExifVersion>Exif-Version 2.2</exif:ExifVersion>\n  <exif:DateTimeOriginal>2014:12:27 16:51:04</exif:DateTimeOriginal>\n  <exif:DateTimeDigitized>2002:12:08 12:00:00</exif:DateTimeDigitized>\n  <exif:ComponentsConfiguration>\n   <rdf:Seq>\n    <rdf:li>Y Cb Cr -</rdf:li>\n   </rdf:Seq>\n  </exif:ComponentsConfiguration>\n  <exif:FocalLength>4,3 mm</exif:FocalLength>\n  <exif:FlashPixVersion>FlashPix-Version 1.0</exif:FlashPixVersion>\n  <exif:ColorSpace>sRGB</exif:ColorSpace>\n  <exif:PixelXDimension>2048</exif:PixelXDimension>\n  <exif:PixelYDimension>1536</exif:PixelYDimension>\n  <exif:InteroperabilityIndex>R98</exif:InteroperabilityIndex>\n  <exif:InteroperabilityVersion>0100</exif:InteroperabilityVersion>\n </rdf:Description>\n\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\'r\'?>\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0�o˕_&4Ya�!C�j�R-\r�2h���\0�&�en����OL\ZJ��θ��k,�#�T�i��\Z!�@4�V#\0�*���%��oAUX��$Y@N!�`�����P \0V\0V���ZZ+eD@H1O#��gh�uMp2�S��ۏ��a͡\0�\0��	X�ZU��d5ZU�E�9-B�TjW2/���h�`<ۇ~��4�\0l\r+U5@��9�H$Fk�jv�ר֚��iD�T���&G����hX�\0i�(V�KY���%ZQT���̄%��v��uMV����&����c(�)n	(R�Z�APj}wG=�˥����4O���9:\Z+v&�;\n�8��&�_M==V��ɩK�B��˿?����|�y�)����(ϐt��\Z�\'�j��}ˍ��9���l�k��\ZT=�i�-+���\Z�!/��WG*d듋��c5��S�]�/�����������J>���ii���ތ�Ti����1G&5:!��x�S��toΊ�T[1)eo�R��u�8�.���k�yuЎ��H����Ĺ6&�+�١i�!��q��r���z�M�����\\�c�ڭ��{9�\0���U�,�ӹ4����^|��guev+�o7]��3_?����.\'7FN�^�잊�e%����^�� �\ZYOvw�j����T�O-�\\h�ԣ��{}|�\r1��R�Dj�VH�έJ�rh����\"�l�I��2�J!\\�#�=���>�g*+sM(�E)�y�ܡ�2\n�$U\\�Y�V�[:[.&�İ\n��-J��6���^�Z�!�R*�\"�W�q�\r�)��3,*��X�H����\r�L&�����GHz�Ayl��̥S�҂[~O�A��	��m,��L�K�Q:�V���J���Ch�s��K��5��r굅T4%��$�TUbj&���\rJR崒ԩ�Q��Z�T�i(�8��#h�*Yv�S��a9VmiAJA��C\\�&����*�ҎB�+�I@SV�!UV�����❥j1D���-A\n�w�^w���#�+�b!��(VĵT��2X��.b��B32Z��Hjˎ���o(��򜽄 ݅5IUQ}LN����jR��\\�ge�G&��n�=���ǜ_�y}@\02�-i\Z���.�֚9���U|��MN}\'~o`�Jۭ\n�m\Z`���W�q�nhjM���3fY�����28�y�#V�l��e� �gs���\0��\0(\0\0\0\0\0\0\0\0 !1A\"0B��\0\0R����e���� .l������\nȬU������cg�q�l����V@ou�7%O&m��cueo�Dl�j�7�V^�������[kmm���\n�\r������ӐVO�&���*YP��c��tdv+�h�ĲL����ỏJ	D���V_%p�	κ��`�k�Q���M{1q6M��\\�d�p{d@�\r����E�β������Ie�<.�T���/j�%�(L殪B��WU\"5R.w���������frȮW.b�;��&1�\0R�԰����\rv\'��A��$A3����R9��]\\���Ȭ�|��2��L��f�p�p�;WN�\Z`�dp�T�[<t�jx6X\\����JW,��]\\�j8*y�ꢍq��M4c�SMv����%n�r沬��َ�!unb�WK.+�.0�pX]��$�.\Z�W�l�M��50�U(4�MX�(�2Ò�k��1jTurpQ�9���58�tÞ�O�Ii�����p�!�q��4D$s�\\���5�5]S�YI�����쫺�n�u�U�Z�k���z���z[���P�!�S#�B��i0�S��\\˵A�ޝ�Y�ȹK5Ե\n���,��4�#I�c\n��jYe�N��d�l0TL�鳡I \"�ˡ%v֪z.I��A���#��H��N�J�i��@p�N*c�25ŵ�34a��5�F��Y#�.�H$,�!�Ɲ�s	c\0p��r����TF�:��!�JX�Z�eձK��C�%+�8��8!�=;K�1�> �L��4!O���J�ѱt�(@\Zx��\\!q!��d-�7��\Z��.�$(�]<k�4i�]<k�?�}�U���*��W��9AU��\'�^��ȫ��[gmut�Ǉ��D��__C�����X��}����l\n��6m�v�Y!���u�d�gy�LLR�ZW��t��%�i����}+{�(|�\0�VW��@�I}]_����Cb������ͼ.���u��Q?����Y5������O>ǉ<�u}�g��k�KE�A_j��\\,�l��,��,��.Fߑ����������\"�~f�v�v!S\Z���H+�B��ڕ2�˻�.�R��B�+��.�P���Yz�u�k$]t��.M��ΐ*�{\\�+e`-����f��\\�Y\"��:E˵�F��A�%�Yu���������0�L�D���#˔G����o���cf���\0)\0\0\0\0\0\0\0\0 !01Qa\"A@2Bq��\0?�.�~��E�e���֨_�\\5��t_��^�Uh�Ĵk�Z>�WI�(����E�%�V�b�LLQ������(��CT-(��z����7F�ض>�ǳ�������{�������\0\'�G�St��2_c�Dkb��Gg>h��ڭ�o��j�F�&��&�(�>E��2^�g�إo��ϐ̙�\nb����z)3&ddmb����\n���r%�Lٽ�bS[O�8>�f_F*$�3-}�٘3��J	�Bv�D���p֝�,q9r\Z)��ѢR��_�q&�M�<����u��F5���DJ%D��b��F�{:�>�4֒JK䇲����n�JNb�M���;E�23b�Z2^����tf)��m�3x-��M�n���.>+6�u�%��y	J/+�F�s��^���/�ˇ�M��RO�����\\E(�.&Q�d��z223f��oY���������-�3)�͙�\'�ə~�]�.���7���euoK�|�\"�W����в\\UԽo��.et�t�u���KG��o�z^��3�+*F21���JF%QEi�J֟G��\\T>���e�\\�=iEh\\�h]���\0)\0\0\0\0\0\0\0\0 !1A0Q@a\"2Rq��\0?cRpF�\'L��tF��>�k�zg�N���r��Z�ח��\\��Z��I&&b&�H�$L�c3hf3�oy116b1��*�,O؝ۓ:Y����v�y�|�g��A�\n-UU@� �JvLJ��U����e\n�Ʌ#3xHU>��khV�����k�9(��s\n���Y�e\'�*J�\'鍮Y��d̫�*��&b�J����)�f91#2�c��A0bCцG���W�S���b�ʛ�N��N܎�����F�Ȇaj�({肚��LڗFe^���3+�f�论�\\�\0F�5w%j;\"\\#��|:��V�evN�0QV���e6˳6͉*��(��Y�{0��#���N*L)�g�����fف�P��&7G˩�|��\0��U��;G,����)VipUU-a�m%\n�z1OO$R@�\\�v������o��l��K�`}1����{0r;\Zb�L���dY�TP��H�A�\"�B\"���c�L��\'\'����w$2@�\'�YA��)0��^������\"���B���\"��ѩhwa��dE��j[�|��wގw�h[�?;�D�iO�Ǔ�lqWA7����ؒI$�|����ۊ�dN� ����-�\\���t6�\'x\"���D=�:��\08\0	\0\0\0\0\0\0!12\"Q 03Aaq��@BPRb�#4r��`����\0\0?T��:7SΧEn���[g��2~A\n9�zhn����I�U�_��Ԥ����k+Y�ZϚ�|֢�������J�@��c������[�X��j��7�ꞀN���m�VVD�_\r��������SUڋ�`,����[�����V4�����{�?��.��c��r|YTg��8��a�i��r��\'0�FP2�	X,霭�S��$�Xŭ�d�w���d2�V��#��e{kU��s�ܜܡ���YA�U���W��M���s\Z���9ǶQ;���̏�x#�5�v�On�9��E%�$��Jx�e��\Zi)ŘP\\#4/i�҂h�fb,WUa��é�RZDmt?N��E�̓N�\"<0��ܦ#lUt�WM�9Ս��Q�4�o���WX|�\\G�u��u��n�y��y�B�{��N�5�RJ����ք\\9\\��*�x=*_����?�8��o�0�򖳸�G����Ut�,G7������Q,�侟�:SCq���ş��&�sA�Z\r� ,���O��9�����m�\0���:�Z���Z�i<U\n��~�/(���n���R7;��g�\r{�5na5���iSL�Q��&8�֏ �b�HC�E�\n_�|Z(qv)<R����2�\Z�-KR��T%T�\r��ʻ�e|~��/QV>k�VZV���w���=��8|�=��J=�7/�]]]]]]jPZ��3�Ur���Y]a]a]a]a]a_�\\��U9V_�9F�쫊�Z�7����U�%k>kQp�.bW�\n�F�h��N�}-���vLW�R��z�\\��\0�*(����_��\0\'\0\0\0\0\0\0\0\0\0!1AQaq�������� ��\0\0?!�	(2 J���y�lF.�M#4��G���$1НF>����,]͉}�H!��3��7J��FJ�b�Hb;�ٟ?<H4A5�A�C�E��dH|��!*>�A��z��<�fw�k����Ƅ����!a� �7�x%��}�t���\"Y?J?qt�]\rǕվ��1�L\'�[K�F�|��^��;��=U�q�l��~��5C�G�\Z�AQ��L9�B��iZmhd�K6��Ik\\�J3��re�`�G�������3_1�Z�9��ӛ���q���M�^�Q]�����:�&�=F�5	��������\'�}��q����1m�_��{�t/���Q�<�>\"�w���i��Z�m\n��Zv\r>@���&Q���o�%��l�/�cI6��b�e��&��&&[l_O8Ӈ������sB��,�z�:S�?�7�e�ۋ��JZ?�2ƼH�Uj�\\��OOTj2p����b�L�E��\"�v��2{%����Fς�^^F�lk�i^�49D�w�0,*Ø�٪4�?�z|�K�*8�f���<��:�ؠ�A	\'\\h!�����Hw����n}s�u/��la6���ҿ�<���N_cUi��ЀP͚��M��2���<N�(����=��)��p&��VIpX���CХUB|}�v������>Kl�1��g�D�xc�F���\"�&~[�$�D�N@M��9���f�w	ֿT���M��Ag۔M�0\'I&\'��03cKg��أ>G��L�+eKn�r��֢C��V��\0W��ޯ����ָ��5�0~T���S=qĭ݄9{�x���w2�<e�_ȱN��YC+�?��ժ̈́�����D���C Ÿ�h�5VL��`V7�Զ��b9�M|�4K5K4Wkf��bѮ�=���L����?	�Z��A/h�Ocd���4-�^O�_������9�ԾU�<��v�Q�=�|ț�{�%�X\r��|�=�N�������]�q����f�����-�h��쨑.��n�͓cƸ`��oׇ�(�ېFsi��z�K���&L�)�t�Ů %����o_�bXo����4�}C�\0h�>�&^��0]	�TP�D���I�B��`A�K$!*�ZO�l�:�B\"$�mj��[�]�of�\'��5D���<����T|�jV�W���4���� �5�4f��5է�Љ:&L50�0+�t>�At��\'F�R�ޔ<����}(�KY`QkcTQ�1�д\"��g���h��˝��.�Q���kP��9k��\Z\'DrJ}F�&&\'6\'׈(����EGw�S\"�\Z!�l[��F@E/D����.�\0���r��\Z��m���<�Ȍ:�1jW]�(�6:Q�m2�D�.�F8��Ti�F��4U�mM��}�8m��̏!�1�A��s�O���\0p?��t��a-/K�_l�đ<�6��y\"+��?�_x�?�/��~A\Z�>ͣk�}�;{���I{���8�S�G�GG�G��/*��#��&\"�(��2�>�>Wϰ�m�\'���k�$B����g��=7=��0MԬ�0��LqJ�zG�2¿����F����S�CP����EE����{t�F`����\0\0\0\0\0\0H��&�\0���p�Lୈ�5`��n�nm������I�r�m��p��.�\r��OIA���$���a��\r�:]�%�VdI���~��*c� �B��C	��D�&��(\0jݕ��L�;�1��I%��E+A�\nϷl=�௅ǎ�债�ƫ�qE�����_T�/��k���)�[Yp�Q��Vl|c��Q�Z��J��d����b���}2k�Z��>}7�����ٙ���-�2m�%��S�Y��Vx�Y?x�7k�QJ`H��6�瘗�!��\ni��b��[�u\'5et��P*���\0\'\0\0\0\0\0\0\0\0!1AQa q���ѱ���0��\0?0��p���9��2l�1���lm�cqӛ=��Fчm�_[����-��x��h�ӷN�Fv� ۛ2����8�\'�=��6�H���6�N�����,����\'�X���ν��c�V�8����܆B��5��=���y?��<�Ʋ�nұ1d�W\'��oP�� ��4�rK,�I�,���I��nF,��K=�>�Hy�e�=�1���e��r�g�Ų���� ��Ia�\r�[�;Y�|���8�=H{X�4�/d9\'-�狙g�,;�\\�`{0,�a�����?݇T~W�Z*vQ߱��?�������ŒƏKv<�W�gLI������K�ON��c	V!��:X��|˒�����7��3�� �\r�蕢�j�e�?r�0d��*��=�|o2�@�c��a��\0�ҟ�v��I\Z}�VE��d����~#��3��B���6;*��=·8��p����݁$�\0�r�\0rÿ� ���a�wog���(��Ee���M>Ɂ��ps�������f��J\'���\0S^O�)���<�i�/�7���a{�\0�ܞ����\Z��Uo�.B`y�on�XNKk߿�&qۿ�i�Z����g3���_�������8u�ev#��yr�����ssy[>��,�q����x�`����(ǫ��оq�����\0sNe��}��}$<ʝ��8������}��tc�[u�F��}�6��%�Lٞy�l��rߒ·$G=��}���[x��vR_S/-��ĳ�8�o=����2:C�e�	gM�Ym��	}J<����gY|2�-G��ۜClt#�s�0��9jݾ��_2��y������C��<6���_�|:q��=��Ǆ>#���{[�^8�m����_�q̺[�}�������\r�q�|[�Kl��m�f\\�a�Ù����c�k�c��;0����bm�p�|t�o�3�|��|y�[���_;���g\r����[m�[c9�e�9�D�m�g[e��<�ێ�{[�/~e	�퇴�������v�x�mK�w0�z\\�$�ظ�r��\'������\"��lٳ�^�g�5���Bc��C�y��}�	Ù��\'�<I��o��6����Ɍ�/2��Ώ���X�>c���6�d��M�Ng&��`.c��Cq\'7��\0&\0\0\0\0\0\0!1AQaq����� �����\0?��#��-��]���=y�4{{m�v�X��a�-ms�����w/�q�{��v?�ܽ����>��;x�{��+����������������̃c���ewv���/������rP�5���s��y�\0��~�dg�&�=o���/<���`6˞E�{,�㤃�~��w��k\r��������O�� 3���C�}Ny$�ݓ|v�[�9��������69n�{x����$�3#�^�9��e��Nt�S����%�Ͷ���g����č�vS����d�N����A���D��e^J�a?;(��m�i,������z����Ĵ��Gg�Z�[�l\r.�(v��v�9vb��nsOgn瓆����Y&7=F��n1��6u���	�pǍ���rG����ا[H���ω�y<��VEh����}�/~,�y����� \Z���sw$�@�p�w-���u�<c�ܩ�#�o���, ��-!�kxiǗ�KKO���V�R>���\0*��$��o�\0e��� v\ZC����9�c�`�����Yt@g]�NKh�n�I��;��s(`�\0���K��D,/`�X<܇ց��\0�`���M3�ƾ�m��gI�\0��^�\r�Nig�щ����nco��8|%���d|���+dy�ז����J�\0g=��pc�����8w��9��8��Ϭ2\\�ۆ?����*�,�� g�?rX�\0�l2a�~�����9�y�����7 ��8�7v\\|��+�//�X?��3d�����.�����\0P���\0k�\"\0�E��������%�#,�G���B��NM�R|I��K̺{��v����nyo5�1���~�~�_����\Z���k/p��w��d�d�B|\\�;�|��3B�c�:b�m9�0�?�9f{_2A�9��3����,�$��>Z�?�2O���y`��u�k�C����D?q{|v��ݭ��;�I�������K>�<��a����c�l�� n?���ӳ�G�{�[�s\'�?Rio{w�)u�����zZ�1�����\Z1���#�G���.>!�,��1��ì����\'�綇m���`~��a\ryz,c�E�`�8�dv<��yq��i�b���cc�9�n����3�}�\r�{j��4�9�����V��ͱ��B�w�<��}�Cm>m��~�A����a��|�=�����,���a��Z�B������-���-�a\',�.ٍ���FH�e���ou\'t$5��0����$w����1�a>g�e��߾_&�|��-H�n�~�m~���ոO�A %�c$?o��d�7���X	}�Y��G�	���t�-{�&Z��پ~l�< �� �z���h��\0��B�:Zt�p߈P�G`��r[s�\nm��\0&\0\0\0\0\0\0!1AQaq�����������\0\0?��Pr~b���[�̭q�0M����W�\'\n�I��}���1W��m�#�Y�D�{�*\Z�WZܦ�V��B��|֘�NS���@��q\0�<�3�Լ�~c��QC=���J�nŴ�J�X�R��U���4^��i�����4�G�����C\0���4��QBf-P�,���N�X���i7S\'0���\\��R��vĭSԲ�r��`�\'�ZݶG���S\\A\"��4\\���)\n������7�`vAY�3∈�!0�ޑ�� L\\��t1naƠ����7�w��\'1M���G�ȫK\"�u��hi�od�p�L�q�R�Dv	�S+�(0cP\"��\r�(�� 1/M@�@7�(��WX�K�jsF��2�db�b^�F�S�\n$:*�����WVjZ�_IYy�Wo/P��|��8�9@(hCpe��1�,8`���2�6Mjf&;�<npM�\0�/<q4�`[�9��0���똻n\\�\Z�#�����\nx�r��D�˰P�F��H;L��lD���� J�\\�{2���J���l�ڔ�%�1W���k�Kuh2��PG#�\n�c��\\V7Ŀ��/%����R�p�rhwĨ4j��ή�/��a����1a��/O2�:K,�\0h��I���t��?j�����\\X�u�6-�V��|�\\L>�L��j\\pLR�2���\Z��]�[0�37�ex��-ʦ��瘾G����������Wy�Oy�\0av-wX�i�Q*������.�#\Zy�����������~!�@�)�n�a��s-r2��EK��j�\n�の2�5��^?��3�P��\'n�*x?0A�7���Ķ-R�-���1\r�kZ��Z\r%�S��/�`�(�!4�h����R�����4KZ}�@��f7y��-w�RԆ�w*�I�I�/�!�nf<(�o��*� UZ�Ȱ��; =o�,2e�FC�\\��ǰ\0F\n�����^\Z*u���f�X�J5D���P���Y���C���Ðs]nq�h�P��+�a��א;����=�0�}�h�in�M�(\n���:�Il\Z�\"f����<Ҭ�	]b®cH�L�Cu����ua��n�r��B\"�*p�Kq@k]\r�����gE\'6?�����Nøo�������EDfR���li\"�J-88�1-�g���l^�@�����f���AD�����e����\\7���#��M����2H�<C�)��`�\r�S��\0�BȳSV�MA�z���>3+`ma\"04�#�̸�4\0\Z���B7JH(�*\"_����8\"{%���.�_��ne�`�=;�b`�Z���U�鶅t�eԿ��̹J����!�Zϸ�Y��<�C3Ģ������������r��m���R�ņ��1uk�&QF�%�γP{e�Y�t&w4ꅁg��HQd���\rr�N*d�4��+~F����4�*�Yxw4�i����j]�Y,�@.6�rk�p��t��+ڍi*X&c�ʨ_G�\n�R���L4G�	�@a8`(�#�����}�\0HBm-�,x\0�������+���+o~1�̅��U^*�t٨1�z���&K�W��� n&�Y�ԧ���@��Q59l���*m9���I{Q�#~��\'\0���x��WC���b�*�g|�nKYH�xg8��}�����fkW���~�.t:��3h\r\"\ZD�dn\"�kl�)���A�5�7B�RXl\ZsN��Q\r$����bP�IlE��\nZ(R�����lQ����H���\0�%}�X��������ř�Q��$�����S�x�\\����+\\����n\r��~�\r�\'��\0�/D�os#ש�V�G�J�TA�]�5d����g2��5qlU��t�*4�P���+�e�1\0�;��1���	��1�mH#J�Q��Q�\\�;���\0ɳ4�@�|�-��\0���^J!-F�U\0o��mx�Gr���g<S��\r~�5�Jc�HNy��F��v�O�V��^�ar��j\0ĸ[5\0d�&D���\0-�Q�~�B>\"߳�i� �V>`�~�WK��\"��\n5�2���!�߈��g(p�r�0��E]�Qj99!70_���\n2Cv���T������e�r���_2�����2�*5�\\mNQ�/���7��Լ�����j��Fc\02�N���$��P��뙀ᄌ���ݧ<Ke�U��p�e{���X��k��7x���h(������{gI��U%��719�JFd**�$�m��,�Ek>�SP��D�J�LR�&�qGf]�1�V_����R���_�3��eU8Ԣ-�Y?��&\ZőF��(�j���Fb^`Sx��o�Xw�e/����y��k �aڑ�L�ܮ�0�EJ�aY<�W�� ����N�pf��-/�|�ۺ��������-���!\\>��n\n��� Щ{%tJ���-�0RQ^!�JE~�;�L�̮\'�.�D,*�����6B��11��\0˞?1�����E\"j��k�V��j-P�\ZE<�\00U�QG� 9c��x���Lø�w�p�0.[`�-qsO�o�_�`q37W�ٯܬ��1$������G�8z�����(#�	�_)E�G�4�SQ\n�>s�k�gx�����Z@�	\\���\n��g�&�~�\0�f��ZWڍq_���\n���)ș�\n�y���\r��W�ߺ#�W���e��4A�����2~0�B�b���Y�E�_���\'�@�v�=��d��6+��A�b�=N�>ơr%�>��s.�h������7���E)��L*��&�,U���E����Π�0�p�����e]j5ܨg�j�)MJ׃,����3(\\���U�e�꿚�亮��\'�sb�(�m�\0@\0���w�U��#]��㮡��ry����+y�2�ٙ������',	'image/jpeg',	0),
(31,	'Filly 1',	'����\0JFIF\0\0\0\0\0\0��\0�\0	\Z\Z( %$1!&)+...383-7(-.+\n\n\n\r,$ &,,.7,,,7,/,-,,-,,,/,,,,,,27,4,,,,,,,,,,,,,,,,,,,,,��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\0\0!1A\"Qa2q�#BRb���r��3��4CS�����$Tc�����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0.\0\0\0\0\0\0\0!1A\"aq��Q����2R���\0\0\0?\0�4�()J^wI4�0D@Y��\0�^������2�����F2���\\�}�R�#����B��:�j��^ d�h�߶��oP�h�=s&���*�բԒh5��+�j\'�P�[I*��cLJ~ԎtF�\rDg�4o$��\\jY����#�\0�w�΢�����,�6\'�z��Eqɔ0���T�V`����=iJV�)JJR�R���()JJR�R���b�1ڹ�d���Q���\"���Y���_x��;i�lR\'a�H���]�#�a�֪�̪C�.O�Nޢ��j�m���t��:��v�w����H\\��ěsks��?���t�\\��Hm�ỊP����4����{����>��z�,�4�H!x�\nu���> <FO:�G|g��FwVר��W���h���;���R?N������F�0�-�Ye}:���B���2Ko�����v��s�<�\Z6E�yv�	U�B��2sֲ�^�	S�|e���)ˣǅ����Ƒ��v�\0��vJ|ۄ�P3B�9#�8\\�SKcɅi?��NY��\0~�U\'�]�lϡ��fE�j���B�c�\0X���Ǆ�q\\�,��u��ojWa�빠5�,�(so��]���$8+)�T��Ԕ�b��<�soscS�b16��uv��w�νӚ�<�^�_1�@#���\nR���\0�)@)JP\nR���\0�7�V�	ga�3��:Ft�����׼�d\0�)\"����j9���/}|�,�5K4�d��BO�5�\0�$�1��q����Y�N�~-��5#]��ivf�pMm�V �I�A�D]e!�<Ew��^�a��\n��BS��<$����H\Z�U�*�\Zx�ٽ�������1X��c��[{��ݎ���@�\Z�~U+�8�2�w��zAx���s����]FGZ���Q�p\ZN�	s��c/9r�MCp����ciB�˰Ʀ�\rϕq�4ӽ�s�m�t��,����ku2�d�ˡI��d�R`c$ힵQN7�72���]\n�wz�wtBp�X��i���7����V���e\np@,G_*��վy^���*�&��\0���7T;���j%D�����b����jp^Ե�Ŵ���@���>z2� �Ң�+2�^�:c�ec3x���2���+j�H.�i..�\"ӂ���|�*��<� �@R�b�k�ȱ�\r\"*�Q�j�u.H��t�\\��n�-�V����hb䲾��/�0\n���ϋ�X�/1�lz��p�(�D8ם��\0�{�q��I�s �A�T�a3ֲ��Q�^|���d�����Hc\'E���c8��^T�5�� y��[ή�����*��FA��s�/��3�1��>b��r�ڜ��4����V_5\0��ʮ��괮���JR��)@)JP\nR���\0�)@*��z�X�--�A���EӜ����Ms�q�7�*�H���Y�B��F�O�zT3Z+��Q5.{I�b[���x�\0ʡ��ūC\"��Wa��\'=�1˕\"����\\p��R���\0���oY�>�K4�j�V�һ��Ƽ���Բ�_�=+m��;yo俒3�]���K|�;�l��Wb�\0\0=�u��n6����\n���Zl�	-�*=QO�\r|]�(�q�z������W�\0ϫn��>l�Z��8�?��{Wpo�Qi���C�d,�.r��n< m��K�\\�N�L�%���BT)s�����J���q[�����R��w�t9�����kTP�b9,z���A5o�Q��1��U��M�s�d���K�=���W@���0NO�&��|xB��E\Z�\0�G2y\0*��v}%��`�*�\0�U�0\0oʤ8�w	t�}�v�����(����W�==�\0�B*+lV��Q\\s6iq��)���	+��;V8RSs{r9F��O6 g|�nZmR���3�g8\0�B��Z���Q���Q13�g}���\'o����yl,Tu͟���\Z�����cL��֬~u2��ٱ��3���8r��$H��8�~\'f��T4� �,Ge9Փ�(�ND����#SV�`8w�]4�6�\n:����z��d�z4�U��������*ǀ+S�q��yfu�4fc�:~d���ζ�W�<b\'3i���z��� ��(\n�?HP\ZḊ& 	�T\'�\ZI��9��1�pS��mb�Y���4�$o��ߧ��*��\r~�i�d���k\'���ud��3*���&)JT��R���\Z�G\n	$\0I;\02O�r>��15���\Z6cr\0���9�ZL��jG�[�<�Cã%VT/1�9�4��S��j3�v�)\'h�=�ʑ[�n1�)�UnG,ā�Z��[H����Ү�:�F�GΪ93*�QW��+�;��U���泶-\r4���Z�\'Q�\nb:℥��}��M�$��6	�dV���2���\'���@�\'�:��Ƹ��1�%v���,�v���C�WN���X������a�RL�����G��\n/�?@�p��\'��\"�69���g�G\0�	�V$�}�� ��\0��ڢ~�/8������Ǫ%_���\0\n=I5~�D���b\0$���\'����x]��D�w�>��|�\ZZ1��R�B���W�o_\Z�l���A�wV\r�2�4�ڪ�;�O�3�7c�J�|���\r�����C4��D�jr\n��9�c�%ɪ5�r�\\qc]//��9gX�yd!Q\0��<΀r@\'��9#��}���YDQX�;j��\0��a�\0\0\0��rkg��;{PE�1�=\n=wngs֤jc�n�z��	x3J�j��{Ru�{$��������`>��̊���	�+�#�P���Tn�q�*��Aι���2e�Nc���ۓ3.~��^�ffۂ��w)�V���GE\0l�>������)(0�2O*���m��	u�=�&�P��d�����ʕ ��:��^��\\��G�$nU	\'���z�5�,��@�+޻I<�#r|�Ѥc�����X�(n-�:-�!2s��VP��\"�9�7��Ҕ�����\0�\Z�`�7���|J�`�9;�(Hs�\r$��m���]��\ZX� ���yw�4�5VV��w�>�-�,�hmo��}�ܼ�H��bB�����U���Bެ�3C\"���Q�I�(B	�Ïs#��4�G%3��H��#�<���ib���|��m-��3�\\/�	cY�㨼�.��6�A��$;�{zWq��\0�U��}\Z�_N�\"�m��Kڝ�c��|�\0��\\��Ed�r�^#*F��&F�$e$+��\\�G��h�k�˻]�Y-�m���f��B�FK>���>B���K��Gesk�����ר����B��y�{]v�)�0�8��b!��K��!@�]��9�>�7�7\\B�]N�˪D/$���D �H�ϸP2@ۗ�\r��;�X��{��;��-��Fz����ؓUn��{]ܑ��ZP�R�B��2�<�|��Tb�Gl$6�w_rU����UIW�(s��ҡ�Ѩ��D��v�c�52u�D��g�*O���h���I�)�{����O5b@#��\0g�:�c����w�!�y������<��\n��Oj��L�D2*�ʣPRq����	*CP�OR��-�c�X\Z��\0�XZSY����}�?t�v��FH�*���$�,L�V�ݜH�\0z4o�7\Z��#�v���;Yg(�\Z��$���|�����8�l�\'8�r[�Eo$����!�z	�߄>�G�QUW�æ��B\0<*�3�!Q�|^�2�#E��=��$�\0�Lo�GoJ�����!w�͉ݘ�����Uyg$ܬ|pkX�Ye\Z��^y?�ު|UZ�j�!L�ɏx�� ��[���s��\nyu5H���B�gL��{��\0(�aY���9B/����/Z�@E\02�A��;&@;��>����l奻o�L`�\0��\0)Z�ۡgKkt)_c`�6����<�C$�Z��p,A���#�\Z��f�v\0�\0he���T�76��zR���R��k4�9n�svҳ�w\r�/v���v��`<��g;UC�D�[�<��펷F�H�y�\n���ʮ�I|1��+��ԡ;/{��$Y$L�:|�O�]Au\r��u���	T��T�������d^�ѵ�\"��괌E	�O���\0�!��\00����S.���h���#V�q������R�tG�JW�w\nڂ���������\'�+4�<�p�� \02I�\0ܒk�v��-̭rWM�B�nn���W�������<��ӏ��𼈮?���^G��E�ǆ�OBcӤ�l��C;�5ŷ7����i����Uq�B}�)��O�?:���^[`�,,������6:�f��g�ޣr�\0�3h(�DFV-yw`:�]8�;s�~-�㸵R�I�w$��;��~Cʳo�v�G5Ǘ����GÔ(-5ć��;s�ԓ�Cz��׮&�����/�c���?���=���&q���ꏲ���WY�Xc\'\n9U�|�ʍY�Hַ���9�����\n�����n�G�<�kÉqĻ���\0�Vo`������F�\'6l��0v���\Z��xF6[���8����*9���*�����1R�\'����2�53a�`9\0����95��xE�2:����>��a���zr��[�D(]�W�����X�a�Vъ�gw�4U]c�s�[/�LC6�.�+�I;��ym�o���U���e]H#��EO�N���D�2۱�C��{�c�V�c[���=Զ�t�(s�R����Ĭc���C�\"�e=A��8$��ub�Zrvu�/�����p�r}+�\rP;m�I�=Ş��;F0J�i�	8$�Ud8\0�u�gbmp;-�}�(��$\\,��]vua��5|Gdr5�.8ť҆�Ca�1��f��N\n�S�s��֙FR{��Ch��X�:�ĎG�W$�2�ѭᝢ��8�4�\Zl�~f�=���/�	�G4i���D� �3�k�vNĞ%�2\\F�GYe,�x\n�Rj$���ˮ�7����	\Z��(�Ǧ�8�<��[\'S�Vls�9��k��U�d����5�L��\"P���O�^�p6a���O��\0�I�o8������tsy����U/oYoȏ\r0�$ �^�y+�TS��l���V�����H�����䌑��F4�w���ެk-ی4ۍ�X�b5���>���I3km�>�>[�ʬ�Id$��f8�#�/?�*���H��[bY�vc��|�E�U��ڝFW�O��G�O��I5o��D:�}����H�Ä�y�͑�n$rCaZ�BY��ҽ��jI���ۙ�M�j\"F�Ҡo�O��^\"�x�o�OPr�,yV�h.YQQA|�~��2�g�!���ҡf�8�cв�_�[|��l�$�^UY�.�*�`���22FIn���EQm��$8GW]0Q�rxJ���<�c���1I�ʚ���|kY���f�����A��,т		��:b���[u\0)VPw|�����|�e��]u��m���.��+Y����A��c`�Ƚ瞥U\\�gҾC�x��\'|t~ub��r��!˯�.?5\\�\05m��R�����H��U?�����\"s��v���?l�<K �\'�R��AJR�V��Xb�VΘ�����)c��[U�(q7i�o�vL�!>e����U�C�^��<��N���D��������~<��g־%�mn��VIc�3>���?�|��r8/kh.o�w��L����k�\\j���,�r���}�p\Z�gxf��`*����w�v�܇��	�\n��JK9�1%��,���n�]�7$�V�`\"_�y��PXDm�g�9}H�<0!��\Z�I,@�s;��U�q�ȸ�!\'��L2i��dm�Nޜ�X�٦�%A���>���L@��D��� ��z�������$���#l+F�G�Yf9��!�*k�A��\ZbX��m��q��������}�1�\"F[��=I�P7\'�W�ws1�@~ԧ��n~ekS�K#��-�����1o��3��W*,8�3��w���X��8�D��G�Kq����ꩦ5?��59g�y\n5I�|H��L��s��$sB�Ѐ�Q�ƒ2gI+ϐ���~�6Dň�!%��+�H�l�o�l}Q#ߍp8b�7/��g����⪥ZW�}�I���.nZ2��D\r��۞�;�I�L`�rʂ����>#��N�ˇ�]���wj2�G��R��A鸢y+	���>�x��U\0�7��r����$�Wνn�d�������T\r��,rTgf]D���kÂܛ��(�����<�=�Q1w���>�\0U焌ʽy��1>�A_��r��P��^��6f�uUU�dm�;g�[��!-�U\0\0�\0ymSl�DKr$��W�Qx�@_t��W��U��b�ߢ�H���J�<D���z��`�Vq�<����#�9U �!4�<��I�j\'��K��)J�R���I�?`��n�;����Ư��\0:�#C\0����f,��Uw�5��\Z�@���!]N��E5�CL����	3�Lߕ\n�D�f�u1s�y|j�P]��ie뚝�aJR��������gBY2ՙ���A��ڴ,�cXT��o�o�l��҄a\Z#����[��t%O�R�@\\�zW���k�u{�3;2!�C#/2�gJ��2\\�Mt����RƒG�iu6ۑ�n��um,;u�63�ǉ\'\0��Ãq��Ͽq��V#��bDm�&�2#b(IA��	V+Lr������I��RH�PH�N*�w�/b�����d�K�ۼe�º�)�<��k���8�C�&mry�cl�(G�P*��Ng�B64�`�}.�<�7��S=�*�F-�_&xO�4C�E����Ն��c9��y\n��[�3Lc�J��ʰ9é�$r# ��g8��Q���??�U�Ѽ�)(G�?���ltQP6�{U��|��_H�\Z�����zV���	���I�p���\\�ZK������#A�0O�Tv�u:4�y|��\nT��)@)JP\nR���m���H�$��X�~M���E��*��^�f����0G]Б��q�Q�����LR��j��#�&�F�51>_�OAָU���~�H����:j\Z���b5i+\"���@5�{2�~��L��������.�qz{���^	$��iA�_��z����\0���(�皖�\nɠ5���4zf�*�� �O�}�#C���`~U��vR1�=h\r[��<RԐ�;���)���Uҹ�e�[i��H���!�.�����k��^���Ϩ�6������kK��v���*�ѕ*�G�U$�sc���`����,n1�\0��{�\0[�N�J�vÃ��&4/orŢU�\0W)���F�������qp���K��,y�B��>�X�Uů���:��A~�_�S�O�K~U��[�E���[�8\"�.44�%��\0/�\0��\Z�>H	?-�WO�r��;��*�Np���f:Tm�z�\n����9�T�,�P	��H�R~��+ X�n�1Fw*[�cy>���=N�\n��3_�WI(�Ҕ�8)JJR�R�����ohx���yq��4�5��,q��9��@W{M�b�7q�Pb�fyA �ۭ������6��X��t�Y�\\?��U��$�����]�>^@Ҥ(\nď�I�_U��1�����$�6�I\'v..W��� ?y�W��3���[[������ƶf���e6녑0���n0p	4����-t������dw\0_��:��z�W�R1�V����J�^�1w�r#��ˡt#ua�!��1P��\0�X\rgE�k�{�q�7*�O�v)b0FEs��Ο�NW�����ٮ:�\n5��?Uldc�I#����S��j\0����ێЭ�:\0�4�Q���r�eW9\'�9��<\"�۾?�S�Z��\rj�6Bk8.7r0A��}�E����i�%M?=E��+k�\\/Lq��� c8���ޑ�\'�|���ۥ�a�eJ..�\Z<�#g��r3���6��Qvv�{:�\Z�Vq�R4,�ܵ0�����J��|%�I��wQ#��B�U��s���Wl��|�S�*[�ZyAvȹ:�%X��;�43��6IW��G[E\0r\n��;��D!��2��C�>F��Ǆ)JP\nR���\0�)@*�zM��!�ݚ���2I�a_�P�懥X��*�b�$���$�c�ꤙ���V��lp��2q��F���,\"���4j��K�x�\"���\0*��\0*�\\Ϸsf��������6ֺ8S�2c��]�S~lMI�����q�R�c�N���iH!�%P0O�rk�]��6�sdԘL|$��6�՗�w�ȗ�ia���2D��Xy�>F�J�55	�d���A�_��@�>y`#\\�)�,c�gp���0�\"9��]��\n����䭵�17{��������E\ZhY����o�<�8��u�A��Z�JV�)��/q!������:O�Z��ͭ�Q�fF�[�n+F緖[���9 A#�9cNj0gL�\\��!l�\ni�95%}Ɗ<n[�8��!�U�q�5C��Ȥi]*0jB����q��c�0][c�T �RH�2����y���yG�\rD/[���j�v)q�h�1H�����ve>_:�K>�\n���F*�$�q�Ϟj\Zϴ�]c?x6coP��;�^u��2�I��d���H�\0���`��GF�1��2��SJ��%���ׁ�[��|��7`�34��S���0��9��*z�|�9����(PR���()J����6,���0�l䃒�|QXo�Q}��g���)^~�U��=�^#n#��ȍ�D���wR����Po8�6��	�Ee�`Hr�>գ�\'n�ӌY�N���rm�8�%Dr:/��8�ʽW�7�����SZ�p˥%M�߮-�#�U ���m�����\0�7�\0J���g��u�W���r?�����M��B��d�N�U�F��&7��+r���]�[K������WA��]��uu�����X,��lםU��ͨtF�d�C�]Ô��t�@3HF�# ��ҭ�6�\"��Uն*�~ �^�Vj5ɾ����ђJ����hþ��vV!�A�`c�R���o��$3ǆ0�#\0s�����w\\V1L�+�K?0OŤ\ZLY]��&T��@elpAyUǇc�M<�1]����0X��A�6>T}p�I�(2?cV��vW�\r�\'��I��G�ƣ8g��N��#<�{��=Y�(�5�Vϰ�:&Ԗp�P��S���\Z�ETQ�T��\r䥺�5�+���0Z��,0I,Q���Ԓ�7��3ʬJ�l6B��J���+4�\0�)@)JP\nR���\0�R���P�Ҕ��\0�)@)JP\nR���\0�)@)JP\nR���',	'image/jpeg',	0),
(27,	'Schneekugel',	'����\0JFIF\0\0H\0H\0\0���Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j\Z\0\0\0\0\0\0\0p\0\0\0\0\0\0\0x(\0\0\0\0\0\0\0\0\0\0\0\0\0\0�i\0\0\0\0\0\0\0�\0\0LHUAWEI\0\0U8650\0\0\0\0H\0\0\0\0\0\0H\0\0\0\0\n�\0\0\0\0\00220�\0\0\0\0\0\0\0��\0\0\0\0\0\0�\0\0\0\0\0�\n\0\0\0\0\0\0&�\0\0\0\0\00100�\0\0\0\0\0\0\0�\0\0\0\0\0\0\0��\0\0\0\0\0\0M�\0\0\0\0\0\0.\0\0\0\02014:12:27 17:24:31\02002:12:08 12:00:00\0\0\0�\0\0\0d\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0�\0\0\0\0\0\0�(\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0����\0JFIF\0\0\0\0\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�<-8\'5*�ZFDaO�H֜���T�� �Jp�*@�٧�����\0�7%G\"�!�!PFSL��;*GQR�k�`Sx�5����\'=)��������H\'���ʎ��f�1�i@(s�1O<q�a��R�6�IE\Z�P=��4�\0�O�J�*O$q�9�OU�1�.1�Ei߅Gqp���c��;�.	\nv�%�����;a��}{T.d�l�H^�*x�T<݊�Ni�\n�E�}�*�P	!F�fa׵Y�|��B\'U}!�T��`9a��֕ʰ��؀f�3�MjE%�A$R��{�5��X�����\Z*Oks%���ۚ.�z�S�t#�V�Oɺ7{U9`�e �Y��R\\�nM�o0aڣ�z����.~V��:�Z��j��M��3r��J���X8�b�(���4SP*@)\0��Y��S���)��ɤXci����u/�\'�z\n��O>Q��y�ӡL\0*[-!U\07^)�p*<4�λ���W$1�pENd��<J����T���@��X<p��Fh)��,�\"9,�5*Z2n��%��+^����}���v��3���`��1��H�<\Z1�LF<��o��t�Mk����\0O8aQK�#�gZ�Y�t�I����o�dT`��<�\n�z\Z��\'�jE�2=h��pI��y�Y��\0�����9&����g2�K��R~�弔�\0�\0Ա�EG3�j%ؔ��j�#\0��,v��]�am#`�ҵ�3�H?\n�aj���|�b��-!ݴ���!�[���	x�.q�8�X�\Z�\"��[�o��b�w�\\��mP8QUb�dݏ�.mC�����rH��R��Nӑ�չ��x�y�*��d�F���Z��/�H�s�j��f�ژc�=\r@�nU\'�m�%Fx�V���ie���XH�h��Z��E�a\0��\"�ً����J�$է�,��;�Rls��)�F�҅�4��q\\��\0S��=r�ܓ�P�g�GSH�k��n�X�\r�]\ZYL�����k]�T����4��)��k��ye�\"FP`�MF�K��J՜�p<���5��]ɨ�Y���S%A��tG��	��x�\'r��2\'�[�ea&rI���G�۝�p%������t�Ӟi$f��͊h攢���+n�k��yp����R���A��=����3T��h�mZ}#M���Ԩ��5�����s*�!ڬp9�-���|�:�pO�1b�3��񡻎OR�^!C�ɏu��X�`J�>خRG�۴�9�,O�\\Ѝy\"�;\r\Zf���1[�f�766�\n�|4�C��]TR�[��B���E��rA����pF2ǽO4�٢8�sڹZ4L\Z��g��9�S�T\n��H�b��}(2�8e#\rz-���^k��6H{\Z�\Z�YX����{�����jΤ�pMT��8��\0}+����0T���Z��ug�lqN�W-뚬Ww��O����sPY.f1�3	\0�z�̆�[ˆ��H�%��~\\�em���4l�dCok$S���\\��ڷ�2&�[��k?��p3�w����Rʮ��G�g�Н�&R��V�\0TYd���\rȚ�%Cv�S���4�c�i�H�����ׄK�/�<Yk	�}��v�����J͑�;�ֺt�����.y=�M�t:���Y�-�j�Ȧ�\Z��\nRqҴ3c1E&h�Z[U�0x=�g���a[@S�+\"�\"�Q�1��8�\r�]�Әd�r=\rP�6��)ޱqh�4�w�`\Z�,�A�\0J�����֩n5k����f�Z$����O�V9�iLQ��r=i����;BY��ݩ�Y�	6�CXP��g�_Z,P�E$2��e�=\r]�YI��P/�\n��_��ޯ[Ã�\0�jw�jd,�\n�v�\r^�}��ɂ|�z�]\r�����ڳd���k��v��\'`�ʚh͜Y8��q�kVh���=y���ΜšH�����УȬ̥X����fǦ>HʒO8�]6�a�Xr��=�)�	�V���ڞ�֯���L�Ј�g�ԍQ���3Ҋ3EP\\TɜT*Pqޑ�d�To\ZJ\n�z\Z7��z�2i\Z&`�6bك)�[����Un\n���[�%�q���W?6�\"_F���x*Ʊ�,�ѕ5�9�g3ڨxߗ������9a��q��ixT��v���%����\"�RoOZ-��JP����V�B�Oj���9	�֡:�tk�z�JUMR.<����9Y��FZ�i�c�\n���N窌VDk��p�?���m��V�8:���j ��?�[�!8.�����6s�N\ZP`��ujٱ𽵰\r1?���\0׭C%��D���\0���j61�ZT�����\0C*�M!�ich���@�c\0w�[�h^6o���1TrJ\\��-�B�53{TDz�$�\rE;֊`�sJX�J�\"���^9��`S7`TM\'�-\"�Գ�$�#����9���٤�W����G �ׯ��e6�m-�NC+)�8�t�ƒ��Y�o�zұ�f���@�_s�pjx.!kQq簈�\0�ޅs��qH�z�3�BF��1��1\\�D��\Z�e�7Ϊ��y5��s;����^X�L�GI3Ȥ���4�r[님|�G|����ZX%��F#�j{�� ������g�����1\r�_1�v�*��sMD���j&�1\"�f� �ܟCE;�)Ҧ*��)�x�c�g&��$c�x>��\n����ZdЩN����h�k>7\n9#\"�iK�)Xe�0�@�#5\0jz���\\�F�㊑wB*��|�Xw,��;\nq����W�3H^���0��q��4�_�C5ǖ�4�~�����j�1#*��������|�j)��P�ʮR\r80��v�Fp��Z@������PQ.�_5m[�IGNEX\r�(Hw,+t���j�jz��E�X\rJ���Q��(�7v��B��4Xw!�>�����c����L|���SM�!nx5㺋!<U|�CR�Q��4]���h��s\"V_�H�6����>����S�SyI���s���c� 9��ץ]R	����2���>��1J=��/�\'֦���b�\rV����`R�CqNޘɃc�F�:�Y��d��ۇz�zPi�ɋ�[�|�t53ސ�K�Iݚb�<���Ci�֚�qJ�\0v���Ҋ@�P<��jM�4QY\ZRMZ��9ER@Φ�F{df98�`�(�Q����h��hRy��(�c�R�(���\0�EAJx��CCA摉�T��Ұb��)�����http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\'﻿\' id=\'W5M0MpCehiHzreSzNTczkc9d\'?>\n<x:xmpmeta xmlns:x=\'adobe:ns:meta/\'>\n<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>\n\n <rdf:Description xmlns:exif=\'http://ns.adobe.com/exif/1.0/\'>\n  <exif:Make>HUAWEI</exif:Make>\n  <exif:Model>U8650</exif:Model>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:YCbCrPositioning>Zentriert</exif:YCbCrPositioning>\n  <exif:Compression>JPEG-Kompression</exif:Compression>\n  <exif:XResolution>72</exif:XResolution>\n  <exif:YResolution>72</exif:YResolution>\n  <exif:ResolutionUnit>Zoll</exif:ResolutionUnit>\n  <exif:ExifVersion>Exif-Version 2.2</exif:ExifVersion>\n  <exif:DateTimeOriginal>2014:12:27 17:24:31</exif:DateTimeOriginal>\n  <exif:DateTimeDigitized>2002:12:08 12:00:00</exif:DateTimeDigitized>\n  <exif:ComponentsConfiguration>\n   <rdf:Seq>\n    <rdf:li>Y Cb Cr -</rdf:li>\n   </rdf:Seq>\n  </exif:ComponentsConfiguration>\n  <exif:FocalLength>4,3 mm</exif:FocalLength>\n  <exif:FlashPixVersion>FlashPix-Version 1.0</exif:FlashPixVersion>\n  <exif:ColorSpace>sRGB</exif:ColorSpace>\n  <exif:PixelXDimension>1536</exif:PixelXDimension>\n  <exif:PixelYDimension>2048</exif:PixelYDimension>\n  <exif:InteroperabilityIndex>R98</exif:InteroperabilityIndex>\n  <exif:InteroperabilityVersion>0100</exif:InteroperabilityVersion>\n </rdf:Description>\n\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\'r\'?>\n��\0C\0\n\n\n\r\r��\0C		\r\r��\0M\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0��9��(-&S�h��h	l(���<�D�C0�C�[�J���|5�����0�E\\�$�$$)�E��&8�@А\'L�گ���IAI��T� H�1�Lr\n�h�B,�R�!!\"Q�4$�2�`F���4���(����KI{ym\r.a��a��I2v�\Z�\"2k\0��7�ĳ�5F������;��ۀUGTʈ#����=\\,�������@�/-��i<�u��//���=Mg��~��钅24�2c,�X=%L#N���t���^[���Ίֲ���j�q9��ϫ�r:[S��P�=�9*2+FE<Y������[gs�sxK�#T���Y*��9&�g���t&Д��%������Rk��ޞ�az��>W�=ׁΖ��ؤ-Tq9�k��sY�K�`�b8!:�)!���W��1�]W��l����*\Z�����B�%�%�Y)IcD%�;\Z����,���Z�6�R[�Y�:Mar޷�\Z;ʢ�OI�s7��Cˤ�m�skY���f�nY��NY��%�ۺ���B�כ�^J!YxOy��*���E\\���\Z<�z�;Ŗ��>�X��C��j\r7QF�C�9tЬ�#ՉY��㢺&ם�hG���Y�e��z�x:\Z��t�	\r����::�_ٹ���_-��P��)c{^�E��4�o���gS2h��ӥ�~���N-�t\"�V�\Zo����=s�n��^_�q�c��3�G\\��Y���<�\\�xo^ΉK��,Z������\0}űO=��W\\�i�(gVKX��OyAPϣ�g��Juaż��}|.Z{�������e�S^�o���|J�]3������W��!�w�����[�e�Β�1����F���=|z\0IOG����	��L窝zSק��޿\\캜�� <&7�3��w�x�M�P�l�8Z�]zmq�&�<B�x��:�O�hlP�U�gן��7u�8���n���k�y�˅K�Nl�V�T�;ǯr)4��~]�)�Vt>��������`)�򚲪�=��\\/�l��c?DsԴTk��y���\'�n@����y��u9`�W�D�/;>��8��H�����ދ�Ӆ�Gx������p�u�c������q�8�O�Ƹ�(��[�D���0:��g[.�7G���{>f���f�������\"�zg>s5�y����F3��e��\n��m�F��F����+=</]i痤�-=%ɹ�>���\0e�����Ӥ��5��Y|:W���;co�\Z�����n,Ί�5n�%��=_NQy�AE �;	��<hF�g���`�u𼾅�x�\\,���D�N�C__oY7ſ���M.����׉��i��B��u��^�����_5���:}�7�xo�Mg����ע���z��O��/���w�%P�R-�z�:�]2-�M,����zΜ�;���̾�,��[%�r�|^�\'ҿ%�*�u�JeR�p5�:�0xVh�<�����bA����~η���i^��\\�h�kΧ��5N�@�K����yX02.�v�MK���ft�UY�j�V�k#��i���K\n��*e@�@B�Yo���4��]���Q[�9Fޏjd�C��lJܸs%02�\\��\0X��L4�j5b4l�f�J����8M�jT��L��a�R�������ܰ+�*��WJ�\"�O)�WA�T��;&\\,�\\Ј|�	u\"���Lۡ4�:�F�$ͮ�j�O�д\0��-a��|�e�*�L4�fts,dRts3�ɚ���B�.�\0���jҨ�\\���S@�t����u�4e,bng:-��g��*E�+imS	���:\"��@�:X�;-9�Qڐ1� � �\\JP��A��!�TI+�yI5���Cm9�$�F��r�2&�@�v����TRdJε�<�m�һ��=LKz�N��fH&�e��/W:�D�C+&7J��⼤hAW��w�OX4r�if,���$�I���JY�e�j�%ѹ�~mVu�l5m�\Z�TĚZjfjJk�N^�a42Q,����Zj|���3�5��>��C�,rTV�I1LԴ���Z�V^F�0X� {��o7g�\"�&�kN=�_5�d�w�4�Z쒳$�R%��y�v\r�;�S5���\0*\0\0\0\0\0\0\0 !1\"A2#$03��\0\0��h5R��U�t�t�V�U���T�R���K�-U�ڲ%�?�:C�h*�+:�\"�Ui\rqE\0�R�Z>�xh�T�kÊ ���d1���j=P/�V�Rk�s�׃�CGҵ��R�t�Rkku�80K��ޙ|@��9���C���Z��Qu1C��U\"l�\\��R�xϒ#N�:��K?/����\'!zy�K�R��Lg>�w=qN�}��EQ�xֲ���F�PG����\"�mvZ���X�X����ԑ�\",0e�gF�#Q�e��e���h5R(�Hk⍮�k�ss�<h�����k$��\r�Ny	_�g��4 4u��^��Gqm�1r��5͢�R���Yk��sj(�\\�r��k)��Ʀ�\0�el��ʋ�Jců����FJ�QxCQ�h_1|�����:k,ǉi��.�\r�i�q�BZ�t�,H8��+�rO�1? �s\\�$\no���\r��C�\Z�R�)���`t����\0�r����*x{o�լ�T-:��?��\0��`�s0�\Z,���FFI�P�J���,1�b�eGɉۗ؊C��V���Jՠ�?�u|��A<X�Ӥ-.������*�}F�y��\'���1�Yծ\\]�.<��T��D!�E5�p˃qi6>:����	kn�w�+%{�o(��(�࿧��b��͍��Vq�~K�Q�W5��͎����0]�{ф���w�䣋��67.6�h���#�:�Otp(��-i��bfA!������GOvZ���tZ��az�7R���;�H/��a�%n+x Q2����dR�gn7��}��fi��?�\'4B�S2�.̉��+�ұ��逢�\0�R>���\np�M�ӝE��)εMj|��J!y��v�X��{�l��9���9G#�i\r\rȃ�b���+�N(�@{���M���ͱ���r�����8	�+\'+�y����lp�T�\\f�ޝ��\rtY3�3�t|�L�6V.<_���ܑӸ�hLm+M(\0�b�yi9]��u�������F��W{�n2.�{a�\078Ɛ5���I6{�*���<�&���#��64=�wjX9�GE��J��F)�y�1�=� wd�;��a�V4�	I|Rw���O�\n�&&@��$`A��Q�&4���EZ�$@���V��~C�����1������F�f�\0��G�!6?N���\'�����/�?���б�y=���tU�ь<I�Z��ڊgD���z�#��r��D#�`s��\0��֖FcidC,�N��V7��=�X�Α�E�q�(��U� l��n	�-*�+y����SXZ[\\q�{|-2�d}�?B�.0�E�Ĺ͉aEځ��Q�x�$8�-`�}K	�p��1��f�D@����Ҽz�U�Lf��:iy��wP��:(�W�4<rc����&~��\0�y8�e6��sڙ�%��M�ʁ���wP�D�ir��\n��Ս�]��>�ݫM�8��v�ϋr����]�dt�!�\'t��NǑ��B2S1^��Ѳ%X���\Z8A�<��,���G�j��\n�(&��^/q�?�̨Z�ӞOK� @�<&��\0Mbh(+�\"͊v6yg����z(�\0�@m�F��p|��)9�ܬ��-\'P��Fgc�y�cl�p�Ggw��E��\Zi@�H=~�\n,7Ǜ�q��ۓ;F�h�q1�&�$����+�Z��ի�j{iA���\\KH( �d\r]���읕z�5h�Z�\\l1��Ӝ��qq�-r+��%91�բ}��CCG�?��4�=Z�z��Z�j�@�V��z)���\"���������Z�{���r�h�\0+�(\ZW�����_H+��.���C@�իېu������J�:f�Z\nՠwzw��GV�N�\Z�z�]I�~��A_�+��j����mP����d����6v�:JE���Q�>�|���V���^�ujԓ�\r�}����SE!�W��k��A^�E{\\��Rs�Z��7�}��V���z��_���\\իV��`� U�+�&�\"��\Z<�+��\nc��s���9��V�}s+��\0)\0\0\0\0\0\0\0\0 !01AQ@a\"2q��\0?+�g�O邗�8�9\'�qC�;as�i@-+J4�r��3+���S�����0���hb����f�\08��D�\ng.g��lC��h4dP��2 ��\r-32�O\0P���B�\n?��`(c��i��D�sX�[נ}��%����p��r6r�3��|b\\��\n7UZ���)ò�	/\n��V�>Ez��r�@�+��ە���eiҏo8�����p��=�hZZ��A[v�\r��w����G�fQo\Z�*�+^]4Sm��ײ������0�R���SR���T�\Z��J�UX�F�D(�P�t�KZ��_��*P���,j��J�p�\r��\n-\r��\"0�A�A�_P�zՍ^=�u|t��R�G�\nT00���*s��J��e+yn��e(8B��������숄PbQ�!t�J�kD�AB\naw�okǮ�J��tQ�p�U��l����hUZ��\Zm�Y�!Y�����i�Oٲ��Tٶ� ��@�\nͿ��UCI�j�vV�ھ7U�6��W���(�WG��\05߅�\0=������}g�o��F�)�d|/#�5jUw*���	`�t��*��A��Q%M5��+^}��uo�6k�d/Z���������_�b�����Uܮ��(�/���w`�_�W�r�Q��k?+]_*x�Kv����8�������q�yS��Q9z�\Zy�\ZQ@���V�3�\n2�B��S��$ayb��Ɖo\\�Y�t�.�*�z��q*�x\'o(�ĩ9J�	P�^���eB���@JӴ#IR���ҡ�G$��Pb�TeX`��8���a*��K�RT\"�۴#�@4.�0+چ�[��\0&\0\0\0\0\0\0\0\0\0!1 A0Qa@q\"2P��\0??ۢ^�:��$�I3�K���o7�xE�	�O�8@��mٚ�����^x��y#����\\�,~�����ՠH�(g��V\\���u\Z$�gvNI7f���xO�Ճ{��n�3v���o3i�1��(ͥ&8D�U�l��3�`xv\\ݩ���͛&����\'q���<�)%�~팥�l�:�\"d��ST��\\��`nO^���7%R��dH�X��xIS�@����\\<�vvh��\\�\'�vL\\\Z\'��q#�M23��\Z�KВ��6D���|*��G�2G�\'�x\'��7w~��(��C����B$\\2���kF�#O���͔�:RB�&�ٛ�}5�7�5�S/�Z�I�4/���D��N	 �)�\\{?N����$��ƥ��K�~��\0�#_M՛�B��D�!�VO�\n��Si�:��S��왲�m�uC���f�5�>��25#�I���nI�{)��%`x:?mH�H�B��+�Y�\"��n	$�\rdc���o�ٲ	�l��m�r����\Z�E��<���\":��ɂf���5�N�S�%%4�PG<GIT�P��O��+<�$�^\'�d��V�rAFʔ��%�L\rg\Z\Z�Z��C�R�`i���F�e2H�21���L���S����TAvD	U�6D�?���Q�q�J���눳#���������_|5w�=߆�싱\Z�z5�[�P<�D����sd�f���Ż5n��e�l��f�I�ș���������!?�]_����lעo=��\'պ��2yhc��VO�����$Y������̋n��x��A�,��F`ՙ��\02\0	\0\0\0\0\0\0!1 \"02AQa@�#3qBPR`�r���\0\0?��o��sj�9V������%�je���#�ŖgR*R�?i��ׇ����H��tq���ӂǧW]V-b4�앗��M�.�b�FFCXa�M���%W!+�2^{)�J��a!��ʢ���Ӥ�^\\i1=�k&sn�x2`y�c���R�nS���jID��##-��jχ]��7��\'��Ȟ7J��6�]1g��i?ev6�؇�8ki�}��LA�L��Q�tb�ڞ2^�U+�N���dIkWI�r�NpIZ�ݩ��3���B���e�B�2ŵn�[��Hҥ���0��;�i(�yt\"�v)�<y!�S�W&�uC�r��5���d�z���MhK��l�,5IU���.M*D� �af\n�tc��R\\LS��]SЩUՑ��ש%j�J�ss��l��\"?I���o���3�3�;��y/�5X�K�oҪ�zOJ�����U6�2ŋ	l�#��k3#��4*��WEжL���\'i�$R��D��Xco�}���ƅa%U-#��U����-�?&.ŲV)e-�����sv�*�\\4S���w��3܇��v��B�֊��bt���ڥ�TӪ\n��p�\\���E[���dH䗞�v���rd�����vo�b{ߋ�v�d�OOF5���!Ylo8#D���\0���5%rߥON;E�R�2�9��o#3���,�Dh��oMUvZe5t�S/↴k1�ݷ�X�gJP;����&������}K��ɖ���}��\0��k���8|ꪊzu��W2/��21P�xݺ*�I�/�>���GDfH�5e�etQ|O�\0��Y��z�|�v=)�y)mJn5ޯQ4��T�&�.�I{W��l=>9N�%Fi���#�#��t)U]��\n�\n�w�}�$�{v}:cϾ����y��\0b�������8j\'�[k��R~���\0%\0\0\0\0\0\0\0\0\0!1AQaq���� �����\0\0?!J		HHp��BـD�Md�:!��B��<e\r\Z���ΐ���QA#\n�[y�\n�ƳF�M?�U���loF&<���?�5�ȑ���f\Z���GàG�=��\n��4a�ƌ������a�h��Hk�Ƅ�~ �\Z\Z��%4�£��F��\n��d�!di\r>.����!P��\r�	Bz+�;;����M�zc���>\rRy�\"w�MQ�P���g���ȖF+h��d�I}����z�%СDJC+��t�W`\"�8}��0�$�Z\n2���详C�PR&Q�A��o�!#�x%N�{bM	�!NJ�BZ���Ēu�^��lGcBhaL:��#��YG�b		F!a�	\n&k��NbX��x��������Q_�#|���{���#�`�\nWH�\n�Me1�r�j\Z �� ����ě�~9�{��c�Y�Lg�עF\".�\0�#ؔ�p�ve<I[�$ �Qx1��1��j�4�v�&���Al#6߅���vM@���{䰐�x��\rUd.�,�)�3	G�!�;�fm>�\r���Č�b�~�4(�n�U��\\��ټ���a_�&��!E���`�����b�6�B}��hp�[1\\�\"�\Z�(d�Z\n�c�|�j��fD+��11�6&�ݑ���1R���6�!l>VM��\n}�-�`���~$�I	��;2�`š��Hk�z�Xd�&ܶ8��p1o��yP��L�Q�e@Sk;�n�JƘ�\'F��h��D��Jx�k�y#B�w��baYÎ1	�fSlm_�\r�P���J��c��®��*��d�4��<�����؋<��\Zi�À������Pt���4t���<��\\{+F7W�����,��ls�Y���v�4N\"�\0 �S��E:,�5\'P�1�\nbx�y)47�J/�����%��Ư�SXr11\Z��i���Yt-�nhDhr�A��<[�\r��\n.󲉫����hm��(��mB02�W�W눓6�7�&#_��Еy�A�B�-b��^o�P�q��]��\'0�	����3Q���J=����+qЮ����3�@��\"�ЛQ{�%G�\"LQB���&����0����p\\\nc�2��q�rV8�J�S|�k�8pC�H�^�̈GX�t=�2��k�V�69�ʍ�Z]W��S�\0`�iI�~�ğ\'0�Ct�NX�褿X�谽��4)PX����90V�W�}�(��%�z;o�\r\r�*�Msa��6�3��{����s�Anqx�LA#~��8����Q�76����i?�j�쬛W+C�6��=$9��m�:3�·�?��\nP���G!\rB�#]�3_a�	L�Z��\'Љ�@!���+g6$>B�aD����B�ٔ\"K-p5�fj`(M�BT����-{�a\"AEѐ�~\0*hé\0�{�8˕� ��(�2kX*rix����Y��l\\���� s\r]1�\nI��#�h}	C���BD\"xfU�x#[=K�tCg��>��J�oP���En����ݴnr\"^�/b�x�#�¤���cعj���e��4�\Z$���A*D<�y@���4_ڣ\n쯃�0ȲW�[( ��w&�Q)�\rS��tD\'�-�Ӌl�z	������j�����в1G�^N��s�\rp\\-�F*�Ed*�.K��\rK\'AȚ��Q��I.U/�J��(+�b�5�,|�vW캹1jF�\Z�2��&���`��ė�D9B�Q�g쌨��a�E�Hb�Zck�4�����e�4�t�-}��x	ʜ�D�|�ٟ)O�aѴb?Ѩ=D�l¸�ƹ�I�Ђ�@�S\"�̶�����O��hc��=~4[�1�[GD�C������\n4������l{\"�����p_�̉8�C�\0�����x�:�\\pg�Y	/��r+N���Cg��dJ%�ޑ���1�h�}!b��]���;N쯁�I��\r?��S�	;�.��BWP����f \Zmúw��6<�6���\0K��C]�����������1���1�O�)�U��no�\0]�	���˯�`<�\r�JxVO��b@a���Nc`��,N�D�=���~5�`�m/�&%��\0��xnsI١��q���\0�,3��E���Ad,����L��SA����\r�R�6�t2YC���V�Ȳ62Q	�j/��W��O����C�\r�	�1`��&c^�M\"~�:��0D<��	��:\\�	��}��ς�1����,�Eu�6�b�9������*�}`��P�l{2C��2Y\Z�KCi�ɞ��ׅ��p&ؐx��E�Ľ.���g�a\r���\n�Cgg66YWc�\0y-%��j�9&vNJ20I���X!�h�D&V�sQ��C\r�=���3;	��z���,�T\Z��\"���߅HNe�l�e�Hco>\'�T_�Fbi,��>E���]�(���^	��F��\0Bo�y/C�ǟ�qiq�yEɃC��jj}l\"�t��A1��)����4d���43A����|&��o匁�k��<[4/�x4.DrR�}��-�FO��\'^/��\0\0\0\0\0\0�ؓ�-D�\"M�J��<V��Q���BH��ߙxpsbm�\n�9-�\Z��$�D\'#�F�����C�<Mbp���I2��R�wU.擲������F���:�\0Y6�\'��-�X\'�βR֍�fz���<��N�$�x�c.vcEc��c�pN�֍4�|�����W�J���B�WJ�I�y�H(��Av\'��v�3�V�w��g��+a��lRI{��3Y�s�.��X������$a�\\7	��N���C��+C.�Z��38e+��L�k	�D�CE��?5�t��kB�-\"E\n[(\rE:����/�\0i�����ot�6c��2ʹ�H<�^��\0�\r�PS`7(��I�\\z��i�I\\h-P�����6}|�+�bw�����T�HW�͡[qb2*��ڂ\0����\\c<�oJ#��\Z�Fz��M����!��1\0�Ym^MhQ�O�;��m\"bwx�����{�D�8E�ѹL���\0���ۘ�B���~h��S�耓���;HC!x��_��\0#\0\0\0\0\0!1AQaq� �0����\0?���B�e�o7#�\\��mr�9�叻n���{�ylrt���\0��l����u�,��˯g༳��79�a���|��r�?��䟩�Y�H�g3�s��g���`�l�g��ٞGa��1�y*9=4�^A�?�,�g�lC��9xi&� #�|��~���vz�\\�\0g����=���\0�������_%��|��ʞڱ{��L���O�w;82�g�8a{d����k�ē�ن����+����˿X�x�mmwevY#9o2�]�R�g���m�e��n<���d�=�y�ydW� ��J�u�~	���i�mԙ?��\'��i��`>�/n��V��~9� ɥ�,�����~Z�+���~<�1�:&�2d\"d,�.�����!<}��ѝ{S�}����\0�S����_\0�u�%�ۏ,�o��C7���v�m1��0^ǹK�x��?bA��[��r��3�\r������Y�ړ����� ×\"����g�ǒ�2�[���5��~?Iǰb��zO{\Z1�|�����^٦~=�-��\0�����N��� �,c���,,]vO��g]����d��`s�_�<�\0��12I��!Z8_\"-�@{�*�>�v@쭆r7�a.��&\ZXK��!�Ϩe�g�9&;&_$��$`N���o~�l�l��������|˞\\c���˟� �U���&6�=������t�1���cqv��$�ɔX�KgA�o����|���̟A\'������?O��wX�>���&^2$\"�\0�c�wE�KQC��3�dtt�C�C�����Öh�_���aߒ�!=i���~O��$�\"���?��!!�[��\Z�4��8�=�����?������S�d�ޚ��eƤ��l�B#��E����-ǖ���\'Q�?/��t�$�#��&�a��ͷ� ��{�~��1�i�f��9����^_�PW����a�����N�\0}�y�@0�?�vP)�z�l\Z�~�yȠ�^��E�V=���=�}��r�ѻ7��!�w�C<�\"^��#���7�4����\Zt��Bm�������/�ZDb읃#�K�|`�u���0���Β�z�t�@o%B�ܜJeß����?D���?K�@���E�������\\y?����Ȓ�c����l��%�7YRS��HP~ܲ6��<[�z۩j�y��o��.���\0���<��\\>�l�V����+v�(~�XA�=�>�}�[����>�%w!�2g#�����?l��=?�ᯊF�������/�Jg̿K~���\0��Ði{����}��p�hR��C�F��,ۺ`#^g����[���K�<�p�K�Ly��~���ߵm?!�7��=F������{��\0b=?ˏ��;�y?�����9���bl&F�Ƕî˚F��?��]���;�?<l~��%>����{���ONK�nߥ�O#�\'ſYv9��/��q�v۶�hAȹ7r�焧�{w�^�!�_[pN�1�}�1�����C��\0���=�B-6��3��o���$�Y��]}�c�;jvݑ�u��C��pl�[�<��C��/9w����.C�����\\�g��4��x3�G^Ji/�km�v�b����or99���+��!�M{l�m�e�ʤ�vצ�X^|����\0%�������B�7Rf�[��_�����/p�]o/�sq�a�,\n�˛�ν�r4��wQ�0�{�-����g�_�M�k�]���n��:I۲��vx��C�����Aݐ1�|��4�O�lo�5��U�i%�&�K/���u�.���\\�>��\Z�{\Z����?P~N�@�o�g%/�s6�n�?R�!ܗ\r�p����;2��m���u�=��925�u��}�o캖���p��nnI�=��GX�-=�rk�\'�=l�Xݶ�7%���9Խ�tH�\0/]�>OrM��q�qo�8˓�����ջ�����-�R\\�{/����c�\r��G9��e�ae�n{/x�^�|儣y�j��߶��nZqo�p�饛��c\"<��r��b{o�58v����O#<��޳�Ȇ�}�x�ײ�X-�ϓ���l��Yy�Շ3dm�Jm�.g!s���a��{k��\nÑ�ڜ���8�������`���������Hͽ��6�8hI�C@���3 �z�{��\rDe1C>B���\0\'\0\0\0\0\0!1AQaq������� ����\0?�v�7��yt�\Zr�ä/+&��/�MB�(��9RW6B��p�Â�r�B]�rw��W���9�ݮ���I�~��v��\0�~HK�����Þ[�~�܃t��9t���6��!5�ۻ���:�������\0�����z.w{�����\0n�l&��#K5��f�<�#�\'�ō�W��޳�`�g67g46h�!�`�~�7~Z�K��C̕��������ɒ�<��ݷ:�A����;\'2�:���!y�s�ێF>���k�p���C�d�p��YW���(��ɦ�t,qNq��{/��L��i�\'4[������s/��HOd�a�:�Ae��-�fd��lN�>����� �摽R���K������i�c�͈��S]�9f�B>�w.9�����M�.1��w�>΀�sef6�$}��|�r��K�ɇ!������(�{c�P��ir82��|�.?��lr}�c�A�����!{xۙ�Ӱ��H�[�.�?��[1��{t�:�\"c(!^H�@qg�y�e��ۍ�d�,��ۅ�`���d�?����rR]r<�\'�a��,���F��x�`q�4.gdv�ۋM���������Ps���cdB�l��z��#2X��1����B��?��>����?�Riq/c�i�����Ͷ����q�����=����l	���̎��p��;��\0���G%��!�샑&���4Aݴ��ݶ��u�!�g�:�Ll��;�����Y^��?�4�\0���|.�]�m��m�[=[:��\nd��\r����zBv�h]X�ǒ������\'��x��}��rS�8Ǜ#���j2<����8�F���/S�b���h%}������zXp%�ZĎ�=�_��Rq��w5e8A�������Np�Xs���<s,�=�8{it��8�&��0L��o��>F6��,n��l+�d2����>Z>!\r!�~Y��-���\0IC帷����`�={����������/���\0+uA��\0�<��6�\Z�\Z��{d�`�et�?��8���\'��\03��@��2�>�\\�G����Hx�Z}���-<��Rrn��\0s���m�[�%_y`������d�� ��#���]� ��<��,�Xq��1t-7b=d��Wc�#\\�z ӧ��\n��\'I�����_Գ�/_�\\���W��!�k��?�O�X,%�!q�τ��X����|�s/�M��\\����_���\0�})Z��:]�ծo����>���/�`p����@��VŬ���{�����䃿�Y;��/G�\0q�CN=d\'K����B��\Z?v\'��g��0MX�rD;� ���9�\\�����>M�����~\'��:�>�L�5��I�\0�@�)X?��,<�m�)����Z��?���h�Dϋ&�����\Z����䛷��y!�s��we�N�fj���Zv\'&���[A�?a	�߷���n�s�e��׍�`~?��{�m$c�����Lo��]�3���R�~�g_9;+�,#Yv[�Ͼ~<o9t�vO��\'_�o�J��I�%���c3���A�?P8�a����X�?l�<��?�_e�{gmVLo����ͮg\0L�l�����Ǚ��2 �=�����,�͟�ݴ�e�[�D��\'����g�0�c� v�� �n�nkg6���xad�#�|����K�/��X-�؝�����?�����9g.$�M��|���忸9�Ǳ˰�-bg�Y-^�ʹ��Y�����˦ةt�l �%۾�n�Y͍{bvxǶ�	�6���2v\r䟢LvKuퟏ�n�?���y%�-�,�[�c�wȄ�C��2�o{hg%��\'�f?�Ɂa�ￇ=�NX���?����Bz����\0�w�����Rw�3�c�~�����sy$��{`{[���\r�,�\\���(r�f�����p��t9w�A��0~�NGE�����yf�_.��7��6|�8؆�>f]����}2�/���=��n3��3�m�_W���ɛ: _��^m���]劄��,2�����Zg�L�����8�N��O\'�ˋ,����݇�����/Y��8�M�ð��7�����c�����r�ݷ�_gO�O���=��ُ���p��y.��,m�>�\n��;�k�/��#g<�}�[�\'�c|�L匃6�2M��{�\r�j��-6��I�~[��w�αd�9��P�=��30����%��ZZ�����]��K�?�c�G��=ow\'�C�_��@�\0v�א�ٜK��[�}�Y�2{	�\n6��9�H��&�ی:����C�,9+g9�!̗�> F��;�����m��)27%�؎C��7�o[g{�k����G�ۯ!;n�&��N�.q��\0���?��+���\0����[E�\'!��L�tl�������`�\'�{ 6ra:���Xs`�?ߐ\Z�D���I����\0&\0\0\0\0\0\0\0!1AQaq�����������\0\0?���Z��0��D+�;��\nC���\0�U4��4�&���=��V�`�]�2�V��#l74�P�|DV��r�Q8&�Q.��\rAO�&\\�tES|c��Dk%-W�Ū��w16rD�a�p�n�1w�-?!�	��b�(�A�@(/�D#�ĸUgq��}����nx`\'|�r���i���Tq��.S��j �bYNaY��\n���YΘ6�\r� �����%{�%^�\n��\\V��6X�\ZV�b\0����(حa���̉(�\Z���X(�aQ�̔,�|�ά�b���y]�����n�㸀`Jo��\0�ir���6�B���Q7d�:�q�`��<5�����/Pdi��+ln_��̶�3n�p���i�-V���K���dp��%m��K�L�Td��g�Z�%L_�Y�k���sV`�M�_ װ����~ ��eL_x��_�l#z����+>���b)Wr��f��U�x��#��t��^H�~�a!Փ���%�?j!	�K-�)̶�e�D^��]�\rN�؃\r��t�Â��m�B�`���?���@�p.���ɏ#Q� ��hW�&M�,�j��TX�r��^;�J&T�ҭ��J�-�\"�A���B|1��.�$a��u�I2{�t�2��{*��!�-&��b����)��q�q)p�XppU�w�D�sr��Ak���*��N\"7�6�7[�~��M�i�-�7��̨�	�\r<�@>U�6������ ��b\rº��.#A��a��\n��؅�.e}��5I��Ua��[�R�S�jpr���6�ܫmK�N��~vڻ�*5P\Z�%w2Nk�)m�]�m{Wb�#�[;|��-�7�K[<�(u��F�/�Y`�VX���ό[F�ĸy�����>ϐR�c�4���l��fV`{�\r+�c���\r��g��G06�u�&S�&��mFC��ȉ��j�Gw\ZB@�)\'V���˳%vAKu�㩜\0ur�P���\n��pR&�(�史�ls8ݝ��PM�i��f�gHN����.����Zɣp@݃�$\n��t2M���0a��5�z���	@f��G5	M�2�J�j�����,\Zp��1�f�\'B�c��1/��i��\\��*��$�����)U^`+�<]z��F$:+�$�m.�ш��Y�*d�(O��d\Z���ޡfC3Ԉ��TB���M�ƪ9r9��\0�r�B��َ,_6�^ԥb!��1i�;��j�q6�<���`Z�0-	h��o���fxv[8���U�Vΐ�1�y��X������@�C�*���	P�NH@,���4�u�DkS���<�Az�V]!*����Vͳ7����nU�;n��T�&p�*5�)fb�u\rc$�5p����KԴ�����x�Q�/�~���K����_��d�����s)<���P������������e\\J����X��*�cȄd^j܉	��T�7rA���J;�((O0=�4���{�l!0�j��{e.��q{\"� ҡ��\nn\0\\�0�3|�~�G���)���5\0�?%�K�SZ/p0�1�>N\"HK����T�\"\0c�wZ�=��tQ9%�;���0�k&c���4�7\n�p~���S+i�[~8+��;UD\nA��h�̓.f�mQB�#	.l�_�W��m�T}��\n`��xh��� 4F�8?�g��\'w�NA8���K\\�Dή����1�,���4ol\rr��P9�D�l�]_���f��VPL72�ȃehޡ�:s}�����\n%Q�3ۋ�?��\"�lLT#r�#�F+��\"`1�)���%�+g4��V7,a�8���*z��(��/O��\Z:\n�\\�r�դ4�K���1H���.$z�8��T�o3n3\n\n�Y�vKХm����P��*T�\r޵0h.X$��=��s+LObרh(��1j�����vK����ne�ĺ#]K#��K�J��Bŋ���l�\\;\ZFȡĩh�$@�%LS����PI*�.lk�#�R�2Dm3H�ٵ�0�2�@NQ�i�֞bV�չ[m�`! v��\\\n/	`���~��8(a�f��uM@m��aͼa��1�un*h��` \'��\0�v�\\��e�o��T�؛��2k!�@!\\�l�*��\"$V��χ�Vë�	���<*�A�y�/��T.�f�b#q���&.�_#g�W�	\0\\/�Br���%�f��fT�S<�\0�_�P:��\"��Tr�\Z��Peus&/�(t\'(���(�+�\0PQ%���I���p��uO#�-Am���bpQ�H-�ӆ=`�bCX��p0�$�E���.# �\rV�3��R�{cS�#FU��J0u?aoBh���%���>M@�*0��#�)4�!!�\r��F[6���q3-��\0/�@���C�ǒ���D�jO��\0�iN�f�\0�\'�C���\"�q`��^m�+�1��m%�\Zq.Кk*6�q+}��Mr���\rX���%�{ĸP8��M&��S9��D�oR��<]F�e]�!\0Id���(��j�a!b@�/p��s=��4.\"��\r6�k5(+.�n#.�R^�!��ݪ�4ChLn\\�K�\n3G|��\0�ڽ7�`�s��Z�o\r�2�8����&<����akx�1���)�����\"QU.����eQs<�ߑ����h�xl�ж��U����D�� �\'�3]�#Xt�P�l����b����`��O4�r�M_0\n�X�6M�AA���0`$5D4��^�m���$M����.X����̵fw(�\0�h�J�+_�nYH0��34��o��6��N*T=b��c�B)x��!��jg���c%S�u\005R��+(ܭH����\"��L-�&=\'?a��b3�Dt�bN�_�\Z�˚���I����i��ǝ���K�-w�\Z\0~�i��c�`�-��\\=�f2�z�v�\n}�\\N@&�\r�kΏ��\n�v�?�8ҟ�*4��\Z� �n\0���`\0��2��-��_�ux2x>���C7\\=6����\0�m��jh4D�_!�6�b�����\rE��a��e�l��#jV��N3�ƩW�B�4�Υ�OI\n�$@�c����]y@Ӗ�O���]2_̸\\��TD�YBZ����C�;����A�lc��z�}��9�\r+�J�w\Z����0vf_�@�s\r\r��r&qL*8`=c�fU���~L�b��pX�x��L���+\'19�h�m��&r�Z��?O�Ǩ�v�V��S��_���;x@�#��ܹi�\'�a	KV_���*�?Si�r�1.ۋͼ�kw�KU���U7��t�^�%�N:`�ڨ`�s3T؀n׾\"�R_.o��Ʊ�̍�8\n��)yz���\r���d������Mm��j��!e+�y��b���-L���@��sa<����bZ8%������{�X��؜J�{Y��!��e�C�\Z3E�!���&`��q��ԥ�c�*���w�G�x�5S�fm��*���k�:<��T��^;�%⹒����\"l�\0ӥ��y�!�:�;F�%@��\r�8���f�9J��]2�@�\03z*�q��̷��*�K�2�ck��T,���e/ٞ�q4蛬KUh��!����2YP�ϳ؁,;!ǝ�B`���U�9��!(�Ņ;,�r㪛q���PE��u��	�p9T�3���d�\"��W�!���K�\r��\0*����Z8�.���s�X�.��\"���jP5���*j.Y�I4�a`�����rV]��]�	x��G��u\0/QRM�+<5�e�M�%0�[��eg�P�gq��;n��R�E��\'�*\r7+U縳F]�^��r�Un!)�� ڻLKМĲ�����W�?��oʺ	Zqk_�!�N�	e,�6\09ܿs�û��CC��oۍ[r��g��{x�P��#�.	rSx�_��Dq���������Z�/�䄔G\\̈��`9\'9�w\\��u+�� �+�D�M���ϓ��_��r�XbD\Z���c���cj���b���o�O7|����3��i[��6v�IT�Cq*��@��� �.%U�� w��a����V\n�����/i�W��� ��8/�w\n\nᔭ��Y@�P��U3��Sœ ��=��ZqmB���&�gմ�)�����!zF	w0��\\���f�m:�5c�A�:��*���\re��(�l������~ɖ��1fB eu�����B%dݜ�K�G�!�J)�T�.^���e��%�s.��\"��./�PB��AK��Yf\n��s5F����VU;��Wi�Xu���r�g�W�Q�L�Bh��xp\Z�)V��İ��pw(�Υ6+� ژ�Q���\0q�@G<�c��rX�@ٗ4ni���aY��B���\Z�p�.\"_��%���\0V`��P(�?�#E�cm/��ǰ쬳�j�V��\Z0�$��+3�X�k8e��J�2w�����.ێg6�!�g�,X.�w���V���K�P�9����\rW���0í�\0��P$\n껍u��[�?x�f�*�ǹ�O�#��q�X�W�1�����q\n]�\0���:UQ��ګF��#r��,Q+;�)�,N[�3nz9�Ճ�#�����ĠY�Z-�̸q�;g��/��m�z]�a���oO��������WU^�M�{����n[�\n���3{��w�k����)v��S<@����]�ex��i-ĬR�$K�_����R˝�s1ⱚ�7{�R��3Y<�Yɩ��\0�Qz���#َM�_1��(�t�:�c_c��\\i�K�#֮�Z�qr�{.�C嗪w)v{�<���oH���1�B0X @�.V���#]L^%��������-o����op�]����h��z���d����\Z�K)�\'=��k�RŒ�^����Y��H�	jw��P�Au5Q����7~�\"�p��g3�a��ܾ��2�;�30���9�ʮ`6�Q�(�Am������X\Z�\ZZi�\n�;�V��d}�/ัN���WEu��)�qq����C� i��B��1ߑ���<��TA�,xE�H87W?��',	'image/jpeg',	0),
(41,	'Filly 2',	'����\0JFIF\0\0H\0H\0\0��XICC_PROFILE\0\0\0HLino\0\0mntrRGB XYZ �\0\0	\0\01\0\0acspMSFT\0\0\0\0IEC sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-HP  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0cprt\0\0P\0\0\03desc\0\0�\0\0\0lwtpt\0\0�\0\0\0bkpt\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0,\0\0\0bXYZ\0\0@\0\0\0dmnd\0\0T\0\0\0pdmdd\0\0�\0\0\0�vued\0\0L\0\0\0�view\0\0�\0\0\0$lumi\0\0�\0\0\0meas\0\0\0\0\0$tech\0\00\0\0\0rTRC\0\0<\0\0gTRC\0\0<\0\0bTRC\0\0<\0\0text\0\0\0\0Copyright (c) 1998 Hewlett-Packard Company\0\0desc\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0�Q\0\0\0\0�XYZ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��desc\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0view\0\0\0\0\0��\0_.\0�\0��\0\0\\�\0\0\0XYZ \0\0\0\0\0L	V\0P\0\0\0W�meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0sig \0\0\0\0CRT curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\r%+28>ELRY`gnu|����������������&/8AKT]gqz������������\0!-8COZfr~���������� -;HUcq~���������\r+:IXgw��������\'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�\n\n\'\n=\nT\nj\n�\n�\n�\n�\n�\n�\"9Qi������*C\\u�����\r\r\r&\r@\rZ\rt\r�\r�\r�\r�\r�.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����\'Ij����4Vx���&Il����Ae����@e���� Ek���\Z\Z*\ZQ\Zw\Z�\Z�\Z�;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�\"\'\"U\"�\"�\"�#\n#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&\'&W&�&�&�\'\'I\'z\'�\'�(\r(?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�3\r3F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<\'<e<�<�=\"=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F\"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O\0OIO�O�P\'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\\V�V�WDW�W�X/X}X�Y\ZYiY�ZZVZ�Z�[E[�[�\\5\\�\\�]\']x]�^\Z^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���\n�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���\n�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8���\Z�����n��R�ĩ7�������u��\\�ЭD���-������\0�u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������\n�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s����\r����2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m����\0C\0\n\n\n\r\r��\0C		\r\r��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0�H\0\0\0��\0\0\0\0\0\0\0\0AG>g��z7��h� \0\0\0\0\0\0�<��ݑԷ�w4�n��q\0\0\0\0\0#�X��(��q�[|��ܲ�X�^���}P\0\0\0\0P���;��CZoIo�B�>/�o�{���qԻ�t��ٱ^�@\0\0\0�ۉ�B��g>����n����y�X�ќlД���::�?����\0\0�N�Ʀt�׾7N�u�t�D.�9�sS��7V3lǠz�5��Ɔ�\0\0\0Z��걋RϖFk�JKcB�uӇ�F��mo��x�j�lFŭ+]\0�1ɉ\08�3o����z4C��C��̡�W/��>�ބ���zv�fz��魯;�xJ�)�.5W�����kn��v�oFޡ�y��!��nƷ�{<�K�+M��v�Fw����t�S��D��S�z��:�S�ڼ�����j��8;�3������3���Ք\'�vv��O�����6r�R{z���:��Ø~�;O\'��?�@�U��t-޿�-�N�3�������#�9���McW�s����1L�y�i�|G<mBޛ潵���\0Xy[�u,>�BýD$\'�de�G-��F67ٜ�-�o�z!�t3���[���W�>���\0T�?7�ΏM���ݭ>C����\r�kg?�{Y��Kt�=\\^e�y��3g���w:w�����\02�O����Sl�<{V3\'	`�([�U�\"�Ӽ����[<ߙ�n6b�O��n�?G~Ԭ\0\0��^q�}=�WS����B��D��(Y�V,��l����\05ǵ�ϊ���\r�/?�i�k��7[8\0��|�A��9�![��.}��GRگ��,�2��_O���<�Z�U����va�������I��J�\Z���gƱ ���Z�WI�=	�I�?GϜܧ��S֩�Y�s_�z���U��ۅ��>#�ކ��7��S��^a����U=˜���J��ߜ�YȽG6Wn��us��\'�V{i䞋���E*�a<6�cn2�6S��c�%9��ռ������2�O�g��-�؊����d�)K�ٮG1��Ӯ�9q�؄�y��y��*���b_�Kn���7��>�������\\q+�щ�m����OE�uܣ��X\'��t$l�K!��:ʸ�c���y�6S�8����ft:�s�z�����:�=M�q���/sO���uQ	G�w�>�el��1��$�S}O1j��=�[��w^7���{���4��6���r��`96Q�����b3�5�f�c��֣Q���S��7^�X\0\0\0\08���%�dnr��v���63T��R�K~�[���P��\0\0\0\0\r<<߫�tclŶQ�t5�\r�f�gWF�X���z��@\0\0\0\0��rX[�v#e���t�Q9e{1���1��=W\\\0\0\0\0��6+�GI�8��N�S�S�V7�3n�\'�y�\0\0\0\0�!jl-�v_�:\r�nU7m{xGcoG7�5��Z�\0\0\0\0\0�^��ic����=���랾��{R��^��g\0\0\0\0\0\\�Ó�\\Gf-���:���kz�\0?`\0\0\0\0\0\0G-»|>�h�:f��\0\0\0\0\0\0\0\0\0\0\0\0��\0.\0\0\0\0\0\0\0! \"01#24$@P��\0\0���ع��G��m��ɔ�������?S]��c�Yĩ�����ܿ<���MOZ�	�!�\Z��������ȳ%uݡ+���k;VC�(��CR��)�OArǡy`�U\r)H�Q���\n$� )��#\r��X�Mmoղ����̺rE��ce��zM^`�@���\r�%����_B<s��|�@H��C$r�9�6�.dW���4G��B_�W9^�V��i�Ҳe\\��5��E��M�/,\nV9��1�{˨���H��Hp\"2J��hZ$�\Z��Q$�9�0R!AdVwvS�z�����J�-0=����t(FT�(�#�&����S�,�*��N޾CH&��u�����L��I���o>��GW�΂ڏM��0A�b1�	�\r���/��<��I����`oY.�7������0@IRd\'Q��/4�/1!�z5����O����(͇�\Zcb�Ɖ�F���^����h9c���r�|Wgg��Rw�U��������:�#������w���NU�.2d��^Z�\\����f���Fq�=��Dk��E���G�9����`ގF;)�I3�D\Z&���̫�*��Z�c~�ms���f�\Z��U��?_�-�K��rڼ��8x�.���{���r���M�#��r�:�_�!�$�Ċ�a�]��O�I+��йh��`0̙ȴl�R���f��m�}#Q�9��\\�ʹ\\���x� E�����X�\n�W�l��h�Q5:VĢ�:;}����Ď��rP�]���u���#��t�oq�,��(/�=w���&�op�To�+Ƣbwy�܏`�����&	wZ�r���\'�F��ֻ,v,Äh6��A��8q��Gw�cs�l|���0X�\"3�t���H��?\0�tv0�či k�\\�.��k\"KW���jb�6�����.(Qj��5�L��B����e~!6Ϊ�=��x�}�9cH���K�e�Z�Z���+N�\r���Rm2?vF����)��.�r�F����6&1�|p�j��3������S�\Zy��� �fk\r�J�`%U�G���;�H��D��I���D�V�lk���\ZL䋛&L�Íf4���ʨ�cF��7m]\\I�[X�۩�7,Xώ�J	���c��E��ܓr�k_��&��c$n�\\E�/��[(s�c�DD�1�t>B�\0���L��=��\n �+Gm:!�}u<j�ZM�<³f��;�M�2��,�uIQ�磮�|/�U���{���!�0?��벲7,T@7NSnO�\\�Í&C��~�Yّ�c<,ۻ����C�d�u��ث�]�rBM����1S)���R|ū��v�h���|�HM�G`��\'�w��ɭ\"<��޹	߾�wA�\"�ߵj;)���|ڊ�]�:�`�6��I\"Di=D�Lc��X$��H*�#����q;]����1A!F@�W����\\|�K���9��\0L�a�m�}Z�\0�20?�}�~���F1�g���\02\0\0\0\0\0\0\0!1 \"0A2Q#@BPaq�������\0?�F৤F����h�h���+��-y��S[�uOǾ���h��/��6��ߘP�N=�B����.�t�ꊧ�����2���+��>�Ke}����*:��;k1j2q)�\r�d���aPX�Z�{���C�eo��6�ׇ#�$�\"3�˟2�s�I��>���;����;�Z�/�.%� 9\0LퟙH�>5kS�/P�T�z�4�ݷ3Y���\0�q��a���ʂ�R�0ĭA�;�\0iS\Z�-���\0�0��P��,0�5�\'<F.�z̭ԫ��}#����a�L�\'z�IǍ.a��v����ay2��,%�1�<��aOn����nM�,N�%�*����y!�ʢ�-\0�ÙI%�Sl��:�K��3Xm>�{ψ�:m�G���U���d�[a?tv�ң^u<wdvi�_�_hL*�`p��߁8��>�iTzr�&��E�*b��FiQ��c1CH�<�Fr�Srg��M&Қߙ��=s�8��-оk���~�y|���Cm�F�L@�Q��c�_����q��0��:F�J=ګsx���,~#.�փ,3�#���.�k���}Xp�;C8I� �l&����L��T�d/�c\r����P:α�?�T������ɕ-�f�Z(�F��Qj/��u���v0Ðu&����>�x��\'��/���T�BD�Z��3M��4��h�Hw�+J}^���V�?�V&���݆�%\n�T\0A����O�eM���gT]B�b���q��1m����󝢳\'Z�Z��Ξ���ixe�#���-FV�����Ss�l*Z֘�#R7KB�j<E�*ΙGH5�en|-�ZZ= �c:aD���Z72�PŤmy��5f��*�TN����KgM}�u����D���ڔ����&���X�Xy���w�f-�k��#0�t�	yWM��-��p�5i�Q�yF�Zs­�,>�Z���\0#��c��*T���Af�l�GO�}x�0�L�b����aΏ^����+��a�������0����c��f��\"��\0.\0\0\0\0\0\0\0!1 2A\"0#@QaB3P���\0?�\0�)(��x�9Y�����ob�)5\Zj⒗c�tV���M\\��4w���J\n�^S�ģ\r^E7NVy7dU���R9-c*n��c�N�\0.)��hҥ�(���T��2�b7$U��>��q�_���aSrvܔe�$܄�\n>�Ex�7�L=:�ȭ��=��#��t�U�%\nj�l�EE8���\0e�^*/b��9=:L4-pŕ��Zu�?�I=��*��4�:�o��T?�7�ʑ�8���u����$F,�%NZ8�*ZF\"��4���J�J�0�:�����f�+.B����4��ʴU?r5k�L��eb.�#��Uh?r�?��=x��15}Z�cU{����_�����١�Z^����v�Kx�F���<L����9p��ݖ��W�Gk.[<t�Nߞ���[H���YJB}	&�&`����?��3l���Rߎ���a&�+��Rb�ŋXd�����=O�>:[���zQ���O���0R�o�0��Q#J1E��K�NWJ�Ң��3���&W�\ZJ��QԖ�u˂���?x��8�$�྽�F&)8�E\\:�R���\\\n�bj�/LJ���\r�V�0��)����%��fy)�K܅8ɪ�9��q�Uz������(������2�\'��Hf\n���%���4�����lj�̫�kx��vZd��B&����C��؈�rE$�$�ucUˣ\\MM��K�7�%����ar�S��qd��R�%tQN��;����J��آ��I$l[\'.FZ�1r�I��1<���a%��{�ʝGt<Sb��uT�Lhӓ1�.�tp#���#�yp&)	�+���(bG����#�T��rw}X�x0O۟ddE��fQ��\0\Z��&�uTy+cW���[Z����$)ƚ�s�9��(�I�\\R�;X�T|�ss{��~�e9��&^�I������Dy\"<�6N~�Q�p#���Hy���K�]#�r��{[�dK%��\r��%�lbe����UZ=cח���?��\0=\0\0\0\0\0\0\0!1\"AQa 02Bq�#R��$3@b��CPcr��S����\0\0?�Fm�e�Z5q�$��\"/�vv�G��&�1�?�.q\rh̒����f�x��V�Q���㯼w�]k����sׂ���?��E��(������\0R��x{x��>��RKSv�&���΅H��[)�6L��K��4���cOi�4�\0��p��۾w��q)��k�w\0����ڵ:	��Fq9��\"��]��1�K|�|WI+�,�W<ԩYR�z(�j��8��/���b5s���6�q\n���rr�����Z{VXZvb^eY����}��C禡���,B1-[���F�ix�]@\Z̀\n�O��b��<�(���!�j.���\ZEx#�5�ñ	kT�B\0u2-5X,L��>jf�[��fnp�Q1�:���W������.:��^,,d��7�\'5g�=�F�m��[G*��s[Ѽ�j�a|^�C	�;���4������Xuqԣ��ϴ0O�m����H�tB�WuEh�L�l��Ǚ��jQHV��Z,8�Q��z떈Da�_��0���w���S�186�T�E��w6N��K�d�R7�f�>���uk�w�P���=�!����Q�fe}R\'�xq)\"3��3BA�4J6M4��U\Z��ǫYd�8Y���G���Gx���Z������rl��^�;����C�zo;���$̸�W�8^2k�LCu\n�����t5|��wS�v���%T��_�\r_���l��>Y��w��U�q{Ɗ�!ղ�n�\"�<��|c5����,�����b�m;|���.\'�W���[����#��4Pk�BU�.W���Y��*�e���#�J��d:�~gwH��$k����)���3�2g��2!��_U��S�#�:�*�ox�@u��Zp�8W4�J�\ZƐ[���x���H�V�pTtT[�5w]�fr��:�&@s���q=Ƥ��]�]\"���F��ǯmo��� ��\ZaX���;�ax�sFuЪ�5����D�\r�	�\'�����T���x��--�Ze�@h��T(V6��o�s��4+�R6�E����ms����OQ��+��OKh�\0��4j��?r<��s�ۥ\n�E��s���9t�,�$)}eǒ�/g,��č/��&�o)���\'O�~�Ԝ�%\0sx�M��JL�O���I�hZ*�M\\u7d��T�G��-���4��Z�-�������1���W����CF��x�����A�+;�\\����T�]�{\rr�]��o)�Y�mc�5ް������+3U�*��T]NG��\'1�c� �i���{�`~뢔��I�<h��3�������뷅�A�������geC���d�U���	��Q���*��h�4��1��ⶅk��ٛ��V9Z(��YA����{��\0���V�j`ǉ��7�^T�ܚُ���d��I�u��o��F�-���ǻ�С1�&E�i2��qC�,�4]OH��s7�nk.��^BĨ�[$�#k�M��f�����_;�R�V�XZ=�B�+vFb��m$��U>W��\Z�������[�qT�;O����S�	��8�����_Z�;\n�\0Ԝ�iKZMg5��ڪ��l�?^�V��\0vf\r�#vk)�j�<9���i��kn�GY=�y���q��-�,\'�0���\"c#��<1�֔�>*��*�Fz�@F\0<��d$�%�	\r�]�?�,���vE���67[LL�\0K;Ts\n&I�i:ѥ߲l��I=\r`\rh��?��\0*\0\0\0\0\0\0!1AQaq��� 0����@��P��\0\0?!�jZ?п�x�\0b%�7�n�������G��c�6T,����ּ��Wٌ��3�K�]z����{�#��`�t�{���K�p��#[S�z�bI/lc�2Z�\0dZ���%u\n�ݎR�%I�\Z)��|����v?�h�{t�k�:�rr⁢F(�\'�M��}f$]`-�	�D$P0G��0�4�=gBv	O fc�}S�	�W��V7}G#��::<��t>|CHT�Wݵ�Z\Z;��ً�4��1�pu%���9?�Ј�k4N̶`��*�5�Q��e?�#�`S�����[}5��IJz[*橗���������[�����0�7���a�����V��+x|���3�f�#��ۓ�M�7F��J_�VԳ��D���8���%�����m*Y�\\x����C�F�\0���Fc*�\0�C��\0>v�ʰ-�T����=��H�t-�;�x�mn� ����lC~Qح!�a~��yk�?y�]ç�b����f\Z$рE��m������{��cX�v��k�R\\pR�,叓C`�#b0�V�F���N#T7֨xK�:��\0�?iq|E�ܕ��2B�m_�b�5�����!P�f��+������N���[AMr�[k\"��p�h`�*�Kc�\"�8�M.�G���cʣr��t{��$�!���Y���������,�17��_T�23*�\\~_���=@0��C}��l\Z�sP��}4�T��v�zP�=��g\'�y�\\\Z�ߧ��H9�\r/�)�1��Z*熟�����(���#�R���Ҧឱ�g�aȃ���ͩ�mS���a]j͉���#��Y`�!̳6o7��O�0�@m�lȭ8)�s>ZL7�:��>�He/��ƾ`\Z:��8�f�iOK��e\0�ٙ@4�m]�����\0#cvy�ɯ1N�F�R�As�2�\\�>	�����X��f�ZGV�Wf2e��	�bxz�k�	����\\�\0���F�ywG��^�$n���y���	^�\n/�1f�Tq4�ܖ���8��M���Y��z���v��57%�aYH�dlo1�cRr����V\'v�ɴt�]Yӂa\'��\Z)׍*j�s:�l���� �a��l�uN%+�Ҷ\"�ƹ��k7�7\0S���9U�w�q��cZ�j�:�\0]��lU��p�5_/�*ٜ\Zt�z��)s%�m��;��&�9��G+�fqt��A\r���U�\"+,JA��J���U7������7ƒ�n�\\gz���7:JL�̦�ٸ`��$��� ��,J �b\"\nWLK�MN��5�g\"����1�����\0���,�#�[��KFl�v��I�� �9V{���ɜ��*Z2��Ṛη��L��v��r�H�N�GU��`�H#��<�ì�v$�weg�Ӈ׮���Td�j��\n�1H�cr�c����QZ�:��N����b:�t6\Z@��\ZB2�at_�i����C0Q��J�\n>\0�(�/�5����#�M�ur��\Z����O��S\'#��$\'�k�5ޘ�4f5u���/:1^3���ʅ�c�z��@��S��K<�@aRF���\"G�\rA=W��6�����]��USg�^-fV#}�����z����Z��,@jH%�6׷���d��J��_y!.�5��\n%�C-��>��5�4�Y��՚��*����s����Ȗ	���-ɿ�\0��������Lٕ@��;��`T\r��|��o��ǈ0{�X3\0���^\"�%�\0�4I��;��լV#t4���U�uO��X���ᄢb�.�A\rӪ�g��%��/�7O�G�t}p�F[���D!W[K���ٖb9P`�.�/�;uW���f{��?\'�*k1�����.�+?�霒\\:餋�~����\r�a���ŏ�]\"\\\r`{��_�i���e��4h���\0\0\0\0\0\0�I$�I$�I$�I$�\Z��I$�I$�\n��I$�I\"�B�I$�I$%,{d�$�I$;���\Z��I$\nh!��I$�G�\0\0�I�\'�錕rI{2FxJFnNI����2�I$��z�/�I$�:����y$� I� )$�0M�c�$�LuAh��v��XC�	.Q�J�e\"�Ɗ�r�❁s�zR�)��${�P��^����\0�=\'QO��$�>�S���$�I$��Ѐ�$�I$�I�i$�I$����$�I$�\Z����I$�4�K��I$�@kZ25�I$�I�P�I$�I$�u�I$�I$�I$�I$��\0(\0\0\0\0\0\0\0!1AQa q�0���@���P��\0?�\0�GDy���ršRk���ĭ�W�f9e�\Z��0�d�!S�-�!�����(���>c3Ѩ`J���#�dq��l1aq�W�*�T�G9T6��l��,Y��q)��0�v؟R�R(�e�)���|E��&f+�0}d��M��K\r���*�b�&,�/1->L2����\0���q,G^�����m��^��~��f��Ͳ���p�D��X4̈�v��d!vv&��?�_�\'�S�Z�Yg\'��˘�}��@��������~�\r:���������,�a�� \0\rz�e�J�3��`N�у�[��=y̓ۻ�^���˘�{Am�|s�q��W�R=�Zw�u5U	�r�P�v|i����Y�+[�:iK�\"��8���ID3,\"��j7D.TM�y�G-����g���t�\\��f�O��\0\0��.kr��\r�#f�0�y��h�ޓ6k�ص�-|�v�3�u�R��F+��\0n\ZϟZ��([��7�pnh�S��7��<w�w�8���j�k��0�Z4@���-KԲ��I�)��Sad{|�9���3\rs,�\r�옂�P3��g�I�K39�nU�\0\n��B�䌯���\07�wD�qO7�R.�(�1��`�[������\0��m�,� �]�i�\n��)�a*��E�q�]��Jw��W/*M���qa������;J��<��\nn�c��2n(�_� #K����^2�.�a0���,ޯ�QVaZOc��ʂX�1ۈSR�yBo\0Ƅ+���X̴�b�?i^��{ƌ�!�����B�FR/(���\Z�gE��b��w�@�2�-�����F��-�9�R�P��R=(d�=L%\\���\Z��8��O=�ߨ�I��&YX�1��pB�Э\"B�:`@EW1��Kt˨A��#iW���/Ҭ�lV�ĳ���ځ�i��zf^Lj���-��ޣ�2A��w�9������0�c���K�n\"����)��	�ަ�Ga`���nj��*1$8a\\-��\0;%����	[F���������\0)\0\0\0\0\0\0\0\0!1AQ 0aq�@���P������\0?�\r�M	~}=�h���_���(n\"���{��x!��FW�S%��(t�Z�e�ᙓ�:\Zکl�A3զ\0��Q��v��%�	��2��o��cj�n#�R�T��@ƈ�\n�,�)�	�و�\rt\r-��s���A|B�v��5�2��qQ\"���d�V��	c�5\n{�z��;J]xTIY��\0�J$�����W�-C�N���v��`���ڄ��xY������\0Bi����5��e��Vf��`����9�ͥ��A��El�GӪ�㻩��#����\0�ؔo2�����r�}f�]�2����ߺ�]K����=����>ШT8 p%GS�#��pMX�838��A�X˄x~�>��e�����L\nf�?�|N��[M(\"2�Y�wP%�/r�8�����yJ��Q��,{k�*��$B^j\"�4�MG\",�V /��1�D;��};��@A��nR������[��Dɗ�-ʜ �����v�%����r��\0-����|����ec��iX��~A\nl�	0��ɩ��E�x�������7�JQ0fz�	 �<7,WM̊��2��+��S��;�\0��A�^^�qN��<���,�� .H`��!�镢S�9����\r�Ũ�ew02�)�՘DqBop���F��[���eF�DT���q]%!IjQ�P8�`�9��{�f�s,����ʪ�?��8�ƍ�%�D�Tˡ(+�f �E u�z�l�˂��M�8�0���z$K���.�6e;D����ញ�� ċ\\=ܪs\nI�p��ᨣs����a.gMŵJfJ`�6�7�F\r���-#M���������.�ʑ�L%���$�ت�m=��+�zʋ5q���B)gQ<�E3m�Qs3��t5%̫�/C\Z���Q�K�PY�Tߟ���N �m���:s���F0��ҙP&%��h���N���b;~���$�cs\"� ��&��ҕ�(0�����\0��\0*\0\0\0\0\0!1AQaq��� 0�@�����P��\0\0?����Xq.G	p�yX��\n�`��T\"2|v�\0]ě���ٳP�Q�U����aK��@�d۠��i�Q0���,�D0T(PXlA���ھ\0��5�WI�)��;��y�g���(S������Hbk�r;ԘV���Y�e�]d�R9�(p��ﶠ�b�������h��}Z���К�\n|��`��J�W:F��ź��OH�d����EH_\"�|��s�;]�qr��&�����c*dM�y�9�o�!�&�&5����߃\"/I��w��T\"�`ϐR��|��5�.#\"8�wt\0U{ڪ� 4@�O�&pd�AJ�S�w{n8�_s\Z��Ų$yw�+�u�\Z=ˁ�i�O�@P<!�A��.���+����5#P�)זێm�uGg���.8����=,��^~2��YJcB.+���:��b;Pu����� ��@_gF_�!XA�|� ��{1����Fw�n<�\0uf_\0���Db2���t���9#O���N������b��2��LmF˵0�\0h]菄���I�,����ʰ�g.W1Wg\Z3��:� ��@&��3L�yV-�^s�h�	�\Zְ���&���k~U�(�v�����c(DI���VH�j>���1C�-�=�2��a��D����\n(%�?�k\\1�y`��d�FϮ+�	ӈ�*�C��Q�oZ��+k����Ӭ}�0\"�I�ŏ����:�a��#h�C�j�=�����_�:X�}��&�����S�+k��\0؈?��	��@\"�ۉ盻Nw��N���b\0ې�\0���\r��\r<o�	�G�G\ZB �D6��U���A���?��m���@E�œ�r�M��\r�P��q����k��/��{�ni@q\\\'�M�sҶ�V���4�	,��I\n )p�\n\0�� ��M)�;J���5쏸$���m���r��{/+�h8�Y�Waw?���W���i����\0Tj��J������t\r�חY|�QD���[���\"�qO�}?S�؅���ǰw�kpֵ�;����	�hE��EM��� r��2�I���Eo�a\ny���f��/H�,B��-���\0�&%��O��]�9Ú\0��5���xإ#h<b/�R;ʾ����h����8�0��\0޽�X<\"Y���-�A���E�f��~�f:��\Z���ϗ��{�i��>S	$��SA��7���;¡��3g�8��6�0{�\r�C�>�pȰ�\0��r�@�K��(��B�A6��H��W�7��k���(_�KG�jU��q��QԞ�ń \nTԚ���UG�����o��W��p��|�{��6�W��m��C�g>�Ŧi��N�;�|��r`w�o�g�C��(��\'�1eҘ���c����Ȩ&��29�5�@��χ4̝�>q�U�\'\r{T��>?��s\"ӡ�z\\�T����Q������}\0Z�cӂ���Z�:G_A~��&�`,xf� :���)�$�.�)���;c�u�i\r\Z�|����Q����~�B�!�w�K��~E��ӫ�B��1M�/&-�\"�3\nqC��� \'7&l��G�zP���m=��p}r�Sx�lй���X�;�˛3ɼQM��\"�v�l ��LSͯ�|�-gXYi�!�$�i�\0�%(�z��ѣ�@�)h���p?�p�գ��pG��\'�2�_r~�%�D�NOi�ɉ�\0*��y�RJ^S���o����\rj�۽��p�*�>M��7j��6>N*�L�Uj��\n\nx�?`y�]� (\\E�U/8�[i���N���d���\ZO�f� j��,�=�_���-#�V�B��z󇸰C��>y�tra�h~��N_S���E\Z �/?SQ���Ы�8H)uu�ĥ=��u)2r`P���-�>r��_S.\r��9�M�^ҽ�|L�\n��p�w�^�/��p�]I��˔F-=_fZ����;��GI��E�T\\���6<U5\n���	\'s��s����/>p.��uD�E&�P�i͘AL+���\'PQ=�Y�����	���pO���2���y���d�N2�X��O9�xfÇ\0����0;������ʊ����21nDy1�F{W�ߑ�p\"��P.���\"�x*`F�-w��X?�sw���=�~A4|7�!}����H����0�;ɩH��i�E#x�al���8}�/���B ��^\Z���d^q[ʓ�\0B�w�\\F�o���}�����DDy���c�^�wIk��CB�=�5�^�Q\r@ �p}��ls�u@�W>�����6k��g�P� ��F�w���ӏ(8*��d��`��9zp�:�D.���|83��pr���D��3�&�\0��~�e79����2��_���G���\\\"r\\)xN;��E��a�t�/�^���I+xa�~�4לp�z������ �]d�������(LN� ӕ�6O���ȱ0�^/���|��z��Bϻ����g{~��\\�g����x��1�3#$��+ʺ���;�@���F�Q}���]TW^7�)Nw��w�d�\rZ7�����h3�Np8؇�ϧ��N\0���:%_E���o	����H)|�� ��4�]�|�\0Ӎy���4#x��px>K��<?�2�K�\0��=d�oxA�88�H��<��nc��lw�P�}�[���y ~p �ϟ�j|ɘA�)��m^�U�L����n��T|�	S�{��˫�\"�Bt]v8*+������\n��K\nIU���QS_\\\\;\Z�F.~������L�=��`�-s2m�a���Rb�h���3����7<���|:G����\0��?��A;i0���X�Q�<;y�i�n�(;ĥ��\0�ΜP)w����f�`�E��{����2�\"zpw�T[Z��CzA|�O��4i�>2����������t�\0���',	'image/jpeg',	0),
(51,	'Ziri',	'����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r-%%.----------------------------+--5------/+---------��\0\0�,\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\07\0\0\0\0\0\0!1AQ\"aq�2���BR���br#c��3��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0)\0\0\0\0\0\0\0\0!1AQ\"Ba#2�����\0\0\0?\0�lF;G՟*+`��D�VIh\r��V�RDl\r�ط$��\\[�EP錙Y.!Qce.Z�uD�\\bYq��,@6�� %��R3��Б#��A@AC�hd0�#	1($(�F\nDA�Z����d!�I\n�R���e��i�I�#b\\7�ZA�P�&!�	=]F	�%��9�,Prf����QG5<���vR��7\\�ΪQPn+Ue���̮�\n����4�r�^I9+$�m�5��e��ZH�}.8R��qT�(�I5���\'����J��CG+�Fvp�/�i�x���IZ���^ǿG��k��Ix��G�Q�pJq�,�P�ΜO���*f�`5�d:-��H�\"��A	�d\"A��D!�\0\r�A���D���4+��-�b�3t+B4X�b,F�e�I!��V�[%�!�v+%�!B�`2J\rκXWZ�nKM՟\'c�vG��{��{E�\"�6���=�x$|�_c��\Z�I����h�(ۮ����q:Z��k���՗apX�Nꛋ��^�>{Y��4pn�U�\r[��TIt8��n��V�<�,���\Zm���V�X%���ݨ��:u��Qq��EM���Y?��ڔiPJ����=���a�!<M7��U$���s�w�Eue�7Ш��)_���u;�bp�{�娲�(�>�,�٢��@ld�7��C��DtW�Rd40PEY4d;!��DC!�K\0PCa�KÒ�b�$V;B�\rЌV���#H���R*�+e�	$K4E\r\0y X�D-�>��#W�\0<Mro𯞾��z����%�\0$�c\'�<����ף|�$}�QW�_S�sE_]Y�X֣����n��b#BNе��Ǥe�k��7��l�4�����s��E�N!&ݒ3+OMK�lV�1�T�!U��<$�W���O#jt����_9�-�r�Z�js7���1�KE�[i�h�2}�r�S� �I�N2Vi��4ӳO�C��\0�XumL�fP�_�(��6��y�����|#/h����\'����`��t��4D0��1,Q4Fm���\Z���*AHe� Ht�a��d	P�%��,2CbX6\"1��t+��\Zh��Z,hV���[B�YbX\nG,�,_R%�7�N��8-wo�]Y����ix3�-i��pʝ�i�Zq�}�[�^���w�{+J���yu���;�:�۲���=n�\"�\'OO��^���nuyZ������K+����QU]ݳ�]�����-�6�x:R{�\'���ك��j��fغ�܇6k��V�˦����(�=��w;�W��Kx�\\����\"ᚌ%l�)��\'{{��LˣԨ��t��y��q�q5+�����\0����_���p��>����͝�#�:Ҽ�����_��;��I-�:Rα%x9���5�|#���m?��\0~��O����UӼs8O�]�2����vUO?���n��V�7~�Ե�_�k������RM��;I&Q,�B��e��܉˓\Z1\Z�C#C0X6\"CX\0�\r�2��Rİ�\nAH *\"\nAHh�ب\r�����hv-�7B�a�K�WaZ-�,\"���Q�e�v�Ju�ע�_y3�e=�d*�8��yI�u�����+�=zF��͜E���_?k�UB̢�k�}�-9utQZ��]n���p�8�7��|um)J��tb�G������R��&z>!FR�ӋVv�ɘݢ��K��^m;�9�i��H^ڵQ䮲�����t61|b�#�T��(���󥅕��V�m��}c������:�f�ɻ���lF��o��b���8z1�>�nM��6�~��Tyܭ�+����^k��-�&)��.\Z7��I%d�Gti]������nn�I�X�=����b�\0��O�����t������*]����M�Z4����rr�8�6ُ�)%����Qݜ�[����㔤�����T��xZpM3�9\\�P�\nC$jT�A�R�!�\"C$\0�`�x�b�X|��X�K�2���BX(|�(���&�a�+B4��̖HK)e��L���\r�&S��6�i�4����8J+⏪��G�H���P�\Zе����ѧ�cF>�7��qd�4�y\Zu��R�����WG%�J���O�o���\\b5ҩ\Zr�͖wi�k���r=�h�{s�ϔ����4w��)E�e��(<�]t,�5Uj~e}�\'�Qn�����O����*g��\'��|\"�����ч���J��b�v�t��ռ6�l�U{K�)��+��}��m���k��fyD���-۳�W�{����͖q�GB��$!��)?w���N��\Z�3��P�!�I�2���t�X�n~n�^��\Z��b?�K��ax�ݜؘ]�6���}���ɴ�Vcؙ�z�l�j,h�)Z�Y]�`\'k�W�}��RZC���k���N2�M�pOԺ���;%:���Omz$����/Ḩ\'$��h������[Gw�z�Z��/%�gr\"�֏P�\0S�U����E�$Q�Tz��ba��,��+r.���D?2����ľ��G�9/gBC$sa��N*Mɤ��v�䌝&\n�aRQ�B�v:Dl����**Hd�Q(�Ty�\rbXcB4\r`XC,��@�5�`��`�\0z���s�:qjʢv�M>�����+��߲H�<?V��қ����5ѧ�60���J�/SL�c,���E��k>;&L�qj���ka(�;=\\p�V��3)��ew�~�����g9ɷh%�|��uYԽ��ۦ�8��#����KR��vR�qB��f��unV���|�o��pT���!�vg�Ǟ�r;��\n���j��+�c��Jwj�r�[��5\\�_���o?��_�ͬ���m�[]e��%����е�\ZW�\"�m+��/E{k�5�85ݺp�)T˚rO���{5w�����>y�O�,��:��p��\'��RI=�Vo�y���ౣ��]������o��X.K|��)^m�it➑�Z��7��j����%�������/�����e�����pGK�7�OCr2��-�Y+��9��<��^dj4�.��W����RF-+ioBF(�2*J�������od����[��Σ�v�ޥ9�G5ƣBS��S���&��=-.��S�O$��J*2��Yr��:)���T#d�����缽6�7Ň&O��R�쫇ࣇ��gY������b�iM��r�T�!QLX�5H�$�\n�2��C����(�#���U�9KTF�*<�@�c@q4 K����)��\0���$�\0�\nE�C�\0D��_��\n��Y\'n�n��%�i5L�g��hiV�������QI�x�����kp��Rk�n^�<6*S�H;J.��j�Zj���9�WM�kG��Y񔿉q���uɿ�|��>k.��\rwqWk���թ��[��j�����ǆx��:R�G�y;{A���:���2�k�$�%�O��XN\n�J����亮��w��\Z8z���\ZK����W���Ov�IՋm��js��mK�S��9r��N��M4v��sK\r��J����1Q��-\"��_���!�_�G.0�f��.��	ƞ�I�)5����i���t1�\n��nȎ|]Ĺ(x��²F�ՙY�;Y��r�$.�v#	wx�m�N	В�;Ibpt���\Z��݋�\'9M7�T���>�������v~�0�wV{�U�4^��i��i�Js�<�>�J�����޺��{��5j�rs{�݆(���U�=���#�%���t\"��#���B���Y2AaEJ�]�!c�ȒřC���h��P-��aE*#(�Xe��#�.�G�M��B�_��,TQ`8���vKE#қ���馽V�pC����y�˞���kk�-�h�R_��ue�^z�o�*+<�C��h��f��Ÿ�\\D��=���.�oS9�1lz�Ipy�ܝ�$Q�5���\0�C�!�%���Ők�S���	#9�3��{S;p�����\0�w���V��ݶ[%薈�.�3�pwiC��)�: �f��(�1�Ie�B�_�����FQ-� \"�,Z�X��HC�`��� ��L��Lu�*���t�@�hG\0e!CEn%n$!h�#B4B�b�,�B�b�K� �k\0�4<P������IC�A���tQ|K-�|\"B�/�Kc�P�REQEq!\0��',	'image/jpeg',	1);

CREATE TABLE `tblblutdruck` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldblutdruck` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldblutdia` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldpuls` int(11) NOT NULL,
  `fldid_zeitpunkt` bigint(20) NOT NULL,
  `flddatum` date NOT NULL,
  `fldid_benutzer` bigint(20) NOT NULL,
  `flduhrzeit` time NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblblutdruck` (`fldindex`, `fldblutdruck`, `fldblutdia`, `fldpuls`, `fldid_zeitpunkt`, `flddatum`, `fldid_benutzer`, `flduhrzeit`) VALUES
(2,	'147',	'97',	80,	2,	'2015-04-29',	1,	'19:02:00'),
(3,	'123',	'92',	72,	1,	'2015-04-30',	1,	'06:00:00'),
(4,	'135',	'97',	80,	2,	'2015-04-30',	1,	'18:27:00'),
(5,	'123',	'94',	72,	1,	'2015-05-01',	1,	'05:34:00'),
(6,	'140',	'90',	76,	2,	'2015-05-01',	1,	'20:15:00'),
(7,	'134',	'93',	71,	1,	'2015-05-02',	1,	'07:13:00'),
(8,	'140',	'98',	83,	2,	'2015-05-02',	1,	'20:03:00'),
(9,	'117',	'90',	75,	1,	'2015-05-03',	1,	'06:55:00'),
(10,	'134',	'98',	72,	2,	'2015-05-03',	1,	'18:46:00'),
(11,	'135',	'97',	72,	1,	'2015-05-04',	1,	'06:14:00'),
(12,	'134',	'91',	73,	1,	'2015-05-05',	1,	'06:00:00'),
(13,	'136',	'98',	78,	2,	'2015-05-05',	1,	'18:56:00'),
(14,	'128',	'99',	74,	1,	'2015-05-06',	1,	'06:20:00'),
(15,	'150',	'100',	78,	2,	'2015-05-06',	1,	'19:00:00'),
(16,	'133',	'100',	78,	1,	'2015-05-07',	1,	'06:08:00'),
(17,	'153',	'108',	81,	2,	'2015-05-07',	1,	'19:19:00'),
(18,	'142',	'98',	86,	1,	'2015-05-08',	1,	'06:12:00'),
(19,	'156',	'111',	77,	2,	'2015-05-08',	1,	'19:12:00'),
(20,	'135',	'97',	74,	1,	'2015-05-09',	1,	'06:43:00'),
(21,	'144',	'100',	83,	2,	'2015-05-09',	1,	'19:41:00'),
(22,	'136',	'100',	78,	1,	'2015-05-10',	1,	'08:04:00'),
(23,	'144',	'94',	85,	2,	'2015-05-10',	1,	'18:34:00'),
(24,	'144',	'99',	79,	2,	'2015-05-04',	1,	'18:00:00'),
(25,	'123',	'91',	92,	1,	'2015-05-11',	1,	'06:36:00'),
(26,	'141',	'97',	83,	2,	'2015-05-11',	1,	'17:56:00'),
(27,	'128',	'94',	75,	1,	'2015-05-12',	1,	'05:47:00'),
(28,	'135',	'90',	77,	2,	'2015-05-12',	1,	'18:08:00'),
(29,	'134',	'82',	94,	1,	'2015-05-13',	1,	'06:36:00'),
(30,	'134',	'91',	79,	2,	'2015-05-13',	1,	'19:14:00'),
(31,	'131',	'93',	78,	1,	'2015-05-14',	1,	'06:56:00'),
(32,	'130',	'91',	83,	2,	'2015-05-14',	1,	'19:18:00'),
(33,	'147',	'97',	93,	1,	'2015-05-15',	1,	'07:40:00'),
(34,	'136',	'93',	85,	2,	'2015-05-15',	1,	'18:57:00'),
(35,	'117',	'86',	75,	1,	'2015-05-16',	1,	'08:07:00'),
(36,	'123',	'89',	92,	2,	'2015-05-16',	1,	'18:46:00'),
(37,	'118',	'86',	68,	1,	'2015-05-17',	1,	'06:48:00'),
(38,	'133',	'89',	82,	2,	'2015-05-17',	1,	'18:44:00'),
(39,	'121',	'87',	82,	1,	'2015-05-19',	1,	'06:04:00'),
(40,	'136',	'97',	79,	2,	'2015-05-19',	1,	'18:56:00'),
(41,	'123',	'91',	102,	1,	'2015-05-20',	1,	'06:18:00'),
(42,	'134',	'89',	79,	2,	'2015-05-20',	1,	'18:42:00'),
(43,	'120',	'88',	85,	1,	'2015-05-21',	1,	'06:39:00'),
(44,	'127',	'91',	79,	2,	'2015-05-21',	1,	'18:57:00'),
(45,	'129',	'97',	82,	1,	'2015-05-23',	1,	'06:59:00'),
(46,	'142',	'92',	92,	2,	'2015-05-23',	1,	'19:32:00'),
(47,	'123',	'97',	82,	1,	'2015-05-24',	1,	'06:52:00'),
(48,	'132',	'97',	83,	2,	'2015-05-24',	1,	'18:37:00'),
(49,	'131',	'99',	77,	1,	'2015-05-25',	1,	'06:29:00'),
(50,	'126',	'86',	86,	2,	'2015-05-25',	1,	'18:24:00'),
(51,	'129',	'89',	79,	1,	'2015-05-26',	1,	'06:01:00'),
(52,	'134',	'94',	82,	2,	'2015-05-26',	1,	'19:22:00'),
(53,	'123',	'91',	111,	1,	'2015-05-27',	1,	'06:34:00'),
(54,	'141',	'91',	82,	2,	'2015-05-27',	1,	'19:02:00'),
(55,	'130',	'89',	76,	1,	'2015-05-28',	1,	'06:18:00'),
(56,	'138',	'98',	78,	2,	'2015-05-28',	1,	'19:18:00'),
(57,	'138',	'98',	78,	1,	'2015-05-29',	1,	'06:38:00'),
(58,	'157',	'106',	82,	2,	'2015-05-29',	1,	'19:36:00'),
(59,	'126',	'91',	76,	1,	'2015-05-30',	1,	'08:42:00'),
(60,	'123',	'97',	80,	2,	'2015-05-31',	1,	'18:15:00'),
(61,	'133',	'92',	79,	1,	'2015-06-01',	1,	'05:55:00'),
(62,	'132',	'90',	71,	2,	'2015-06-02',	1,	'18:29:00'),
(63,	'119',	'90',	76,	1,	'2015-06-03',	1,	'06:11:00'),
(64,	'129',	'88',	76,	2,	'2015-06-03',	1,	'18:05:00');

CREATE TABLE `tblcomputer` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldHost` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldIPAddr` varchar(150) COLLATE utf8_bin NOT NULL,
  `fldSyncart` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldaktiv` varchar(1) COLLATE utf8_bin NOT NULL,
  `flddbname` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldusername` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldpassword` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldcloud` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `fldlocal` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `fldremotepfad` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblcomputer` (`fldIndex`, `fldHost`, `fldIPAddr`, `fldSyncart`, `fldaktiv`, `flddbname`, `fldusername`, `fldpassword`, `fldcloud`, `fldlocal`, `fldremotepfad`) VALUES
(64,	'Laptop (dbjoorgportal)',	'192.168.0.133',	'auto',	'J',	'dbjoorgportal',	'root',	'mysql',	'N',	'N',	''),
(65,	'Internetrechner',	'192.168.0.104',	'auto',	'J',	'dbWebportal',	'root',	'mysql',	'N',	'N',	''),
(72,	'Laptop',	'192.168.0.133',	'auto',	'J',	'dbWebportal',	'root',	'mysql',	'N',	'N',	''),
(82,	'Easynote (dbjoorgportal)',	'192.168.0.154',	'auto',	'J',	'dbjoorgportal',	'root',	'mysql',	'N',	'N',	''),
(91,	'Handy-Horst',	'0.0.0.0',	'auto',	'J',	'joorgsqlite.db',	'',	'',	'N',	'N',	'');

CREATE TABLE `tblconfig` (
  `fldindex` bigint(20) NOT NULL,
  `fldfeld` varchar(50) NOT NULL,
  `fldwert` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `tbldauerauftragtyp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbldauerauftragtyp` (`fldindex`, `fldbez`) VALUES
(3,	'Fremdüberweisung'),
(13,	'Dauerauftrag'),
(23,	'Einzugsermächtigung'),
(33,	'Barzahlung'),
(43,	'Überweisungsauftrag');

CREATE TABLE `tbldbsync` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddbname` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldtblname` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldtblindex` bigint(20) NOT NULL,
  `fldcompid` bigint(20) NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fldstatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `flddbsync` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'NEW',
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbldocman` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldindkat` bigint(20) NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  `fldregal` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldlink` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldind_zimmer` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbldocman` (`fldindex`, `fldindkat`, `fldbez`, `flddatum`, `fldregal`, `fldlink`, `fldind_zimmer`) VALUES
(1,	0,	'ordner 1',	'0000-00-00',	'',	'',	0),
(2,	0,	'ordner 2',	'0000-00-00',	'',	'',	0);

CREATE TABLE `tbldocman_brfdetail` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddocman_ind` bigint(20) NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbldocman_brfverkehr` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldversendet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldantwdat` date NOT NULL,
  `fldan_ind` bigint(20) NOT NULL,
  `fldstatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldfilename` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `fldparent` bigint(20) NOT NULL DEFAULT '0',
  `fldsort` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldeingetragen` date NOT NULL,
  `fldpdffilename` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbldocman_brfverkehr` (`fldindex`, `fldbez`, `fldversendet`, `fldantwdat`, `fldan_ind`, `fldstatus`, `fldfilename`, `fldparent`, `fldsort`, `fldeingetragen`, `fldpdffilename`) VALUES
(11,	'FluechtlingeInternetAG',	'0000-00-00 00:00:00',	'0000-00-00',	0,	'',	'',	0,	'',	'0000-00-00',	''),
(21,	'Einladung Januar 2016',	'2016-01-16 23:00:00',	'0000-00-00',	0,	'',	'EinladungTreffen_Jan_2016.txt',	11,	'',	'2016-01-11',	'');

CREATE TABLE `tbldocman_detail` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddocman_ind` bigint(20) NOT NULL,
  `fldsort` varchar(3) COLLATE utf8_bin NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbldocman_doc` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fld_detail` bigint(20) NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldlink` varchar(250) COLLATE utf8_bin NOT NULL,
  `flddocvon` datetime NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbldocman_liste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldindkat` bigint(20) NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  `fldregal` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldlink` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldind_zimmer` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblEinkauf_kopf` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldDatum` datetime NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblEinkauf_liste` (
  `fldIndex` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fldReihenfolge` int(11) NOT NULL,
  `fldBez` char(80) DEFAULT '0',
  `fldArtikelnr` varchar(20) NOT NULL,
  `fldTyp` varchar(5) NOT NULL,
  `fldSort` varchar(20) NOT NULL,
  `fldAbteilung` varchar(30) NOT NULL,
  `fldOrt` varchar(25) NOT NULL,
  `fldPreis` decimal(10,2) NOT NULL,
  `fldAnz` decimal(10,3) NOT NULL,
  `fldArchivDat` char(10) NOT NULL,
  `fldKonto` varchar(20) NOT NULL,
  `fldBarcode` varchar(20) NOT NULL,
  `flde01vorrat` bigint(20) NOT NULL,
  `fldStatus` varchar(10) NOT NULL DEFAULT 'offen',
  `fldEinkaufDatum` varchar(10) NOT NULL,
  `fldid_kopf` bigint(20) NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblEinkauf_liste` (`fldIndex`, `fldReihenfolge`, `fldBez`, `fldArtikelnr`, `fldTyp`, `fldSort`, `fldAbteilung`, `fldOrt`, `fldPreis`, `fldAnz`, `fldArchivDat`, `fldKonto`, `fldBarcode`, `flde01vorrat`, `fldStatus`, `fldEinkaufDatum`, `fldid_kopf`, `fldtimestamp`) VALUES
(20004,	0,	'Apfelschorle',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	0.39,	6.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20014,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20024,	0,	'Bananen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.89,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20034,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20044,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	2.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20054,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20064,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20074,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20084,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20094,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20104,	0,	'O-Saft',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	5.34,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20114,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20124,	0,	'parmesan kÃ¤se',	'',	'',	'',	'',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20134,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20144,	0,	'RapsÃ¶l',	'',	'',	'',	'',	'Aldi',	0.95,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20154,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.09,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20164,	0,	'Schlangengurke',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.30,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20174,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20184,	0,	'Spiralinudeln',	'',	'',	'',	'Nudeln',	'Aldi',	0.39,	2.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20194,	0,	'Tomaten',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20204,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20214,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-08-24',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20224,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	10.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20234,	0,	'veg. Salami',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20244,	0,	'veg. Aufschnitt nach Wahl',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20254,	0,	'Curryketchup',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20264,	0,	'Griess',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20274,	0,	'Kaffeemilch',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20284,	0,	'Shampoo fÃ¼r Frieda',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-08-24',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20294,	0,	'Dove Deo',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-08-24',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20304,	0,	'Tofu',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20314,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20324,	0,	'veg. Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20334,	0,	'veg WÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20344,	0,	'GemÃ¼se fÃ¼r Sonntag',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20354,	0,	'Gnocchi',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20364,	0,	'Pilze',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20374,	0,	'Rama cremefine zum kochen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20384,	0,	'H Milch Palette',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20394,	0,	'Essigessenz',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20404,	0,	'FrischkÃ¤se natur',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20414,	0,	'Orangenwasser',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-08-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20424,	0,	'Apfelschorle',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	0.39,	6.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20434,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20444,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20454,	0,	'Bananen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.89,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20464,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20474,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	2.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20484,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20494,	0,	'Buttermilch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.29,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20504,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20514,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20524,	0,	'Magerquark',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20534,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20544,	0,	'O-Saft',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	5.34,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20554,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20564,	0,	'parmesan kÃ¤se',	'',	'',	'',	'(ohne)',	'Kaufland',	1.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20574,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20584,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.09,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20594,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20604,	0,	'Spiralinudeln',	'',	'',	'',	'Nudeln',	'Aldi',	0.39,	2.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20614,	0,	'Toastbrot',	'',	'',	'',	'Brotwaren',	'Aldi',	0.45,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20624,	0,	'Zwiebeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.69,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20634,	0,	'KrÃ¤utersalz',	'',	'',	'',	'Salz / Mehl',	'Kaufland',	1.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20644,	0,	'Orangenwasser',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20654,	0,	'SpÃ¼lmaschinenTabs',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20664,	0,	'SEnf',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20674,	0,	'veg. Aufschnitt nach Wahl',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20684,	0,	'veg. Salami',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20694,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20704,	0,	'RÃ¤uchertofu',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20714,	0,	'MÃ¼sli ohne Rosinen ( Vollwert )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20724,	0,	'MÃ¼sli ohne Kokosflocken fÃ¼r Frieda und mich',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20734,	0,	'Family Schoko Cappucchino',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20744,	0,	'Erbsen ( Dose )',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20754,	0,	'Pommes',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20764,	0,	'frische Hefe',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20774,	0,	'Rama cremefine zum kochen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20784,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20794,	0,	'Butterbrotpapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20804,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20814,	0,	'Mehl Typ 405',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20824,	0,	'Kinderketchup',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20834,	0,	'Waschmaschinenpflege',	'',	'',	'',	'(ohne)',	'Kaufland',	1.00,	1.000,	'2013-09-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20844,	0,	'SpÃ¼lmaschinen-Pflege',	'',	'',	'',	'(ohne)',	'Kaufland',	1.00,	1.000,	'2013-09-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20854,	0,	'Einschulungspapier junge/mÃ¤dchen',	'',	'',	'',	'(ohne)',	'Kaufland',	1.00,	1.000,	'2013-09-07',	'GESCH',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20864,	0,	'Colamix',	'',	'',	'',	'(ohne)',	'Penny',	1.00,	1.000,	'2013-09-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20874,	0,	'H-Milch Palette',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20884,	0,	'Nachthosen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-11-02',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20894,	0,	'Pilze',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20904,	0,	'rote Paprika',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20914,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20924,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20934,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20944,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20954,	0,	'Buttermilch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.29,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20964,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20974,	0,	'Margarine',	'',	'',	'',	'Eierwaren',	'Aldi',	0.75,	3.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20984,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(20994,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21004,	0,	'O-Saft',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	5.34,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21014,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.09,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21024,	0,	'scharfer KÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.59,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21034,	0,	'Schlangengurke',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.30,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21044,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21054,	0,	'Toastbrot',	'',	'',	'',	'Brotwaren',	'Aldi',	0.45,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21064,	0,	'Tomaten',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21074,	0,	'Kaffee fÃ¼r Bad Neustadt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21084,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21094,	0,	'veg. Aufschnitt nach Wahl',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21104,	0,	'veg. Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21114,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21124,	0,	'HokkaidokÃ¼rbis',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-11-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21134,	0,	'Malblock ( blanko) fÃ¼r Frieda',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-11-02',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21144,	0,	'Meridol MundspÃ¼llÃ¶sung',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-11-02',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21154,	0,	'Kinderzahnpasta',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21164,	0,	'Pilze',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21174,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21184,	0,	'Frischmilch',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21194,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21204,	0,	'RapsÃ¶l',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21214,	0,	'rote Paprika',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21224,	0,	'Mehl Typ 405',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21234,	0,	'ganze Mandeln',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21244,	0,	'Puderzucker',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21254,	0,	'O Saft',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-11-16',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21264,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21274,	0,	'Kaffeebohnen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21284,	0,	'Zimt',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21294,	0,	'Anis',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21304,	0,	'Frischhaltefolie',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21314,	0,	'Butter',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21324,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21334,	0,	'SpÃ¼lmaschinen Tabs',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21344,	0,	'Kinderweihnachtsgeschenkpapier',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21354,	0,	'Apfelschorle',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	0.39,	6.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21364,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21374,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21384,	0,	'Bananen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.89,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21394,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21404,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	2.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21414,	0,	'Clementinen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.99,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21424,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'GewÃ¼rze',	'Aldi',	0.59,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21434,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21444,	0,	'Margarine',	'',	'',	'',	'Eierwaren',	'Aldi',	0.75,	3.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21454,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21464,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21474,	0,	'O-Saft',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	5.34,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21484,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21494,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21504,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.09,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21514,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21524,	0,	'Toastbrot',	'',	'',	'',	'Brotwaren',	'Aldi',	0.45,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21534,	0,	'Tomaten',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21544,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21554,	0,	'Shampoo Herbal fÃ¼r feines Haar',	'',	'',	'',	'',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21564,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21574,	0,	'veg Aufschnitt',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21584,	0,	'H Milch Palette',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21594,	0,	'Mittagessen fÃ¼r Sonntag.........',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21604,	0,	'Haferflocken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21614,	0,	'Saftorangen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21624,	0,	'loses Salz ( kein Streuer! )',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21634,	0,	'Marzipanrohmasse',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21644,	0,	'PlÃ¤tzchenschmuck ( bunte Perlen etc )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21654,	0,	'Butterbrotpapier zum abreissen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21664,	0,	'Tofu',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21674,	0,	'veg. BockwÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21684,	0,	'veg. BratwÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21694,	0,	'Himbeersirup',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21704,	0,	'Backpinsel',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21714,	0,	'gute Hausschuhe fÃ¼r Frieda GrÃ¶ÃŸe 30 ( fÃ¼r zu Hause )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-06',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21724,	0,	'Kardomon',	'',	'',	'',	'(ohne)',	'Kaufland',	1.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(21734,	0,	'LebkuchengewÃ¼rz',	'',	'',	'',	'(ohne)',	'Kaufland',	1.00,	1.000,	'2013-12-06',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31263,	0,	'Eier 6stk',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31173,	0,	'Honig',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31053,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2013-12-07',	'LEBEN',	'22112446',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31253,	0,	'Marzipanrohmasse',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31193,	0,	'Puderzucker',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31203,	0,	'Senf',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31223,	0,	'Tomatenmark',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(30993,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2013-12-07',	'LEBEN',	'22115904',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31003,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2013-12-07',	'LEBEN',	'29705108',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31153,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.39,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31073,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	0.000,	'2013-12-07',	'LEBEN',	'22131218',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31093,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2013-12-07',	'LEBEN',	'22131201',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31033,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'Gewuerze',	'Aldi',	0.59,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31113,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2013-12-07',	'LEBEN',	'22114235',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31123,	0,	'RapsÃ¶l',	'',	'',	'',	'Konserven',	'Aldi',	0.95,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31143,	0,	'Sojaschnitzel',	'',	'',	'',	'Kuehltheke',	'Aldi',	1.79,	2.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31043,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.15,	1.000,	'2013-12-07',	'LEBEN',	'22144225',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31063,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2013-12-07',	'LEBEN',	'22130112',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31133,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2013-12-07',	'LEBEN',	'22126542',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(30983,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31013,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.99,	1.000,	'2013-12-07',	'LEBEN',	'4050373133986',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31023,	0,	'Broccoli',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.95,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31083,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2013-12-07',	'LEBEN',	'4049929247550',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31103,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.69,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31163,	0,	'Weintrauben kernlos',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.49,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31243,	0,	'GeschenktÃ¼ten',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-07',	'GESCH',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31183,	0,	'KrÃ¤utersalz',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31233,	0,	'PfefferkÃ¶rner',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31213,	0,	'veg. Salami',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-07',	'LEBEN',	'',	0,	'offen',	'2013-12-07',	0,	'0000-00-00 00:00:00'),
(31274,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31284,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31294,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31304,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	2.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31314,	0,	'Broccoli',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.95,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31324,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31334,	0,	'Clementinen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.99,	1.000,	'2013-12-27',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31344,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31354,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31364,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31374,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.09,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31384,	0,	'Schlangengurke',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.30,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31394,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31404,	0,	'Toastbrot',	'',	'',	'',	'Brotwaren',	'Aldi',	0.45,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31414,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31424,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'Brotwaren',	'Kaufland',	0.00,	1.000,	'2013-12-27',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31444,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31454,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31464,	0,	'H Milch',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31474,	0,	'Kaffee',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31484,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-27',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(31494,	0,	'veg. Aufschnitt nach Wahl',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31504,	0,	'SpÃ¼lmaschinen Tabs',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2013-12-27',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31524,	0,	'Eisensaft',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-27',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31534,	0,	'KÃ¤sepizza',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2013-12-27',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31544,	0,	'hefe',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31554,	0,	'kÃ¤se fÃ¼r pizza',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31564,	0,	'ReibekÃ¤se',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31574,	0,	'Brot',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31584,	0,	'Frischmilch',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31594,	0,	'BrÃ¶tchen',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31604,	0,	'Eier',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31614,	0,	'heller Sossenbinder',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31624,	0,	'joghurt',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2013-12-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31634,	0,	'Apfelschorle',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	0.39,	6.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31644,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31654,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31664,	0,	'Bananen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.89,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31674,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	2.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31684,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31694,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31704,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31714,	0,	'losen zucker',	'',	'',	'',	'Mehl / Zucker',	'Aldi',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31724,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31734,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31744,	0,	'Miracle Whip Salatcreme',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31754,	0,	'Senf',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31764,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31774,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31784,	0,	'Silberreiniger',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31794,	0,	'Kichererbsen ( Dose)',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	2.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31804,	0,	'Petersilie',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31814,	0,	'Nachthosen',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31824,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-01-02',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31834,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31844,	0,	'Mozarella groÃŸ',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31854,	0,	'Brot',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31864,	0,	'Curryketchup',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-02',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31874,	0,	'Apfelschorle',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	0.39,	6.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31884,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31894,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31904,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31914,	0,	'Rahmspinat',	'',	'',	'',	'TiefkÃ¼hlkost',	'Aldi',	0.39,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31924,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.09,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31934,	0,	'Spiralinudeln',	'',	'',	'',	'Nudeln',	'Aldi',	0.39,	2.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31944,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'',	'REAL',	0.00,	1.000,	'2014-01-24',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31954,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31964,	0,	'KnusperstÃ¤bchen veggi',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31974,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-24',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31984,	0,	'Brokkoli',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-24',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(31994,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32004,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32014,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2014-01-24',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32024,	0,	'Zahnpasta',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-01-24',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32034,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-02-01',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32044,	0,	'Klopapier 3-4lagig',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-02-01',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32054,	0,	'Apfelschorle',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	0.39,	6.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32064,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.55,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32074,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32084,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.55,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32094,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	2.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32104,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'GewÃ¼rze',	'Aldi',	0.59,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32114,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32124,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.99,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32134,	0,	'Magerquark',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32144,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.50,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32154,	0,	'O-Saft',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	5.34,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32164,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.69,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32174,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32184,	0,	'Schlangengurke',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.30,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32194,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32204,	0,	'Spiralinudeln',	'',	'',	'',	'Nudeln',	'Aldi',	0.39,	2.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32214,	0,	'Toastbrot',	'',	'',	'',	'Brotwaren',	'Aldi',	0.45,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32224,	0,	'Tomaten',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32234,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32244,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'Brotwaren',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32254,	0,	'H Milch Palette',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32264,	0,	'Lasagneplatten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32274,	0,	'Linsen ( braun - Tellerlinsen )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32284,	0,	'Sojagranulat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32294,	0,	'Butterbrotpapier zum abreissen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32304,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.05,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32314,	0,	'ReibekÃ¤se',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32324,	0,	'Orangenwasser',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32334,	0,	'SpÃ¼lmaschinen Pulver ( statt Tabs )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32344,	0,	'Nachthosen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32354,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32364,	0,	'Taschenlampe fÃ¼r Frieda',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32374,	0,	'WattestÃ¤bchen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32384,	0,	'Fruchtjoghurt',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32394,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32404,	0,	'veg. Aufschnitte',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-02-01',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32414,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32424,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-03-08',	'LEBEN',	'22115904',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32434,	0,	'Bananen',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.89,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32444,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-03-08',	'LEBEN',	'29705108',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32454,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-03-08',	'LEBEN',	'4050373133986',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32464,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-03-08',	'LEBEN',	'22116505',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32474,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-03-08',	'LEBEN',	'22116413',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32484,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32494,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-03-08',	'LEBEN',	'22144225',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32504,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32514,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32524,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-03-08',	'LEBEN',	'22130112',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32534,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-03-08',	'LEBEN',	'22131218',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32544,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.69,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32554,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-03-08',	'LEBEN',	'22114235',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32564,	0,	'Rahmspinat',	'',	'',	'',	'Tiefkuehlkost',	'Aldi',	0.39,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32574,	0,	'RapsÃ¶l',	'',	'',	'',	'Konserven',	'Aldi',	0.95,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32584,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-03-08',	'LEBEN',	'22126542',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32594,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32604,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.49,	1.000,	'2014-03-08',	'LEBEN',	'22111326',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32614,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-03-08',	'LEBEN',	'42141167',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32624,	0,	'Duschdas Palmoliv absolute relax',	'',	'',	'',	'Koerperpflege',	'Kaufland',	1.00,	1.000,	'2014-03-08',	'PFLEG',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32634,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32644,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-03-08',	'LEBEN',	'4300175374170',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32654,	0,	'H Milch Palette',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32664,	0,	'Paprika edelsÃ¼ÃŸ',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32674,	0,	'schwarze PfefferkÃ¶rner',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32684,	0,	'Veg Aufschnitte',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32694,	0,	'veg. Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32704,	0,	'Selleriesalat',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32714,	0,	'Erdbeermilchpulver',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32724,	0,	'veg. gefÃ¼llte Schnitzel',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32734,	0,	'Kohlrabi',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32744,	0,	'Ricola Bonbons Zuckerfrei',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32754,	0,	'RÃ¤uchertofu',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32764,	0,	'Schupfnudeln',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32774,	0,	'frische Champignons',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32784,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32794,	0,	'Kaffeebohnen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-08',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(32804,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32814,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-03-15',	'LEBEN',	'22115904',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32824,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-03-15',	'LEBEN',	'29705108',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32834,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-03-15',	'LEBEN',	'22116505',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32844,	0,	'Calciumbrause',	'',	'',	'',	'Windeln',	'Aldi',	0.69,	1.000,	'2014-03-15',	'',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32854,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'Gewuerze',	'Aldi',	0.59,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32864,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-03-15',	'LEBEN',	'22116413',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32874,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-03-15',	'LEBEN',	'22144225',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32884,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32894,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-03-15',	'LEBEN',	'22112446',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32904,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-03-15',	'LEBEN',	'22130112',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32914,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-03-15',	'LEBEN',	'22131218',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32924,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-03-15',	'LEBEN',	'4049929247550',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32934,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-03-15',	'LEBEN',	'22114235',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32944,	0,	'RapsÃ¶l',	'',	'',	'',	'Konserven',	'Aldi',	0.95,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32954,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32964,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32974,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.49,	1.000,	'2014-03-15',	'LEBEN',	'22111326',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32984,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-03-15',	'LEBEN',	'22144515',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(32994,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33004,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-03-15',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33014,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'Haushalt / Putzmittel',	'Kaufland',	4.45,	1.000,	'2014-03-15',	'HAUSHALT',	'4015000019927',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33024,	0,	'Cappucchino Family Schoko',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33034,	0,	'veg Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33044,	0,	'Linsen Curry Pastete',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33054,	0,	'veg. Aufschnitt nach Wahl',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	3.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33064,	0,	'FrischkÃ¤se natur light',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33074,	0,	'Gerolsteiner Moment mit Roibuschtee',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33084,	0,	'SÃ¼ÃŸstoff',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33094,	0,	'Rote Beete im Glas',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33104,	0,	'Selleriesalat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33114,	0,	'Thymian getrocknet',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-15',	'LEBEN',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33124,	0,	'destilliertes Wasser',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-15',	'HAUSHALT',	'',	0,	'offen',	'2014-03-15',	0,	'0000-00-00 00:00:00'),
(33134,	0,	'WC Duftgel',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'HAUSHALT',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33144,	0,	'SpÃ¼lmaschinen Pulver ( statt Tabs )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'HAUSHALT',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33154,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33164,	0,	'Bananen',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.89,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33174,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-03-29',	'LEBEN',	'29705108',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33184,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-03-29',	'LEBEN',	'4050373133986',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33194,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-03-29',	'LEBEN',	'22116413',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33204,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33214,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-03-29',	'LEBEN',	'22144225',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33224,	0,	'Magerquark',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33234,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-03-29',	'LEBEN',	'22112446',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33244,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-03-29',	'LEBEN',	'22130112',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33254,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-03-29',	'LEBEN',	'22131218',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33264,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-03-29',	'LEBEN',	'4049929247550',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33274,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-03-29',	'LEBEN',	'22131201',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33284,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.69,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33294,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-03-29',	'LEBEN',	'22114235',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33304,	0,	'Rahmspinat',	'',	'',	'',	'Tiefkuehlkost',	'Aldi',	0.39,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33314,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33324,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33334,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-03-29',	'LEBEN',	'22144515',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33344,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33354,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-03-29',	'LEBEN',	'42141167',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33364,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33374,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-03-29',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33384,	0,	'Risottoreis',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33394,	0,	'rote Linsen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33404,	0,	'ReibekÃ¤se',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33414,	0,	'3 rote Paprika groÃŸ zum fÃ¼llen:-)',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33424,	0,	'roter Traubensaft',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33434,	0,	'Idealreis',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33444,	0,	'veg Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33454,	0,	'Veg Aufschnitte',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33464,	0,	'Kinderschaumbad fÃ¼r Frieda',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'PFLEG',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33474,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-03-29',	'HAUSHALT',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33484,	0,	'Curry',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33494,	0,	'schwarze PfefferkÃ¶rner',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33504,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33514,	0,	'Fruchtjoghurt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33524,	0,	'Zucchini',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33534,	0,	'Rote Beete im Glas',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33544,	0,	'Puztasalat im Glas',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-03-29',	'LEBEN',	'',	0,	'offen',	'2014-03-22',	0,	'0000-00-00 00:00:00'),
(33554,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33564,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-04-05',	'LEBEN',	'22115904',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33574,	0,	'Bananen',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.89,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33584,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-04-05',	'LEBEN',	'22116505',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33594,	0,	'Calciumbrause',	'',	'',	'',	'Windeln',	'Aldi',	0.69,	1.000,	'2014-04-05',	'',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33604,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-04-05',	'LEBEN',	'22116413',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33614,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-04-05',	'LEBEN',	'22144225',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33624,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33634,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33644,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-04-05',	'LEBEN',	'22130112',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33654,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-04-05',	'LEBEN',	'22131218',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33664,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-04-05',	'LEBEN',	'4049929247550',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33674,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-04-05',	'LEBEN',	'22131201',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33684,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-04-05',	'LEBEN',	'22114235',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33694,	0,	'Rahmspinat',	'',	'',	'',	'Tiefkuehlkost',	'Aldi',	0.39,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33704,	0,	'RapsÃ¶l',	'',	'',	'',	'Konserven',	'Aldi',	0.95,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33714,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-04-05',	'LEBEN',	'22126542',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33724,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33734,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33744,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.49,	1.000,	'2014-04-05',	'LEBEN',	'22111326',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33754,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-04-05',	'LEBEN',	'22144515',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33764,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33774,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-04-05',	'LEBEN',	'42141167',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33784,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33794,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-04-05',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33804,	0,	'Shampoo Herbal fÃ¼r feines Haar',	'',	'',	'',	'Koerperpflege',	'Kaufland',	1.00,	1.000,	'2014-04-05',	'PFLEG',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33814,	0,	'veg Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33824,	0,	'veg. Aufschnitte',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33834,	0,	'FrischkÃ¤se natur light',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33844,	0,	'Light KÃ¤se',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33854,	0,	'Rote Beete im Glas',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33864,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33874,	0,	'FrÃ¼hlingszweige fÃ¼r OsterstrauÃŸ',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-05',	'PRIVAT',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33884,	0,	'Die EiskÃ¶nigin DVD ;-)',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-05',	'KIND',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33894,	0,	'Kalkstopp Pulver fÃ¼r sie Waschmaschine',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-05',	'HAUSHALT',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33904,	0,	'KÃ¤sepizza fÃ¼r Sonntag',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33914,	0,	'Fruchtjoghurt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33924,	0,	'Toilettenpapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'HAUSHALT',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33934,	0,	'Kaffeefilter GrÃ¶ÃŸe 4',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'HAUSHALT',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33944,	0,	'Sommerleggins GrÃ¶ÃŸe 122',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'KIND',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33954,	0,	'Frische MÃ¶hren',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33964,	0,	'veg. Wiener WÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-05',	'LEBEN',	'',	0,	'offen',	'2014-04-05',	0,	'0000-00-00 00:00:00'),
(33974,	0,	'Nachthosen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'KIND',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(33984,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(33994,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-04-19',	'LEBEN',	'22115904',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34004,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-04-19',	'LEBEN',	'29705108',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34014,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-04-19',	'LEBEN',	'4050373133986',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34024,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-04-19',	'LEBEN',	'22116505',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34034,	0,	'Calciumbrause',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34044,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-04-19',	'LEBEN',	'22116413',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34054,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-04-19',	'LEBEN',	'22144225',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34064,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34074,	0,	'Magerquark',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34084,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-04-19',	'LEBEN',	'22130112',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34094,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-04-19',	'LEBEN',	'22131218',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34104,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-04-19',	'LEBEN',	'4049929247550',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34114,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-04-19',	'LEBEN',	'22131201',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34124,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.69,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34134,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-04-19',	'LEBEN',	'22114235',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34144,	0,	'Rahmspinat',	'',	'',	'',	'Tiefkuehlkost',	'Aldi',	0.39,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34154,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34164,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34174,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-04-19',	'LEBEN',	'22144515',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34184,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34194,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-04-19',	'LEBEN',	'42141167',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34204,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34214,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-04-19',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34224,	0,	'10 weiÃŸe Freilandeier fÃ¼r Ostern',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34234,	0,	'Veg Aufschnitte',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34244,	0,	'Sojawurst',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34254,	0,	'veg Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34264,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34274,	0,	'Rote Beete im Glas',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34284,	0,	'Brokkoli',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34294,	0,	'veg BratwÃ¼rste',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34304,	0,	'Kaffeemilch',	'',	'',	'',	'(ohne)',	'Aldi',	1.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34314,	0,	'Fleckenteufel Teer',	'',	'',	'',	'(ohne)',	'Kaufland',	2.00,	1.000,	'2014-04-19',	'HAUSHALT',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34324,	0,	'Fleckenteufel Speisefett',	'',	'',	'',	'(ohne)',	'Kaufland',	2.00,	1.000,	'2014-04-19',	'HAUSHALT',	'',	0,	'offen',	'2014-04-12',	0,	'0000-00-00 00:00:00'),
(34334,	0,	'FrÃ¼hlingszweige fÃ¼r Osterstrauss ( bitte unbedingt )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34344,	0,	'Die EiskÃ¶nigin DVD ;-)',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34354,	0,	'WC Reiniger',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34364,	0,	'WÃ¼rfelzucker fÃ¼r die Arbeit',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34374,	0,	'4-5 Pkg. H-Milch fÃ¼r die Arbeit',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34384,	0,	'bitte viiiiiele Ã„pfel',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-19',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34394,	0,	'Oxy Action Waschpulver gegen Flecken ( fÃ¼r hartnÃ¤ckiges )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-26',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34404,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34414,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-04-26',	'LEBEN',	'22115904',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34424,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-04-26',	'LEBEN',	'29705108',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34434,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-04-26',	'LEBEN',	'4050373133986',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34444,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-04-26',	'LEBEN',	'22116505',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34454,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-04-26',	'LEBEN',	'22116413',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34464,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-04-26',	'LEBEN',	'22144225',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34474,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34484,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-04-26',	'LEBEN',	'22130112',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34494,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-04-26',	'LEBEN',	'22131218',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34504,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-04-26',	'LEBEN',	'4049929247550',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34514,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-04-26',	'LEBEN',	'22131201',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34524,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-04-26',	'LEBEN',	'22114235',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34534,	0,	'ReibekÃ¤se',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-04-26',	'LEBEN',	'22126542',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34544,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34554,	0,	'Stilles Wasser',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	2.64,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34564,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-04-26',	'LEBEN',	'22144515',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34574,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34584,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-04-26',	'LEBEN',	'42141167',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34594,	0,	'Zwiebeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.69,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34604,	0,	'gelbe MÃ¼llsÃ¤cke',	'',	'',	'',	'Haushalt / Putzmittel',	'Kaufland',	2.49,	1.000,	'2014-04-26',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34614,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34624,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-04-26',	'LEBEN',	'4300175374170',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34634,	0,	'deutsche Erdbeeren',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34644,	0,	'frische Champignons ( schÃ¶n weiÃŸ, ansonsten braune Champignons )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34654,	0,	'Rama cremefine zum kochen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34664,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34674,	0,	'Erdbeermarmelade',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-26',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34684,	0,	'Wollwaschmittel',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-04-26',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(34694,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34704,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-05-17',	'LEBEN',	'22115904',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34714,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-05-17',	'LEBEN',	'29705108',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34724,	0,	'Broccoli',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.95,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34734,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-05-17',	'LEBEN',	'22116505',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34744,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-05-17',	'LEBEN',	'22116413',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34754,	0,	'Joghurt Natur',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.55,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34764,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-05-17',	'LEBEN',	'22144225',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34774,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34784,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-05-17',	'LEBEN',	'22112446',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34794,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-05-17',	'LEBEN',	'22130112',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34804,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-05-17',	'LEBEN',	'22131218',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34814,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-05-17',	'LEBEN',	'4049929247550',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34824,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-05-17',	'LEBEN',	'22131201',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34834,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-05-17',	'LEBEN',	'22114235',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34844,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34854,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-05-17',	'LEBEN',	'22144515',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34864,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34874,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-05-17',	'LEBEN',	'42141167',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34884,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34894,	0,	'KrÃ¤utersalz',	'',	'',	'',	'Salz / Mehl',	'Kaufland',	1.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34904,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-05-17',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34914,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'Haushalt / Putzmittel',	'Kaufland',	4.45,	1.000,	'2014-05-17',	'HAUSHALT',	'4015000019927',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34924,	0,	'deutsche Erdbeeren',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34934,	0,	'Mozarella groÃŸ',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34944,	0,	'Kohlrabi',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34954,	0,	'veg Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34964,	0,	'veg. Aufschnitte',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	100.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34974,	0,	'Kaffeebohnen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34984,	0,	'dÃ¤n. Gurkensalat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(34994,	0,	'LightkÃ¤se',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35004,	0,	'Zwieback',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35014,	0,	'Tandil Color Waschpulver',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'HAUSHALT',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35024,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'HAUSHALT',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35034,	0,	'GanzkÃ¶rperschÃ¼rze fÃ¼r Mama, die super KÃ¶chin ;-)',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'HAUSHALT',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35044,	0,	'Butterbrotpapier zum abreissen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'HAUSHALT',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35054,	0,	'saure Gurken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35064,	0,	'frische Hefe',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35074,	0,	'Onkel Alvin und das Sams von Paul Maar ( Buch Nr. 6 )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'KIND',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35084,	0,	'Mittagessen fÃ¼r Sonntag.........',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35094,	0,	'Nudeln',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35104,	0,	'Schupfnudeln',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35114,	0,	'braune Champignons',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35124,	0,	'Mehl Typ 405',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35134,	0,	'Mehl Typ 1050',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-05-17',	'LEBEN',	'',	0,	'offen',	'2014-05-03',	0,	'0000-00-00 00:00:00'),
(35144,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35154,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-06-07',	'LEBEN',	'22115904',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35164,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-06-07',	'LEBEN',	'29705108',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35174,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-06-07',	'LEBEN',	'4050373133986',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35184,	0,	'Broccoli',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.95,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35194,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-06-07',	'LEBEN',	'22116505',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35204,	0,	'Calciumbrause',	'',	'',	'',	'Windeln',	'Aldi',	0.69,	1.000,	'2014-06-07',	'',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35214,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-06-07',	'LEBEN',	'22116413',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35224,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-06-07',	'LEBEN',	'22144225',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35234,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35244,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35254,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-06-07',	'LEBEN',	'22130112',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35264,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-06-07',	'LEBEN',	'22131218',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35274,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-06-07',	'LEBEN',	'4049929247550',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35284,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-06-07',	'LEBEN',	'22131201',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35294,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-06-07',	'LEBEN',	'22114235',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35304,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35314,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.49,	1.000,	'2014-06-07',	'LEBEN',	'22111326',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35324,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-06-07',	'LEBEN',	'22144515',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35334,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35344,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-06-07',	'LEBEN',	'42141167',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35354,	0,	'gelbe MÃ¼llsÃ¤cke',	'',	'',	'',	'Haushalt / Putzmittel',	'Kaufland',	2.49,	1.000,	'2014-06-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35364,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35374,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-06-07',	'LEBEN',	'4300175374170',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35384,	0,	'HandspÃ¼lmittel',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35394,	0,	'Freilandeier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35404,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35414,	0,	'veg. WÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35424,	0,	'veg Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35434,	0,	'Veg Aufschnitte',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35444,	0,	'RotbÃ¤ckchensaft',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35454,	0,	'Gerste ( volles Korn )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35464,	0,	'Gnocchi',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35474,	0,	'RÃ¤uchertofu',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35484,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35494,	0,	'Akkus',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35504,	0,	'Kaffeebohnen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35514,	0,	'Erdbeeren 1,5kg',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35524,	0,	'Aprikosen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35534,	0,	'Birnen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35544,	0,	'MÃ¤dchen T-Shirt GrÃ¶ÃŸe 128 (KurzÃ¤rmelig )',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35554,	0,	'Sommerleggins GrÃ¶ÃŸe 128',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-07',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35564,	0,	'Vollkornmehl',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35574,	0,	'rote Paprika',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35584,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35594,	0,	'Mini Mozarella',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35604,	0,	'Naschtomaten',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-06-07',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35614,	0,	'Butterbrotpapier zum abreissen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-07',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(35624,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35634,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-06-21',	'LEBEN',	'22115904',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35644,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-06-21',	'LEBEN',	'29705108',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35654,	0,	'Broccoli',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.95,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35664,	0,	'Butter',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.19,	1.000,	'2014-06-21',	'LEBEN',	'22116505',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35674,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-06-21',	'LEBEN',	'22116413',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35684,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-06-21',	'LEBEN',	'22144225',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35694,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35704,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35714,	0,	'Milch (Frischmilch)',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.65,	1.000,	'2014-06-21',	'LEBEN',	'22130112',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35724,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-06-21',	'LEBEN',	'22131218',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35734,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-06-21',	'LEBEN',	'22131201',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35744,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-06-21',	'LEBEN',	'22114235',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35754,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35764,	0,	'Stilles Wasser',	'',	'',	'',	'GetrÃ¤nke',	'Aldi',	2.64,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35774,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-06-21',	'LEBEN',	'22144515',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35784,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35794,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-06-21',	'LEBEN',	'42141167',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35804,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35814,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-06-21',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35824,	0,	'SesamÃ¶l',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35834,	0,	'FrÃ¼chtetee ( Beutel ) mit Erdbeer',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35844,	0,	'Malblock fÃ¼r Frieda',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'KIND',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35854,	0,	'lange Kinderleggins Gr. 122/128',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-21',	'KIND',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35864,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35874,	0,	'veg. Pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	3.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35884,	0,	'Knusper BÃ¤r MÃ¼sli von Alnatura',	'',	'',	'',	'(ohne)',	'DM',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35894,	0,	'Gelierzucker 2:1',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35904,	0,	'veg. gefÃ¼llte Schnitzel',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35914,	0,	'Curry GeflÃ¼gelwurst ( veg. )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35924,	0,	'veg. BockwÃ¼rstchen ( Wienerle )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35934,	0,	'Senf',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35944,	0,	'RotbÃ¤ckchensaft',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35954,	0,	'Oxy Action Waschpulver gegen Flecken ( fÃ¼r hartnÃ¤ckiges )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'HAUSHALT',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35964,	0,	'Dove Deo',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'HAUSHALT',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35974,	0,	'Butterbrotpapier zum abreissen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'HAUSHALT',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35984,	0,	'Kinderpflaster',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'KIND',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(35994,	0,	'Tesa Film',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-21',	'HAUSHALT',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(36004,	0,	'Volvic kleine Flaschen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	6.000,	'2014-06-21',	'LEBEN',	'',	0,	'offen',	'2014-06-14',	0,	'0000-00-00 00:00:00'),
(36014,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36024,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-06-28',	'LEBEN',	'22115904',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36034,	0,	'Bananen',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.89,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36044,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-06-28',	'LEBEN',	'4050373133986',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36054,	0,	'Broccoli',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.95,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36064,	0,	'H-Milch',	'',	'',	'',	'Milchprodukte',	'Aldi',	0.59,	1.000,	'2014-06-28',	'LEBEN',	'22116413',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36074,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-06-28',	'LEBEN',	'22144225',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36084,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36094,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-06-28',	'LEBEN',	'22112446',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36104,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-06-28',	'LEBEN',	'22131218',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36114,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-06-28',	'LEBEN',	'4049929247550',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36124,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-06-28',	'LEBEN',	'22131201',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36134,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.69,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36144,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-06-28',	'LEBEN',	'22114235',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36154,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-06-28',	'LEBEN',	'22144515',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36164,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36174,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-06-28',	'LEBEN',	'42141167',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36184,	0,	'HÃ¼ttenkÃ¤se',	'',	'',	'',	'Milchprodukte',	'Kaufland',	2.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36194,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-06-28',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36204,	0,	'Vollkornnudeln',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36214,	0,	'Abrazo Reinigungspad',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'HAUSHALT',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36224,	0,	'Hafermilch Probepackung',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36234,	0,	'Wassermelone',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36244,	0,	'veg. Aufschnitt',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36254,	0,	'veg. Pasteten',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36264,	0,	'HandspÃ¼lmittel',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-28',	'HAUSHALT',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36274,	0,	'Kalkstoppulver fÃ¼r die Waschmaschine',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'HAUSHALT',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36284,	0,	'Tomaten Mozarella Salz',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36294,	0,	'Kaffeefilter GrÃ¶ÃŸe 4',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-28',	'HAUSHALT',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36304,	0,	'Kaffee',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36314,	0,	'Marzipandecke',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36324,	0,	'Selleriesalat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36334,	0,	'Peperonie Pikant im Glas',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36344,	0,	'Mittagessen fÃ¼r Sonntag.........',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-06-28',	'LEBEN',	'',	0,	'offen',	'2014-06-28',	0,	'0000-00-00 00:00:00'),
(36354,	0,	'Marzipandecke',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36364,	0,	'Zuckerrosen',	'',	'',	'',	'',	'Kaufland',	1.00,	2.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36374,	0,	'Geburtstagskerzen',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'HAUSHALT',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36384,	0,	'rosa Glitzerstreusel',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36394,	0,	'weiße Schokolade',	'',	'',	'',	'',	'Kaufland',	1.00,	5.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36404,	0,	'Sahne 200ml',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36414,	0,	'Butter 150g',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36424,	0,	'Rosinen',	'',	'',	'',	'',	'Aldi',	1.00,	2.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36434,	0,	'Malzbier',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36444,	0,	'Mehl Typ 405',	'',	'',	'',	'',	'Aldi',	0.45,	2.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36454,	0,	'Kokusmilch 200ml',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36464,	0,	'Mandeln blanchiert',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36474,	0,	'Nüsse',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36484,	0,	'Ananas',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36494,	0,	'Minitomaten',	'',	'',	'',	'',	'Aldi',	1.00,	3.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36504,	0,	'Mini-Mozarella',	'',	'',	'',	'',	'Aldi',	1.00,	3.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36514,	0,	'Tomaten',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36524,	0,	'frischer Basilikum',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36534,	0,	'Wassermelone',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36544,	0,	'Süssigkeiten in kleinen Beutel',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36554,	0,	'passierte Tomaten',	'',	'',	'',	'',	'Aldi',	0.35,	5.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36564,	0,	'Dosenmais',	'',	'',	'',	'',	'Aldi',	0.00,	3.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36574,	0,	'Schlangengurken gerade',	'',	'',	'',	'',	'Aldi',	1.00,	2.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36584,	0,	'Paprikaschoten gelb grün',	'',	'',	'',	'',	'Aldi',	1.00,	3.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36594,	0,	'Holzspiesse',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36604,	0,	'Papiertischdecke',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'HAUSHALT',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36614,	0,	'Tontöpfe',	'',	'',	'',	'',	'Kaufland',	1.00,	7.000,	'2013-07-27',	'HAUSHALT',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36624,	0,	'Sonnenblumensamen',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'GESCH',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36634,	0,	'bunte Luftballons',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'GESCH',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36644,	0,	'Luftschlangen',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'GESCH',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36654,	0,	'Kreppapier',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'GESCH',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36664,	0,	'Strohhalme',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'GESCH',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36674,	0,	'Wattebällchen',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'PFLEG',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36684,	0,	'Kartoffeln',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36694,	0,	'Äpfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36704,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2013-07-27',	'LEBEN',	'29705108',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36714,	0,	'Käseaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2013-07-27',	'LEBEN',	'22144225',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36724,	0,	'Knäckebrot',	'',	'',	'',	'Brotwaren',	'Aldi',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36734,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2013-07-27',	'LEBEN',	'22144515',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36744,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.79,	6.000,	'2013-07-27',	'LEBEN',	'42141167',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36754,	0,	'Apfelsaft',	'',	'',	'',	'',	'Aldi',	1.00,	5.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36764,	0,	'Stilles Wasser',	'',	'',	'',	'',	'Aldi',	1.00,	6.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36774,	0,	'Plastikkannen',	'',	'',	'',	'',	'Aldi',	2.00,	2.000,	'2013-07-27',	'HAUSHALT',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36784,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2013-07-27',	'LEBEN',	'22131201',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36794,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36804,	0,	'veg. Aufschnitt',	'',	'',	'',	'',	'Aldi',	1.00,	2.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36814,	0,	'veg Pastete Linsencurry',	'',	'',	'',	'',	'Aldi',	1.00,	2.000,	'2013-07-27',	'LEBEN',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36824,	0,	'Klopapier',	'',	'',	'',	'',	'Aldi',	1.00,	1.000,	'2013-07-27',	'HAUSHALT',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36834,	0,	'Tortenspitze',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2013-07-27',	'HAUSHALT',	'',	0,	'offen',	'2014-07-04',	0,	'0000-00-00 00:00:00'),
(36844,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36854,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-09-13',	'LEBEN',	'22115904',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36864,	0,	'Bauernschnitt',	'',	'',	'',	'Brotwaren',	'Aldi',	0.59,	1.000,	'2014-09-13',	'LEBEN',	'29705108',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36874,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-09-13',	'LEBEN',	'22144225',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36884,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-09-13',	'LEBEN',	'22112446',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36894,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'2014-09-13',	'LEBEN',	'4049929247550',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36904,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36914,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-09-13',	'LEBEN',	'42141167',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36924,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-09-13',	'LEBEN',	'4300175374170',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(36934,	0,	'kaesepizza',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(36944,	0,	'veganer aufschnitt',	'',	'',	'',	'(ohne)',	'Kaufland',	2.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(36954,	0,	'dinkelmilch',	'',	'',	'',	'(ohne)',	'Kaufland',	2.00,	2.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(36964,	0,	'pasteten',	'',	'',	'',	'(ohne)',	'Aldi',	2.00,	2.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(36974,	0,	'tomaten',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(36984,	0,	'karottensalat',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(36994,	0,	'brokkoli',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37004,	0,	'gewuerygurken',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37014,	0,	'wc/stein',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'HAUSHALT',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37024,	0,	'klopapier',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'HAUSHALT',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37034,	0,	'kuechentuecher',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-13',	'HAUSHALT',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37044,	0,	'hafermilch',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37054,	0,	'wassermelone',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37064,	0,	'erdbeermilchpulver',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-13',	'LEBEN',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37074,	0,	'Pfand',	'',	'',	'',	'(ohne)',	'Aldi',	0.25,	6.000,	'2014-09-13',	'PFAND',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37084,	0,	'Pfand',	'',	'',	'',	'(ohne)',	'Kaufland',	0.25,	6.000,	'2014-09-13',	'PFAND',	'',	0,	'OK',	'2014-08-02',	0,	'0000-00-00 00:00:00'),
(37094,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.55,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37104,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Penny',	0.35,	1.000,	'2014-09-26',	'LEBEN',	'22115904',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37114,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'Gewuerze',	'Penny',	0.59,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37124,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.29,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37134,	0,	'KnÃ¤ckebrot',	'',	'',	'',	'Brotwaren',	'Penny',	1.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37144,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.69,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37154,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Penny',	0.35,	1.000,	'2014-09-26',	'LEBEN',	'22114235',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37164,	0,	'RapsÃ¶l',	'',	'',	'',	'Konserven',	'Penny',	0.95,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37174,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Penny',	0.30,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37184,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Penny',	1.79,	2.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37194,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Penny',	0.49,	1.000,	'2014-09-26',	'LEBEN',	'22111326',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37204,	0,	'Stilles Wasser',	'',	'',	'',	'GetrÃ¤nke',	'Penny',	2.64,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37214,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Penny',	1.79,	1.000,	'2014-09-26',	'LEBEN',	'22144515',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37224,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37234,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Penny',	0.89,	6.000,	'2014-09-26',	'LEBEN',	'42141167',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37244,	0,	'KrÃ¤utersalz',	'',	'',	'',	'Salz / Mehl',	'Penny',	1.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37254,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Penny',	0.49,	6.000,	'2014-09-26',	'LEBEN',	'4300175374170',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37264,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'Haushalt / Putzmittel',	'Penny',	4.45,	1.000,	'2014-09-26',	'HAUSHALT',	'4015000019927',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37274,	0,	'vegane Pasteten Aldi',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	4.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37284,	0,	'vegane Salami wenn mÃ¶glich',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37294,	0,	'vegetarischen Aufschnitt fÃ¼r Horst',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37304,	0,	'HandspÃ¼lmittel',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'HAUSHALT',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37314,	0,	'groÃŸes KÃ¶rnerbrot',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37324,	0,	'Kaffeebohnen',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37334,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37344,	0,	'weiÃŸer Traubensaft fÃ¼r KÃ¼rbissuppe',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37354,	0,	'Frische MÃ¶hren',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37364,	0,	'Fladenbrot',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-19',	0,	'0000-00-00 00:00:00'),
(37374,	0,	'Malzbier',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-26',	'LEBEN',	'',	0,	'OK',	'2014-09-20',	0,	'0000-00-00 00:00:00'),
(37384,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.55,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37394,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Penny',	0.35,	1.000,	'2014-09-27',	'LEBEN',	'22115904',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37404,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.79,	1.000,	'2014-09-27',	'LEBEN',	'4050373133986',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37414,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Penny',	1.39,	1.000,	'2014-09-27',	'LEBEN',	'22144225',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37424,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.29,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37434,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Penny',	0.95,	6.000,	'2014-09-27',	'LEBEN',	'22131201',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37444,	0,	'Paprikaschoten rot',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.69,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37454,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Penny',	0.35,	1.000,	'2014-09-27',	'LEBEN',	'22114235',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37464,	0,	'RapsÃ¶l',	'',	'',	'',	'Konserven',	'Penny',	0.95,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37474,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Penny',	0.30,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37484,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Penny',	0.49,	1.000,	'2014-09-27',	'LEBEN',	'22111326',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37494,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Penny',	1.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37504,	0,	'Zwiebeln',	'',	'',	'',	'Obst / Gemuese',	'Penny',	0.69,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37514,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-09-27',	'LEBEN',	'4300175374170',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(37524,	0,	'chinakohl',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37534,	0,	'RÃ¤uchertofu',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37544,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37554,	0,	'Sesamsamen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37564,	0,	'SojafrischkÃ¤se',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37574,	0,	'SÃ¼sskartoffeln',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37584,	0,	'veg. MÃ¼sli',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37594,	0,	'veg. WÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37604,	0,	'veg. Lyoner',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37614,	0,	'Dinkelmilch',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37624,	0,	'Hafermilch',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37634,	0,	'Frosch WC Reiniger',	'',	'',	'',	'(ohne)',	'DM',	0.00,	1.000,	'2014-09-27',	'HAUSHALT',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37644,	0,	'NaturtrÃ¼ben Apfelsaft',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37654,	0,	'Kaffeemilch',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37664,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37674,	0,	'veg. BÃ¤llchen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37684,	0,	'Saftorangen',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37694,	0,	'Tofuaufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37704,	0,	'Weintrauben kernlos',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37714,	0,	'Kaffeefilter Gr 4',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'HAUSHALT',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37724,	0,	'Sojacuisine',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37734,	0,	'FlÃ¼ssig Seife',	'',	'',	'',	'(ohne)',	'DM',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37744,	0,	'Duschzeug',	'',	'',	'',	'(ohne)',	'DM',	0.00,	1.000,	'2014-09-27',	'PFLEG',	'',	0,	'offen',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37754,	0,	'Haarshampoo',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-27',	'KIND',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37764,	0,	'Limonade',	'',	'',	'',	'(ohne)',	'Penny',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(37774,	0,	'schwarze pfefferkÃ¶rner',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-09-27',	'LEBEN',	'',	0,	'OK',	'2014-09-27',	0,	'0000-00-00 00:00:00'),
(38594,	0,	'Alverde Haarshampoo von DM',	'',	'',	'',	'(ohne)',	'DM',	0.00,	1.000,	'2014-11-28',	'PFLEG',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38664,	0,	'Zahnpasta vegan',	'',	'',	'',	'(ohne)',	'DM',	0.00,	1.000,	'2014-11-28',	'PFLEG',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38704,	0,	'grÃ¼ne SmoothiewÃ¼rfel ( bei Raw Food )',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38624,	0,	'Lavera Deo Orange ( bitte bitte )',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-11-28',	'PFLEG',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38384,	0,	'Vegan Plus MÃ¼sli Beeren und FrÃ¼chte',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39184,	0,	'vegane WÃ¼rstchen',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38744,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-11-28',	'LEBEN',	'22115904',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38764,	0,	'Clementinen',	'',	'',	'',	'Brotwaren',	'Aldi',	1.99,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38804,	0,	'Multivitaminsaft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-11-28',	'LEBEN',	'22131218',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38994,	0,	'O-Saft',	'',	'',	'',	'Getraenke',	'Aldi',	0.95,	6.000,	'2014-11-28',	'LEBEN',	'22131201',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38874,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-11-28',	'LEBEN',	'42141167',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38954,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'Gewuerze',	'Kaufland',	0.59,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39024,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39004,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-11-28',	'LEBEN',	'22114235',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38784,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-11-28',	'LEBEN',	'22144225',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38854,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-11-28',	'LEBEN',	'22144515',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38914,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38934,	0,	'Bananen',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.89,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38974,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39014,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38864,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(38884,	0,	'Weintrauben kernlos',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.49,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39214,	0,	'Agavendicksaft groÃŸ',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39194,	0,	'Alsan',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39264,	0,	'Datteln ohne Stein',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39164,	0,	'Dinkelmilch',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	4.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39334,	0,	'dunkle vegane KuvertÃ¼re',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39204,	0,	'Feinkristallzucker',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39254,	0,	'ganze Mandeln blanchiert',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39134,	0,	'GebÃ¤ckschmuck',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39114,	0,	'gemahlene HaselnÃ¼sse 400g',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39104,	0,	'gemahlene Mandeln 800g',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	4.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39174,	0,	'Hafermilch',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39244,	0,	'Ingwersirup',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39344,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39094,	0,	'LebkuchengewÃ¼rz 100g',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39124,	0,	'Orangeat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39274,	0,	'Rosinen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39234,	0,	'Sojacuisine',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39294,	0,	'Sojagranulat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39304,	0,	'Sojasauce',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39284,	0,	'SpÃ¼li',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39224,	0,	'SpekulatiusgewÃ¼rz',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39144,	0,	'veganer Aufschnitt',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39154,	0,	'veganer KÃ¤se',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-11-28',	'LEBEN',	'',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39074,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-11-28',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39084,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'Brotwaren',	'Kaufland',	4.45,	1.000,	'2014-11-28',	'HAUSHALT',	'4015000019927',	0,	'offen',	'2014-11-28',	0,	'0000-00-00 00:00:00'),
(39345,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39346,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'2014-12-06',	'LEBEN',	'22115904',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39347,	0,	'Bio Kartoffeln',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.79,	1.000,	'2014-12-06',	'LEBEN',	'4050373133986',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39348,	0,	'Clementinen',	'',	'',	'',	'Obst / GemÃ¼se',	'Aldi',	1.99,	1.000,	'2014-12-06',	'HAUSHALT',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39349,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'Gewuerze',	'Aldi',	0.59,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39350,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.39,	1.000,	'2014-12-06',	'LEBEN',	'22144225',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39351,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'2014-12-06',	'LEBEN',	'22112446',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39352,	0,	'Paprikaschoten gemischt',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.69,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39353,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'2014-12-06',	'LEBEN',	'22114235',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(40021,	0,	'chetty',	'',	'',	'',	'',	'Kaufland',	1.24,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39355,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39356,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.49,	1.000,	'2014-12-06',	'LEBEN',	'22111326',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39357,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'2014-12-06',	'LEBEN',	'22144515',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39358,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39359,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'2014-12-06',	'LEBEN',	'42141167',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39360,	0,	'gelbe MÃ¼llsÃ¤cke',	'',	'',	'',	'Haushalt / Putzmittel',	'Kaufland',	2.49,	1.000,	'2014-12-06',	'HAUSHALT',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39361,	0,	'KrÃ¤utersalz',	'',	'',	'',	'Salz / Mehl',	'Kaufland',	1.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39362,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'2014-12-06',	'LEBEN',	'4300175374170',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39363,	0,	'GlÃ¼ckwunschkarte',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'GESCH',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(40020,	0,	'salsmi',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39365,	0,	'Vollkornmehl',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39366,	0,	'Agavendicksaft',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39367,	0,	'TaschentÃ¼cherboxe',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'HAUSHALT',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39368,	0,	'Willmerburger kÃ¤se',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39369,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39370,	0,	'VanillesoÃŸe',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39371,	0,	'Koffer',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'2014-12-06',	'KIND',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39372,	0,	'Apfelmus im Glas',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39373,	0,	'Tofu',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(40019,	0,	'filly',	'',	'',	'',	'',	'Kaufland',	2.99,	1.000,	'2015-06-27',	'KIND',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39375,	0,	'Paprika edelsÃ¼ÃŸ',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39376,	0,	'rosmarin',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39377,	0,	'thymian',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39378,	0,	'dinkelmilch',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	4.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39379,	0,	'hafermilch',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	2.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39380,	0,	'kokusmilch',	'',	'',	'',	'(ohne)',	'Aldi',	0.00,	1.000,	'2014-12-06',	'LEBEN',	'',	0,	'offen',	'2014-12-06',	0,	'0000-00-00 00:00:00'),
(39381,	0,	'EntlÃ¼ftungsschlÃ¼ssel',	'',	'',	'',	'(ohne)',	'Baumarkt',	0.59,	1.000,	'2015-01-05',	'HAUSHALT',	'',	0,	'offen',	'2015-01-05',	0,	'0000-00-00 00:00:00'),
(39382,	0,	'Saft',	'',	'',	'',	'(ohne)',	'Baumarkt',	1.89,	1.000,	'2015-01-05',	'LEBENHORST',	'',	0,	'offen',	'2015-01-05',	0,	'0000-00-00 00:00:00'),
(39383,	0,	'Smoothie',	'',	'',	'',	'(ohne)',	'Kiosk',	3.50,	1.000,	'2015-01-02',	'LEBEN',	'',	0,	'offen',	'2015-01-02',	0,	'0000-00-00 00:00:00'),
(40018,	0,	'tv',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2015-06-27',	'HAUSHALT',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39386,	0,	'Veg. Aufschnitt',	'',	'',	'',	'(ohne)',	'Aldi',	1.59,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39387,	0,	'Spiralinudeln',	'',	'',	'',	'(ohne)',	'Aldi',	0.49,	2.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39388,	0,	'Kaffeebohnen',	'',	'',	'',	'(ohne)',	'Aldi',	8.49,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39389,	0,	'Baguette BrÃ¶tchen',	'',	'',	'',	'(ohne)',	'Aldi',	0.35,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39390,	0,	'Kaffeemilch',	'',	'',	'',	'(ohne)',	'Aldi',	0.35,	6.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39391,	0,	'Bananen',	'',	'',	'',	'(ohne)',	'Aldi',	1.14,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39392,	0,	'Multisaft',	'',	'',	'',	'(ohne)',	'Aldi',	0.89,	6.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39393,	0,	'Orangensaft',	'',	'',	'',	'(ohne)',	'Aldi',	0.89,	6.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(40017,	0,	'smoothie',	'',	'',	'',	'',	'Aldi',	0.85,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39395,	0,	'SpÃ¼lmaschinensalz',	'',	'',	'',	'(ohne)',	'Kaufland',	0.75,	1.000,	'2015-01-10',	'HAUSHALT',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39396,	0,	'KÃ¤sepizza',	'',	'',	'',	'(ohne)',	'Kaufland',	2.45,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39397,	0,	'Veganer aufschnitt',	'',	'',	'',	'(ohne)',	'Kaufland',	1.85,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'OK',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39398,	0,	'Mandelmilch',	'',	'',	'',	'(ohne)',	'Kaufland',	2.69,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39399,	0,	'Mozarella',	'',	'',	'',	'(ohne)',	'Kaufland',	0.55,	2.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39400,	0,	'Piccolini',	'',	'',	'',	'(ohne)',	'Kaufland',	2.49,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39401,	0,	'Sojajoghurt',	'',	'',	'',	'(ohne)',	'Kaufland',	1.99,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39402,	0,	'Nachthosen',	'',	'',	'',	'(ohne)',	'Kaufland',	8.25,	1.000,	'2015-01-10',	'KIND',	'',	0,	'OK',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39403,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'(ohne)',	'Kaufland',	1.39,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'OK',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(40016,	0,	'veggihack',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39405,	0,	'Orangenwasser',	'',	'',	'',	'(ohne)',	'Kaufland',	4.44,	2.000,	'2015-01-10',	'LEBEN',	'',	0,	'OK',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39406,	0,	'SpÃ¼lmaschinen Tabs',	'',	'',	'',	'(ohne)',	'Kaufland',	2.85,	1.000,	'2015-01-10',	'LEBEN',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39407,	0,	'Filly',	'',	'',	'',	'(ohne)',	'Kaufland',	1.99,	2.000,	'2015-01-10',	'KIND',	'',	0,	'offen',	'2015-01-10',	0,	'0000-00-00 00:00:00'),
(39586,	0,	'filly',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-02-28',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39585,	0,	'rucksack',	'',	'',	'',	'',	'Aldi',	6.99,	1.000,	'2015-02-28',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39583,	0,	'esrom',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39582,	0,	'spezialsalz spÃ¼lmaschine',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-02-28',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39581,	0,	'grÃ¼nkernschrot',	'',	'',	'',	'',	'Kaufland',	2.79,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39580,	0,	'milden senf',	'',	'',	'',	'',	'Kaufland',	1.49,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39575,	0,	'veg wÃ¼rstchen',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39576,	0,	'sojajoghurt natur',	'',	'',	'',	'',	'Kaufland',	1.59,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39577,	0,	'sojamilch',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39578,	0,	'champingons',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39565,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39566,	0,	'sojaschnetzel',	'',	'',	'',	'',	'Kaufland',	1.65,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39567,	0,	'sojagranulat',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39568,	0,	'tofu',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39569,	0,	'cornflakes ungesÃ¼ÃŸt',	'',	'',	'',	'',	'Kaufland',	1.19,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39570,	0,	'rÃ¤uchertofu',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39571,	0,	'gewÃ¼rzgurken',	'',	'',	'',	'',	'Aldi',	0.99,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39572,	0,	'scharze pfefferkÃ¶rner',	'',	'',	'',	'',	'Kaufland',	0.69,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39573,	0,	'cashewkerne',	'',	'',	'',	'',	'Kaufland',	3.85,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(40015,	0,	'aufschnitt',	'',	'',	'',	'',	'Aldi',	1.39,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39515,	0,	'ZÃ¼ndhÃ¶lzer',	'',	'',	'',	'',	'Kaufland',	0.39,	1.000,	'2015-02-14',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39512,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39513,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39510,	0,	'chilischote',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39509,	0,	'Klopapier',	'',	'',	'',	'',	'Aldi',	1.95,	1.000,	'2015-02-14',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39508,	0,	'Traubenschorle',	'',	'',	'',	'',	'Aldi',	6.00,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39507,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39506,	0,	'Badeschaum',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-02-14',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40014,	0,	'apfeltasche',	'',	'',	'',	'Brotwaren',	'Aldi',	0.69,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'(ohne)',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39505,	0,	'SpÃ¼ltabs',	'',	'',	'',	'',	'Kaufland',	4.95,	1.000,	'2015-02-14',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39502,	0,	'Weintrauben',	'',	'',	'',	'',	'Aldi',	1.65,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39500,	0,	'Orangen',	'',	'',	'',	'',	'Aldi',	1.35,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39497,	0,	'BurgerbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.69,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39496,	0,	'pommessalz',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40012,	0,	'Willmersburger KÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39492,	0,	'OlivenÃ¶l',	'',	'',	'',	'',	'Aldi',	3.19,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39491,	0,	'barbecu sosse',	'',	'',	'',	'',	'Kaufland',	1.69,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39485,	0,	'KosmetiktÃ¼chet',	'',	'',	'',	'',	'Aldi',	0.59,	2.000,	'2015-02-14',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40013,	0,	'alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39481,	0,	'Sojasosse',	'',	'',	'',	'',	'Aldi',	1.19,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39501,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39493,	0,	'paprika bunt',	'',	'',	'',	'',	'Aldi',	1.29,	2.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39489,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39498,	0,	'berliner',	'',	'',	'',	'',	'Kaufland',	1.59,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39487,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39486,	0,	'Erdbeerpulver',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39488,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39499,	0,	'jodsalz',	'',	'',	'',	'',	'Kaufland',	0.89,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39480,	0,	'StreichhÃ¶lzer lang',	'',	'',	'',	'',	'Kaufland',	1.15,	1.000,	'2015-02-14',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39482,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39511,	0,	'Kartoffeln',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39503,	0,	'cashewkerne',	'',	'',	'',	'',	'Kaufland',	3.85,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39490,	0,	'pilzpastete',	'',	'',	'',	'',	'Aldi',	1.19,	2.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39495,	0,	'blattsalat',	'',	'',	'',	'',	'Aldi',	0.69,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39483,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.49,	1.000,	'2015-02-14',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39579,	0,	'spinat frisch',	'',	'',	'',	'',	'Aldi',	1.65,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40011,	0,	'veganer Aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39563,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	2.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39562,	0,	'Nachthosen',	'',	'',	'',	'',	'Kaufland',	8.25,	1.000,	'2015-02-28',	'KIND',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39561,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.89,	2.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39560,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39559,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	2.15,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39558,	0,	'paprika bunt',	'',	'',	'',	'',	'Aldi',	1.35,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39557,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39556,	0,	'Sojasosse',	'',	'',	'',	'',	'Aldi',	1.19,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39555,	0,	'Salatgurke',	'',	'',	'',	'',	'Aldi',	0.99,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39553,	0,	'Malzbier',	'',	'',	'',	'',	'Aldi',	3.09,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39552,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39587,	0,	'bounty',	'',	'',	'',	'',	'Kaufland',	2.99,	1.000,	'2015-02-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(40010,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39588,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39589,	0,	'Kartoffeln',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39590,	0,	'KosmetiktÃ¼chet',	'',	'',	'',	'',	'Aldi',	0.59,	3.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39591,	0,	'Salatgurke',	'',	'',	'',	'',	'Aldi',	0.65,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39592,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39593,	0,	'paprika bunt',	'',	'',	'',	'',	'Aldi',	1.49,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39595,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.49,	2.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39596,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'',	'Kaufland',	1.19,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39597,	0,	'SpÃ¼ltabs',	'',	'',	'',	'',	'Kaufland',	4.95,	1.000,	'2015-03-21',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39598,	0,	'Veganer Aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39599,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39600,	0,	'rosmarin',	'',	'',	'',	'',	'Kaufland',	2.69,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39601,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	1.48,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39602,	0,	'knusperstÃ¤pchen',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39603,	0,	'sojamilch',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39605,	0,	'esrom',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39606,	0,	'weisse schokoladencreme',	'',	'',	'',	'',	'Alnatura',	3.99,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39607,	0,	'lavera duschgel',	'',	'',	'',	'',	'Alnatura',	3.95,	1.000,	'2015-03-21',	'PFLEGE',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39608,	0,	'lavera deo',	'',	'',	'',	'',	'Alnatura',	7.95,	1.000,	'2015-03-21',	'PFLEGE',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39609,	0,	'frischer spinat 400g',	'',	'',	'',	'',	'Kaufland',	2.29,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39610,	0,	'deli margarine',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39611,	0,	'fencheltee',	'',	'',	'',	'',	'Kaufland',	1.69,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39612,	0,	'mÃ¼lltÃ¼ten',	'',	'',	'',	'',	'Aldi',	1.55,	2.000,	'2015-03-21',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39613,	0,	'osaft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39615,	0,	'salzstangen',	'',	'',	'',	'',	'Aldi',	0.39,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39616,	0,	'pfefferminztee',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39617,	0,	'malzbier',	'',	'',	'',	'',	'Aldi',	3.09,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39618,	0,	'gelee',	'',	'',	'',	'',	'Aldi',	0.59,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39619,	0,	'schlamge',	'',	'',	'',	'',	'Kaufland',	1.49,	1.000,	'2015-03-21',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39620,	0,	'ketchup',	'',	'',	'',	'',	'Kaufland',	2.39,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39621,	0,	'klÃ¶sschen',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39622,	0,	'chips',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-03-21',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40009,	0,	'Tomaten',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40007,	0,	'Spiralinudeln',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40008,	0,	'Paprikaschoten rot',	'',	'',	'',	'',	'Aldi',	1.29,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39623,	0,	'Bananen',	'',	'',	'',	'',	'Penny',	1.30,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40006,	0,	'Margarine',	'',	'',	'',	'',	'Kaufland',	1.39,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39625,	0,	'Ã„pfel',	'',	'',	'',	'',	'Penny',	0.99,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39626,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.85,	3.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39627,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39628,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39629,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39630,	0,	'BrÃ¶tchen',	'',	'',	'',	'',	'Penny',	0.35,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39631,	0,	'kÃ¤se',	'',	'',	'',	'',	'Penny',	1.99,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39632,	0,	'frische Pilze',	'',	'',	'',	'',	'Kaufland',	1.49,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39633,	0,	'paprika edelsÃ¼ss',	'',	'',	'',	'',	'Penny',	0.69,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39635,	0,	'tv zeitung',	'',	'',	'',	'',	'Penny',	1.00,	1.000,	'2015-03-28',	'HAUSHALT',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39636,	0,	'pizza',	'',	'',	'',	'',	'Penny',	2.90,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39637,	0,	'curcuma',	'',	'',	'',	'',	'Kaufland',	3.29,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39638,	0,	'camrnbert',	'',	'',	'',	'',	'Kaufland',	2.19,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39639,	0,	'dvd',	'',	'',	'',	'',	'Kaufland',	12.99,	1.000,	'2015-03-28',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39640,	0,	'chipd',	'',	'',	'',	'',	'Kaufland',	0.99,	2.000,	'2015-03-28',	'LEBEN_HORST',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39641,	0,	'bier',	'',	'',	'',	'',	'Kaufland',	4.92,	1.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39642,	0,	'malzbier',	'',	'',	'',	'',	'Kaufland',	0.62,	2.000,	'2015-03-28',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39643,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	1.98,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40005,	0,	'Sojaschnitzel',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39645,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39646,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39647,	0,	'Dinkelmilch',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.85,	3.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39648,	0,	'Hafermilch',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.49,	2.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39649,	0,	'Orangenwasser',	'',	'',	'',	'Brotwaren',	'Kaufland',	4.44,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39650,	0,	'Veganer Aufschnitt',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.85,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39651,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'Brotwaren',	'Kaufland',	2.22,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39652,	0,	'Toilettenpapier',	'',	'',	'',	'',	'Aldi',	1.95,	1.000,	'2015-04-04',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39653,	0,	'Kaffeefilter',	'',	'',	'',	'',	'Aldi',	0.45,	1.000,	'2015-04-04',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40004,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.39,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39655,	0,	'Marzipanostersachen fÃ¼r Orell',	'',	'',	'',	'',	'Kaufland',	0.69,	3.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39656,	0,	'Orangensaft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39657,	0,	'KrÃ¤utersalz',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39658,	0,	'Osterblumen fÃ¼r Erna und Heinz',	'',	'',	'',	'',	'Kaufland',	2.99,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39659,	0,	'Pizza',	'',	'',	'',	'',	'Aldi',	2.49,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39660,	0,	'SonntagsbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	2.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39661,	0,	'Zitronencreme',	'',	'',	'',	'',	'Kaufland',	0.98,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39662,	0,	'Milch 1/2l',	'',	'',	'',	'',	'Kaufland',	0.59,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39663,	0,	'akaziensirup',	'',	'',	'',	'',	'Kaufland',	2.65,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39665,	0,	'puderzucket',	'',	'',	'',	'',	'Aldi',	0.29,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39666,	0,	'bananensaft',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39667,	0,	'spirali',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39668,	0,	'trauben',	'',	'',	'',	'',	'Aldi',	1.85,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39669,	0,	'passirte tomaten',	'',	'',	'',	'',	'Aldi',	0.39,	2.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39670,	0,	'haferlocken',	'',	'',	'',	'',	'Kaufland',	0.39,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39671,	0,	'badeente',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-04-04',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39672,	0,	'camenbert',	'',	'',	'',	'',	'Kaufland',	1.59,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39673,	0,	'kÃ¤se',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39675,	0,	'getrÃ¤nk',	'',	'',	'',	'',	'Kaufland',	1.24,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39676,	0,	'getrÃ¤nk',	'',	'',	'',	'',	'Kaufland',	1.34,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39677,	0,	'brot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-04-04',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40002,	0,	'Ahoi Brausepulver',	'',	'',	'',	'',	'Kaufland',	0.65,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39848,	0,	'bananensaft',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-05-23',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39847,	0,	'apfeltasche',	'',	'',	'',	'',	'Aldi',	0.69,	1.000,	'2015-05-23',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39846,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39845,	0,	'Karfoffeln',	'',	'',	'',	'',	'Aldi',	2.39,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39844,	0,	'Chilischoten',	'',	'',	'',	'',	'Kaufland',	1.69,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39843,	0,	'Tomaten aus der dose',	'',	'',	'',	'',	'Aldi',	0.39,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39842,	0,	'Salatgurke',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39841,	0,	'Paprika',	'',	'',	'',	'',	'Aldi',	2.29,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39840,	0,	'Sojageschnetzeltes',	'',	'',	'',	'',	'Kaufland',	1.65,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39839,	0,	'GewÃ¼rzgurken',	'',	'',	'',	'',	'Aldi',	0.65,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39838,	0,	'Puderzucker 200g',	'',	'',	'',	'',	'Aldi',	0.29,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39837,	0,	'Plastikzitronen',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39836,	0,	'Vanillepuddingpulver',	'',	'',	'',	'',	'Kaufland',	0.79,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39835,	0,	'Apfelmus',	'',	'',	'',	'',	'Aldi',	0.49,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39834,	0,	'zartbitte schokolade vegan 400g',	'',	'',	'',	'',	'Kaufland',	1.39,	5.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39833,	0,	'200g gemahlene HaselnÃ¼sse',	'',	'',	'',	'',	'Kaufland',	3.19,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39832,	0,	'gehobelte Mandeln',	'',	'',	'',	'',	'Kaufland',	0.99,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39831,	0,	'AprikosenkonfitÃ¼re',	'',	'',	'',	'',	'Aldi',	1.49,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39830,	0,	'Cola',	'',	'',	'',	'',	'Aldi',	0.64,	6.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39829,	0,	'o-saft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39828,	0,	'Multisaft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39827,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39826,	0,	'RÃ¤uchertofu',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39825,	0,	'Blumenkohl',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39824,	0,	'Kroketten',	'',	'',	'',	'',	'Aldi',	0.99,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39823,	0,	'Nudeln penne',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39822,	0,	'Tomatenmark',	'',	'',	'',	'',	'Aldi',	0.55,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39821,	0,	'Aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39820,	0,	'Kalkstopppulver',	'',	'',	'',	'',	'Kaufland',	2.55,	1.000,	'2015-05-23',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39852,	0,	'ei',	'',	'',	'',	'',	'Kaufland',	0.98,	1.000,	'2015-05-23',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39850,	0,	'tv',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2015-05-23',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39851,	0,	'gemÃ¼sebrÃ¼he',	'',	'',	'',	'',	'Kaufland',	1.45,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39849,	0,	'pony',	'',	'',	'',	'',	'Kaufland',	2.99,	1.000,	'2015-05-23',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39717,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	2.05,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39718,	0,	'mango',	'',	'',	'',	'',	'Aldi',	1.79,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39719,	0,	'Salatgurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.49,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39720,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39721,	0,	'Traubenschorle',	'',	'',	'',	'',	'Aldi',	6.00,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39722,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.85,	4.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39723,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	2.69,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39724,	0,	'Nachthosen',	'',	'',	'',	'',	'Kaufland',	8.25,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39725,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	2.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39726,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39727,	0,	'Veganer Aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39728,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39729,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'',	'Kaufland',	1.45,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39730,	0,	'Sofix',	'',	'',	'',	'',	'Kaufland',	3.59,	1.000,	'2015-04-25',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39731,	0,	'BratwÃ¼rste vegan',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39732,	0,	'Tofu',	'',	'',	'',	'',	'Aldi',	1.85,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39733,	0,	'Sojamilch',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39734,	0,	'Mais',	'',	'',	'',	'',	'Kaufland',	1.75,	2.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39735,	0,	'Paprika',	'',	'',	'',	'',	'Aldi',	1.25,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39736,	0,	'Gnocchi',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39737,	0,	'Mehl',	'',	'',	'',	'',	'Aldi',	0.32,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39738,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39739,	0,	'SonntagsbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39740,	0,	'Nudeln',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39742,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.75,	1.000,	'2015-04-25',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39743,	0,	'Calciumbrause',	'',	'',	'',	'',	'Aldi',	0.45,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39744,	0,	'Tampons',	'',	'',	'',	'',	'Kaufland',	4.95,	1.000,	'2015-04-25',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39745,	0,	'Kaffee',	'',	'',	'',	'',	'Aldi',	8.49,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39746,	0,	'o-saft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39747,	0,	'deo',	'',	'',	'',	'',	'Kaufland',	2.95,	1.000,	'2015-04-25',	'PFLEGE',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39748,	0,	'kÃ¼sse',	'',	'',	'',	'',	'Aldi',	0.99,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39749,	0,	'aufschnitt',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39750,	0,	'hose',	'',	'',	'',	'',	'Aldi',	6.99,	1.000,	'2015-04-25',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39751,	0,	'cola',	'',	'',	'',	'',	'Aldi',	0.64,	6.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39752,	0,	'filly',	'',	'',	'',	'Brotwaren',	'Kaufland',	2.99,	1.000,	'2015-04-25',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39753,	0,	'kÃ¤se',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39754,	0,	'chips',	'',	'',	'',	'',	'Kaufland',	0.99,	2.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39755,	0,	'Malzbier',	'',	'',	'',	'(ohne)',	'Aldi',	3.09,	1.000,	'2015-04-25',	'LEBEN',	'',	0,	'OK',	'2015-04-27',	0,	'0000-00-00 00:00:00'),
(39818,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39819,	0,	'Klopapier',	'',	'',	'',	'',	'Aldi',	1.95,	1.000,	'2015-05-23',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39817,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	0.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39816,	0,	'Haferflocken',	'',	'',	'',	'',	'Aldi',	0.39,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39815,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	2.25,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39814,	0,	'Erdbeeren',	'',	'',	'',	'',	'Aldi',	2.99,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39813,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	1.52,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39812,	0,	'SonntagsbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39811,	0,	'Kaffee',	'',	'',	'',	'',	'Aldi',	8.49,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39810,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.85,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39809,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.49,	3.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39808,	0,	'Agavendicksaft',	'',	'',	'',	'',	'REWE',	0.00,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39807,	0,	'GepÃ¤ckschmuck',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39806,	0,	'Marzipandecke',	'',	'',	'',	'',	'Kaufland',	3.65,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39805,	0,	'Erdbeerkonfiture',	'',	'',	'',	'',	'Aldi',	0.89,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39804,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39803,	0,	'Apfelessig',	'',	'',	'',	'',	'Kaufland',	1.29,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39802,	0,	'Sojamilch',	'',	'',	'',	'',	'Kaufland',	1.79,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39801,	0,	'Backpulver',	'',	'',	'',	'',	'Aldi',	0.29,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39800,	0,	'Vanillezucker',	'',	'',	'',	'',	'Kaufland',	0.17,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39799,	0,	'Zucker fein',	'',	'',	'',	'',	'Aldi',	0.65,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39798,	0,	'Mehl',	'',	'',	'',	'',	'Aldi',	0.32,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39797,	0,	'Zwiebeln',	'',	'',	'',	'',	'Aldi',	1.19,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39796,	0,	'ErdnussÃ¶l',	'',	'',	'',	'',	'Kaufland',	2.79,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39795,	0,	'Toastbrot klein',	'',	'',	'',	'',	'Kaufland',	0.79,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'offen',	'',	0,	'0000-00-00 00:00:00'),
(39794,	0,	'Kichererbsen',	'',	'',	'',	'',	'Kaufland',	2.19,	1.000,	'2015-05-23',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39853,	0,	'Orangen',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39854,	0,	'paprika bunt',	'',	'',	'',	'',	'Aldi',	1.55,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39855,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	1.69,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39856,	0,	'Klopapier',	'',	'',	'',	'',	'Aldi',	1.95,	1.000,	'2015-05-30',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39857,	0,	'KosmetiktÃ¼cher',	'',	'',	'',	'',	'Aldi',	0.59,	2.000,	'2015-05-30',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39858,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39859,	0,	'Kartoffeln',	'',	'',	'',	'',	'Aldi',	2.59,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39860,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.85,	3.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39861,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.49,	3.000,	'2015-05-30',	'(ohne)',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39862,	0,	'Körnerbrot',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.19,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'2015-05-30',	0,	'0000-00-00 00:00:00'),
(39863,	0,	'Orangenwasser',	'',	'',	'',	'Brotwaren',	'Kaufland',	4.44,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39864,	0,	'Sojajoghurt',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.99,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39865,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'Brotwaren',	'Kaufland',	2.89,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39866,	0,	'pommessalz',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.89,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39867,	0,	'agavendicksaft',	'',	'',	'',	'',	'Kaufland',	2.65,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39868,	0,	'mÃ¼sli horst',	'',	'',	'',	'',	'Aldi',	1.75,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39869,	0,	'alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39871,	0,	'vitam b12',	'',	'',	'',	'',	'Kaufland',	2.95,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39872,	0,	'kaffee',	'',	'',	'',	'',	'Aldi',	6.99,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39873,	0,	'bananen',	'',	'',	'',	'',	'Aldi',	1.29,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39874,	0,	'schnitzel',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39875,	0,	'wÃ¤scheklammern',	'',	'',	'',	'',	'Kaufland',	1.49,	1.000,	'2015-05-30',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39876,	0,	'clips',	'',	'',	'',	'',	'Kaufland',	2.99,	1.000,	'2015-05-30',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39877,	0,	'o-saft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39878,	0,	'shampoo vegan',	'',	'',	'',	'',	'Kaufland',	0.00,	1.000,	'2015-05-30',	'PFLEGE',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39879,	0,	'kÃ¤sepizza',	'',	'',	'',	'',	'Kaufland',	2.45,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39880,	0,	'picco pizza',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39881,	0,	'passierte tomaten',	'',	'',	'',	'',	'Aldi',	0.39,	2.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39882,	0,	'granulat',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39883,	0,	'penne',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39884,	0,	'nachthosen',	'',	'',	'',	'',	'Kaufland',	8.25,	1.000,	'2015-05-30',	'KIND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39885,	0,	'schwip schwap',	'',	'',	'',	'',	'Penny',	5.34,	1.000,	'2015-05-30',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39886,	0,	'pfand',	'',	'',	'',	'',	'Penny',	1.50,	1.000,	'2015-05-30',	'PFAND',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39887,	0,	'tv zeitschrift',	'',	'',	'',	'',	'Penny',	1.00,	1.000,	'2015-05-30',	'HAUSHALT',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39888,	0,	'Salatgurke',	'',	'',	'',	'',	'Aldi',	0.45,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39889,	0,	'Traubenschorle',	'',	'',	'',	'',	'Aldi',	6.00,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39890,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	2.69,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39891,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39892,	0,	'Kartoffeln',	'',	'',	'',	'',	'Aldi',	2.59,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39893,	0,	'Hafermilch',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.29,	2.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39894,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.39,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39895,	0,	'Orangenwasser',	'',	'',	'',	'Brotwaren',	'Kaufland',	4.44,	2.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39896,	0,	'SpÃ¼ltabs',	'',	'',	'',	'',	'Kaufland',	3.79,	1.000,	'2015-06-13',	'HAUSHALT',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39897,	0,	'Veganer Aufschnitt',	'',	'',	'',	'Brotwaren',	'Kaufland',	1.85,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39898,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'Brotwaren',	'Kaufland',	2.89,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39899,	0,	'alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39900,	0,	'mandel blÃ¤tter',	'',	'',	'',	'',	'Kaufland',	1.29,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39901,	0,	'tampons',	'',	'',	'',	'',	'Kaufland',	4.45,	1.000,	'2015-06-13',	'PFLEGE',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39902,	0,	'sojamilch',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39903,	0,	'penne',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39904,	0,	'ketchup',	'',	'',	'',	'',	'Aldi',	0.99,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39905,	0,	'gnocci',	'',	'',	'',	'',	'Aldi',	0.75,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39906,	0,	'handspuÃ¼lmittel',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-06-13',	'HAUSHALT',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39907,	0,	'kÃ¼chentÃ¼cher',	'',	'',	'',	'',	'Kaufland',	2.45,	1.000,	'2015-06-13',	'HAUSHALT',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39908,	0,	'multidaft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39909,	0,	'osaft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39910,	0,	'btezel',	'',	'',	'',	'',	'Aldi',	0.29,	1.000,	'2015-06-13',	'KIND',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39911,	0,	'kirschen',	'',	'',	'',	'',	'Aldi',	2.99,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39912,	0,	'rosinen',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39913,	0,	'cashrw',	'',	'',	'',	'',	'Aldi',	2.29,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39914,	0,	'seepferd',	'',	'',	'',	'',	'Kaufland',	3.49,	1.000,	'2015-06-13',	'KIND',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39915,	0,	'tv',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2015-06-13',	'HAUSHALT',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39916,	0,	'aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39917,	0,	'kaktuseid',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'OK',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39918,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	0.81,	1.000,	'2015-06-13',	'LEBEN',	'',	0,	'offen',	'2015-06-13',	0,	'0000-00-00 00:00:00'),
(39919,	0,	'Traubenschorle',	'',	'',	'',	'',	'Aldi',	6.00,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39920,	0,	'Weintrauben',	'',	'',	'',	'',	'Aldi',	2.55,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39921,	0,	'paprika bunt',	'',	'',	'',	'',	'Aldi',	1.35,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39922,	0,	'Ã„pfel',	'',	'',	'',	'',	'Aldi',	2.69,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39923,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39924,	0,	'Kartoffeln',	'',	'',	'',	'',	'Aldi',	2.59,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39925,	0,	'Malzbier',	'',	'',	'',	'',	'Aldi',	3.09,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39926,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.85,	3.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39927,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.49,	2.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39928,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39929,	0,	'Nachthosen',	'',	'',	'',	'',	'Kaufland',	8.25,	1.000,	'2015-06-20',	'KIND',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39930,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39931,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39932,	0,	'Veganer Aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39933,	0,	'Wilmersburger kÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39934,	0,	'jodsalz',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39935,	0,	'alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39936,	0,	'soja cuisine',	'',	'',	'',	'',	'Kaufland',	0.99,	2.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39937,	0,	'sojamilch',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39938,	0,	'agavendicksaft',	'',	'',	'',	'',	'Kaufland',	2.65,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39939,	0,	'rÃ¤uchertofu',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39940,	0,	'spÃ¼lmascinensalz',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39941,	0,	'rosinen',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39942,	0,	'haferflocken',	'',	'',	'',	'',	'Aldi',	0.39,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39943,	0,	'maisdose',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39944,	0,	'kidneybohnen',	'',	'',	'',	'',	'Aldi',	0.45,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39945,	0,	'kapern',	'',	'',	'',	'',	'Kaufland',	0.98,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39946,	0,	'kokosmilch',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39947,	0,	'gemÃ¼sebrÃ¼he',	'',	'',	'',	'',	'Kaufland',	1.45,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39948,	0,	'bier',	'',	'',	'',	'',	'Aldi',	3.49,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39949,	0,	'speisestÃ¤rke',	'',	'',	'',	'',	'Kaufland',	0.55,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39950,	0,	'bananen',	'',	'',	'',	'',	'Aldi',	1.30,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39951,	0,	'mars',	'',	'',	'',	'Brotwaren',	'Kaufland',	2.99,	1.000,	'2015-06-20',	'GESCH',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39952,	0,	'sojasosse',	'',	'',	'',	'',	'Kaufland',	1.54,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39953,	0,	'paprika edel',	'',	'',	'',	'',	'Kaufland',	3.79,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39954,	0,	'dino',	'',	'',	'',	'',	'Kaufland',	2.50,	1.000,	'2015-06-20',	'KIND',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39955,	0,	'frikafell',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'offen',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39956,	0,	'csmentbert',	'',	'',	'',	'',	'Kaufland',	1.59,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(39957,	0,	'cola',	'',	'',	'',	'',	'Kaufland',	14.70,	1.000,	'2015-06-20',	'LEBEN',	'',	0,	'OK',	'2015-06-20',	0,	'0000-00-00 00:00:00'),
(40000,	0,	'Agavendicksaft',	'',	'',	'',	'',	'Kaufland',	2.65,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39998,	0,	'GemÃ¼se fÃ¼r Sonntag',	'',	'',	'',	'',	'Aldi',	0.69,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39999,	0,	'Kalkstopp fÃ¼r die Waschmaschine',	'',	'',	'',	'',	'Kaufland',	2.25,	1.000,	'2015-06-27',	'HAUSHALT',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39997,	0,	'TiefkÃ¼hlpommes',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39993,	0,	'Traubenschorle',	'',	'',	'',	'',	'Aldi',	1.00,	6.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39994,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39995,	0,	'Hafermilch',	'',	'',	'',	'',	'Kaufland',	1.49,	4.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39996,	0,	'Sojamilch Alpro',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(40001,	0,	'KÃ¼chentÃ¼cher',	'',	'',	'',	'',	'Kaufland',	2.45,	1.000,	'2015-06-27',	'HAUSHALT',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39992,	0,	'Butterbrotpapier',	'',	'',	'',	'',	'Kaufland',	0.75,	2.000,	'2015-06-27',	'HAUSHALT',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39990,	0,	'vegane knusper',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(39991,	0,	'KÃ¶rnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'2015-06-27',	0,	'0000-00-00 00:00:00'),
(40003,	0,	'Tofuaufschnitt',	'',	'',	'',	'',	'Aldi',	1.85,	3.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39989,	0,	'KÃ¤seaufschnitt',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39987,	0,	'Bio Kartoffeln',	'',	'',	'',	'',	'Aldi',	2.49,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39988,	0,	'Calciumbrause',	'',	'',	'',	'',	'Aldi',	0.45,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39986,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	1.37,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39984,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'',	'Aldi',	2.25,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(39985,	0,	'Baguette-BrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-06-27',	'LEBEN',	'',	0,	'OK',	'',	0,	'0000-00-00 00:00:00'),
(40023,	0,	'osaft frisch',	'',	'',	'',	'',	'Penny',	1.45,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40024,	0,	'osaft',	'',	'',	'',	'',	'Penny',	0.79,	2.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40025,	0,	'apfelmus',	'',	'',	'',	'',	'Penny',	0.49,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40026,	0,	'spÃ¤tzle',	'',	'',	'',	'',	'Penny',	0.69,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40027,	0,	'pilze',	'',	'',	'',	'',	'Penny',	1.29,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40028,	0,	'kugelschreiber',	'',	'',	'',	'',	'Penny',	0.00,	1.000,	'2015-08-04',	'HAUSHALT',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40029,	0,	'Malzbier',	'',	'',	'',	'',	'Penny',	0.50,	10.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40030,	0,	'camenbert',	'',	'',	'',	'',	'Penny',	1.05,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40031,	0,	'esrom',	'',	'',	'',	'',	'Penny',	1.59,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40032,	0,	'pizza',	'',	'',	'',	'',	'Penny',	1.99,	1.000,	'2015-08-04',	'LEBEN',	'',	0,	'OK',	'2015-08-04',	0,	'0000-00-00 00:00:00'),
(40104,	0,	'Butterbrotspapier',	'',	'',	'',	'',	'Kaufland',	0.69,	2.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40103,	0,	'Weltmeister Brot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40102,	0,	'Agatine',	'',	'',	'',	'',	'Kaufland',	0.95,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40101,	0,	'Sojamilch',	'',	'',	'',	'',	'Kaufland',	1.79,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40100,	0,	'Agavendicksaft',	'',	'',	'',	'',	'Kaufland',	2.65,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40099,	0,	'Pastete',	'',	'',	'',	'',	'Aldi',	1.19,	3.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40098,	0,	'Plattpfirsiche',	'',	'',	'',	'',	'Aldi',	1.15,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40097,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	1.09,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40096,	0,	'Stilles Wasser',	'',	'',	'',	'',	'Aldi',	0.44,	6.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40095,	0,	'O-Saft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40094,	0,	'Multivitaminsaft',	'',	'',	'',	'',	'Aldi',	0.89,	6.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40093,	0,	'ÃƒÂ„pfel Braeburn',	'',	'',	'',	'',	'Aldi',	2.09,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40092,	0,	'Haferflocken',	'',	'',	'',	'',	'Aldi',	0.39,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40091,	0,	'Aufschnitt',	'',	'',	'',	'',	'Alnatura',	2.49,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40090,	0,	'AufbackbrÃ¶tchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40089,	0,	'Hanfsamen',	'',	'',	'',	'',	'Alnatura',	2.69,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40088,	0,	'Pennenudeln',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40087,	0,	'Sojagranulat',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40086,	0,	'OlivenÃ¶l',	'',	'',	'',	'',	'Aldi',	3.19,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40085,	0,	'schwarze Oliven',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40084,	0,	'Wassermelone',	'',	'',	'',	'',	'Kaufland',	0.79,	3.026,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40083,	0,	'Schlangengurke',	'',	'',	'',	'',	'Kaufland',	0.69,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40082,	0,	'Tomaten',	'',	'',	'',	'',	'Aldi',	1.45,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40081,	0,	'Chicoree',	'',	'',	'',	'',	'Kaufland',	1.29,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40080,	0,	'Zitronenschale gerieben',	'',	'',	'',	'',	'Kaufland',	0.49,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40079,	0,	'Tofu',	'',	'',	'',	'',	'Aldi',	1.85,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40078,	0,	'Schnittlauch',	'',	'',	'',	'',	'Kaufland',	1.19,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40077,	0,	'weisse Bohnen Dose',	'',	'',	'',	'',	'Kaufland',	1.29,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40076,	0,	'KrÃ¤uterbutter',	'',	'',	'',	'',	'Aldi',	0.85,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40075,	0,	'Fladenbrot',	'',	'',	'',	'',	'Kaufland',	0.85,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40074,	0,	'Sofix fÃ¼r alle BÃ¶den',	'',	'',	'',	'',	'Kaufland',	3.59,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40073,	0,	'Ceraclean',	'',	'',	'',	'',	'Kaufland',	2.75,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40072,	0,	'Ceranfeldklingen',	'',	'',	'',	'',	'Kaufland',	1.89,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40071,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Alnatura',	1.85,	5.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40070,	0,	'KÃ¼chenrollen',	'',	'',	'',	'',	'Kaufland',	2.25,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40105,	0,	'Mini-Chorizo',	'',	'',	'',	'',	'Alnatura',	1.19,	2.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40106,	0,	'Ginger Ale',	'',	'',	'',	'',	'Aldi',	2.89,	2.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-09',	0,	'0000-00-00 00:00:00'),
(40107,	0,	'Fassbrause',	'',	'',	'',	'',	'Aldi',	3.49,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-09',	0,	'0000-00-00 00:00:00'),
(40108,	0,	'MÃ¼llbeutel',	'',	'',	'',	'',	'Aldi',	0.55,	2.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40109,	0,	'Moselwein',	'',	'',	'',	'',	'Aldi',	2.39,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40110,	0,	'Laugenbrezel',	'',	'',	'',	'',	'Aldi',	0.29,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40111,	0,	'Bananensaft',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40112,	0,	'Colorwaschmittel',	'',	'',	'',	'',	'Aldi',	3.59,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40113,	0,	'Toilettenpapier',	'',	'',	'',	'',	'Aldi',	1.95,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40114,	0,	'Batterien 4er-Set',	'',	'',	'',	'',	'Aldi',	1.59,	2.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40115,	0,	'Veganer Paprika Aufschnitt',	'',	'',	'',	'',	'Kaufland',	1.85,	1.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40116,	0,	'Wilmersburger KÃ¤se',	'',	'',	'',	'',	'Kaufland',	2.89,	2.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40117,	0,	'Treteimer 5 Liter',	'',	'',	'',	'',	'Kaufland',	7.99,	1.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40118,	0,	'Sojajoghurt',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-08-08',	'LEBEN',	'',	0,	'OK',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40119,	0,	'Leergut',	'',	'',	'',	'',	'Kaufland',	-5.35,	1.000,	'2015-08-08',	'PFAND',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40120,	0,	'Batterien 9 Volt',	'',	'',	'',	'',	'Kaufland',	0.80,	2.000,	'2015-08-08',	'HAUSHALT',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40121,	0,	'Filly',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-08-08',	'KIND',	'',	0,	'offen',	'2015-08-08',	0,	'0000-00-00 00:00:00'),
(40122,	0,	'Zahnseide',	'',	'',	'',	'',	'Kaufland',	1.35,	1.000,	'2015-08-29',	'KIND',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40123,	0,	'Pasta u. Spätzlemehl',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40124,	0,	'Schinkenwurst',	'',	'',	'',	'',	'Kaufland',	1.99,	2.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40125,	0,	'Äpfel',	'',	'',	'',	'',	'Aldi',	1.79,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40126,	0,	'Sonntagsbrötchen',	'',	'',	'',	'',	'Aldi',	0.79,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40127,	0,	'Ginger Ale',	'',	'',	'',	'',	'Aldi',	2.89,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40128,	0,	'Pennenudeln',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40129,	0,	'Körnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40130,	0,	'Hafermilch',	'',	'',	'',	'',	'REWE',	1.39,	2.000,	'2015-08-29',	'LEBEN',	'',	0,	'offen',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40131,	0,	'Smacks',	'',	'',	'',	'',	'Aldi',	1.89,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40132,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40133,	0,	'Esrom',	'',	'',	'',	'',	'Aldi',	1.59,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40134,	0,	'passierte Tomaten',	'',	'',	'',	'',	'Aldi',	0.39,	3.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40135,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	1.16,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40136,	0,	'Malzbier',	'',	'',	'',	'',	'Aldi',	3.09,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40137,	0,	'Chips',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40138,	0,	'Dip',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40139,	0,	'reibekäse',	'',	'',	'',	'',	'Aldi',	1.29,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40140,	0,	'pizza',	'',	'',	'',	'',	'Aldi',	0.69,	1.000,	'2015-08-29',	'KIND',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40141,	0,	'smoothie',	'',	'',	'',	'',	'Aldi',	0.85,	1.000,	'2015-08-29',	'KIND',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40142,	0,	'filly',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-08-29',	'KIND',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40143,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'OK',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40144,	0,	'Pfand',	'',	'',	'',	'',	'REWE',	0.25,	1.000,	'2015-08-29',	'PFAND',	'',	0,	'offen',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40145,	0,	'Limo',	'',	'',	'',	'',	'REWE',	1.39,	1.000,	'2015-08-29',	'LEBEN',	'',	0,	'offen',	'2015-08-29',	0,	'0000-00-00 00:00:00'),
(40146,	0,	'Bilderrahmen 13x18',	'',	'',	'',	'',	'Kaufland',	3.19,	2.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40147,	0,	'WC-Reiniger Frosch',	'',	'',	'',	'',	'Kaufland',	1.65,	2.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40148,	0,	'Aufbackbrötchen',	'',	'',	'',	'',	'Aldi',	0.35,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40149,	0,	'Klopapier',	'',	'',	'',	'',	'Aldi',	1.95,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40150,	0,	'Malzbier',	'',	'',	'',	'',	'Aldi',	3.09,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40151,	0,	'Orangen',	'',	'',	'',	'',	'Aldi',	2.15,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40152,	0,	'Sojaschnitzel',	'',	'',	'',	'',	'Aldi',	1.85,	2.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40153,	0,	'Strauchtomaten',	'',	'',	'',	'',	'Aldi',	2.45,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40154,	0,	'Traubenschorle',	'',	'',	'',	'',	'Aldi',	6.00,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40155,	0,	'Weintrauben',	'',	'',	'',	'',	'Aldi',	1.65,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40156,	0,	'paprika bunt',	'',	'',	'',	'',	'Aldi',	1.49,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40157,	0,	'Äpfel Modi',	'',	'',	'',	'',	'Aldi',	1.35,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40158,	0,	'Dinkelmilch',	'',	'',	'',	'',	'Kaufland',	1.65,	3.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40159,	0,	'Körnerbrot',	'',	'',	'',	'',	'Kaufland',	1.39,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40160,	0,	'Orangenwasser',	'',	'',	'',	'',	'Kaufland',	4.44,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40161,	0,	'cashewkerne',	'',	'',	'',	'',	'Kaufland',	3.85,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40162,	0,	'Agavendicksaft',	'',	'',	'',	'',	'Kaufland',	2.65,	2.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40163,	0,	'Tellerlinsen (braun)',	'',	'',	'',	'',	'Kaufland',	1.79,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40164,	0,	'Lasagneplatten vegan',	'',	'',	'',	'',	'Kaufland',	1.29,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40165,	0,	'Tomatenmark',	'',	'',	'',	'',	'Aldi',	0.55,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40166,	0,	'passierte Tomaten',	'',	'',	'',	'',	'Aldi',	0.39,	2.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40167,	0,	'Alsan',	'',	'',	'',	'',	'Kaufland',	0.75,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40168,	0,	'Sojagranulat',	'',	'',	'',	'',	'Kaufland',	2.49,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40169,	0,	'Sojamilch',	'',	'',	'',	'',	'Kaufland',	1.79,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40170,	0,	'Nudeln penne',	'',	'',	'',	'',	'Aldi',	0.49,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40171,	0,	'Reibekäse',	'',	'',	'',	'',	'Aldi',	1.29,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40172,	0,	'Gemüsebrühe',	'',	'',	'',	'',	'Kaufland',	1.59,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40173,	0,	'Mangos',	'',	'',	'',	'',	'Aldi',	1.99,	2.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40174,	0,	'Bananen',	'',	'',	'',	'',	'Aldi',	0.90,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40175,	0,	'Kalkstopppulver',	'',	'',	'',	'',	'Kaufland',	2.55,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40176,	0,	'Kaffeefilter Gr4',	'',	'',	'',	'',	'Aldi',	0.45,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40177,	0,	'Destiliertes Wasser',	'',	'',	'',	'',	'Kaufland',	1.65,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40178,	0,	'Pasta u. Spätzlemehl',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40179,	0,	'Ginger Ale',	'',	'',	'',	'',	'Aldi',	2.89,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40180,	0,	'Rohrzucker',	'',	'',	'',	'',	'Kaufland',	1.99,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40181,	0,	'Radler alkoholfrei',	'',	'',	'',	'',	'Aldi',	3.09,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40182,	0,	'Colorwaschmittel',	'',	'',	'',	'',	'Aldi',	3.59,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40183,	0,	'Curry',	'',	'',	'',	'',	'Aldi',	0.69,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40184,	0,	'Blumenerde',	'',	'',	'',	'',	'Kaufland',	2.99,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40185,	0,	'Familienkalender',	'',	'',	'',	'',	'Kaufland',	2.00,	1.000,	'2015-10-10',	'FAMILIE',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40186,	0,	'Fillyheft',	'',	'',	'',	'',	'Kaufland',	3.99,	1.000,	'2015-10-10',	'KIND',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40187,	0,	'Fernsehzeitschrift',	'',	'',	'',	'',	'Kaufland',	1.00,	1.000,	'2015-10-10',	'HAUSHALT',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40188,	0,	'Tortilla Chips',	'',	'',	'',	'',	'Kaufland',	0.99,	1.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40189,	0,	'Salsa Dip',	'',	'',	'',	'',	'Kaufland',	0.99,	2.000,	'2015-10-10',	'LEBEN',	'',	0,	'offen',	'2015-10-10',	0,	'0000-00-00 00:00:00'),
(40191,	0,	'Ã„pfel Braeburn',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.55,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40201,	0,	'Baguette-Brötchen',	'',	'',	'',	'Brotwaren',	'Aldi',	0.35,	1.000,	'',	'LEBEN',	'22115904',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40211,	0,	'Bananen',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.89,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40221,	0,	'GemÃ¼sebrÃ¼he',	'',	'',	'',	'Gewuerze',	'Aldi',	0.59,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40231,	0,	'Kiwi',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.29,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40241,	0,	'Margarine',	'',	'',	'',	'(ohne)',	'Aldi',	0.69,	1.000,	'',	'LEBEN',	'22112446',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40251,	0,	'Naschtomaten ( Mini )',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	2.49,	1.000,	'',	'LEBEN',	'4049929247550',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40261,	0,	'passierte tomaten',	'',	'',	'',	'Konserven',	'Aldi',	0.35,	1.000,	'',	'LEBEN',	'22114235',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40271,	0,	'Rapsöl',	'',	'',	'',	'Konserven',	'Aldi',	0.95,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40281,	0,	'Schlangengurke',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	0.30,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40291,	0,	'Sojaschnitzel',	'',	'',	'',	'KÃ¼hltheke',	'Aldi',	1.79,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40301,	0,	'Spiralinudeln',	'',	'',	'',	'Brotwaren',	'Aldi',	0.49,	1.000,	'',	'LEBEN',	'22111326',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40311,	0,	'Tofuaufschnitt',	'',	'',	'',	'Milchprodukte',	'Aldi',	1.79,	1.000,	'',	'LEBEN',	'22144515',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40321,	0,	'Tomaten',	'',	'',	'',	'Obst / Gemuese',	'Aldi',	1.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40331,	0,	'Traubenschorle',	'',	'',	'',	'Getraenke',	'Aldi',	0.89,	6.000,	'',	'LEBEN',	'42141167',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40341,	0,	'Orangenwasser',	'',	'',	'',	'Getraenke',	'Kaufland',	0.49,	6.000,	'',	'LEBEN',	'4300175374170',	0,	'offen',	'2016-01-16',	0,	'2016-01-16 09:09:37'),
(40351,	0,	'Kichererbsen aus der Dose',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40361,	0,	'vegane Rigatoni Nudeln',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40371,	0,	'Curcuma Gewürz',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40381,	0,	'Sojamilch ohne Zucker',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40391,	0,	'vegane Bockwürstchen ( Wienerle )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40401,	0,	'Kokosmilch',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40411,	0,	'Mais Dose',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40421,	0,	'Kidneybohnen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40431,	0,	'Rote Beete',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40441,	0,	'deutsche Möhren (frisch)',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40451,	0,	'Räuchertofu',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40461,	0,	'vegane Gnocchi',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40471,	0,	'Dinkelmilch',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	3.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40481,	0,	'Paprika edelsüß Pulver',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40491,	0,	'Sojagranulat',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40501,	0,	'Chorizo vegan',	'',	'',	'',	'(ohne)',	'Alnatura',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40511,	0,	'Wattestäbchen',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'HAUSHALT',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40521,	0,	'Ceranfeldschaber',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'HAUSHALT',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40531,	0,	'Gewürzgurken',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40541,	0,	'Rotbäckchensaft',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40551,	0,	'vegane Vleischwurst ( am Stück und in >Scheiben )',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40561,	0,	'Agavendicksaft',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	2.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40571,	0,	'Körnerbrot',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'LEBEN',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00'),
(40581,	0,	'Zahnseide',	'',	'',	'',	'(ohne)',	'Kaufland',	0.00,	1.000,	'',	'KIND',	'',	0,	'offen',	'2016-01-16',	0,	'0000-00-00 00:00:00');

CREATE TABLE `tblelternconfig` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldsollstd` int(11) NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldvondatum` date NOT NULL,
  `fldbisdatum` date NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblelternconfig` (`fldindex`, `fldsollstd`, `fldbez`, `fldvondatum`, `fldbisdatum`) VALUES
(1,	24,	'Kindergartenjahr 2011 / 2012',	'2011-08-31',	'2012-08-31'),
(3,	24,	'Kindergartenjahr 2012 / 2013',	'2012-08-31',	'2013-08-31');

CREATE TABLE `tblelternstunden` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddatum` date NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldstunden` decimal(10,1) NOT NULL,
  `fldarchivdat` date NOT NULL DEFAULT '1900-01-01',
  `fldAnwender` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldRang` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '00',
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblelternstunden` (`fldindex`, `flddatum`, `fldbez`, `fldstunden`, `fldarchivdat`, `fldAnwender`, `fldRang`) VALUES
(1,	'2011-09-10',	'Gartenarbeit (Zaun)  (Datum nachgetragen)',	2.0,	'2012-08-31',	'',	'00'),
(6,	'2011-11-03',	'Gartenarbeit (Zaun)',	1.5,	'2012-08-31',	'',	'00'),
(7,	'2012-01-14',	'Arbeit AuÃŸengelÃ¤nde',	2.5,	'2012-08-31',	'',	'00'),
(8,	'2012-01-14',	'Arbeit AuÃŸengelÃ¤nde',	2.5,	'2012-08-31',	'',	'00'),
(133,	'2012-09-05',	'Aushang Quasselstrippe gestaltet',	0.5,	'1900-01-01',	'Horst',	'00'),
(153,	'2012-11-13',	'Artikel verfasst fÃ¼r Quasselstrippe',	2.5,	'1900-01-01',	'Christiane',	'00'),
(143,	'2012-11-15',	'Redaktionssitzung Quasselstrippe',	3.0,	'1900-01-01',	'Horst',	'00'),
(163,	'2013-02-01',	'GrÃ¼ne Gruppe ausgerÃ¤umt',	1.0,	'1900-01-01',	'Christiane',	'00'),
(203,	'2013-02-16',	'Arktikel Editorial und Anzeige erstellt Quasselstrippe',	2.0,	'1900-01-01',	'Horst',	'00'),
(213,	'2013-02-15',	'Artikel fÃ¼r Quasselstrippe erstellt',	3.5,	'1900-01-01',	'Christiane',	'00'),
(223,	'2013-02-17',	'Quasselstrippe in Scribus zusammengefÃ¼gt',	2.0,	'1900-01-01',	'Horst',	'00'),
(233,	'2013-02-19',	'Quasselstrippe Kindermund zusammengestellt und skizziert',	1.0,	'1900-01-01',	'Christiane',	'00'),
(243,	'2013-03-05',	'Quasselstrippe Probeexemplar gedruckt',	1.0,	'1900-01-01',	'Horst',	'00');

CREATE TABLE `tblerledigung` (
  `fldIndex` bigint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fldDetailInd` int(11) NOT NULL,
  `fldRang` varchar(2) NOT NULL,
  `fldBezeichnung` varchar(100) NOT NULL,
  `fldStatus` varchar(10) NOT NULL,
  `fldBenutzer` varchar(20) NOT NULL,
  `fldDatum` date NOT NULL,
  `fldErledigDat` varchar(10) NOT NULL,
  `fldArchivDat` varchar(10) NOT NULL,
  `fldbemerkung` varchar(250) NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fldArt` varchar(20) NOT NULL,
  `fldPrior` int(11) NOT NULL,
  `fldGruppe` varchar(200) NOT NULL,
  `fldurl` varchar(255) NOT NULL,
  `fldcategory` varchar(200) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblerledigung` (`fldIndex`, `fldDetailInd`, `fldRang`, `fldBezeichnung`, `fldStatus`, `fldBenutzer`, `fldDatum`, `fldErledigDat`, `fldArchivDat`, `fldbemerkung`, `fldtimestamp`, `fldArt`, `fldPrior`, `fldGruppe`, `fldurl`, `fldcategory`) VALUES
(204,	0,	'99',	'Kindergartenformulare fertig machen',	'erledigt',	'Horst',	'2010-03-24',	'',	'2010-03-24',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(2,	0,	'99',	'KÃ¶lner Stadtanzeiger Kontonummer mitteilen',	'erledigt',	'Horst',	'2010-03-24',	'',	'2010-03-24',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(4,	0,	'99',	'KontoauszÃ¼ge von Vodafone an Rechtsanwalt schicken',	'erledigt',	'Horst',	'2010-03-24',	'',	'2010-03-24',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(6,	0,	'99',	'Kleintransporter fÃ¼r Dienst gemieten (06.04.2010)',	'erledigt',	'Horst',	'2010-03-24',	'',	'2010-03-24',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(12,	0,	'99',	'Kiste mit Wechselsachen etc fÃ¼r Kindergarten fertig machen',	'erledigt',	'Horst',	'2010-04-07',	'',	'2010-04-14',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(8,	0,	'99',	'Osterkarten schreiben',	'erledigt',	'Horst',	'2010-03-26',	'',	'2010-04-14',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(9,	0,	'99',	'BuÃŸgeld Kamen bezahlen',	'erledigt',	'Horst',	'2010-03-30',	'',	'2010-04-14',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(11,	0,	'99',	'Weihnachtssachen wegrÃ¤umen',	'erledigt',	'Christiane',	'2010-04-02',	'',	'2010-04-14',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(13,	0,	'99',	'DB Forderung Bahnkarte widersprechen!',	'erledigt',	'Horst',	'2010-04-14',	'',	'2010-04-14',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(14,	0,	'01',	'Finanzielles (Bank, Provinzial, Offene Rechnung)',	'erledigt',	'Horst',	'2011-01-25',	'2011-04-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(15,	33,	'05',	'Kleiderschrank (Ausmisten, AufrÃ¤umen)',	'offen',	'Chris',	'2011-01-25',	'',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(16,	0,	'07',	'Finanzverein grÃ¼nden (Betroffene suchen)',	'zurueckges',	'Horst',	'2011-01-25',	'',	'',	'',	'2012-02-27 22:29:37',	'',	1,	'Finanzen',	'',	''),
(17,	33,	'08',	'Vorkeller ordnen',	'offen',	'Chris',	'2011-01-25',	'',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(18,	0,	'04',	'Familienpartei beitreten (Gleichgesinnte finden, aktiv mitwirken)',	'zurueckges',	'Horst',	'2011-01-25',	'',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(19,	33,	'07',	'Abstellkammer ausmisten',	'offen',	'Chris',	'2011-01-25',	'',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(20,	0,	'05',	'Stromanbieter wechseln (123-Energie)',	'offen',	'Horst',	'2011-01-25',	'',	'',	'',	'2011-12-21 20:08:21',	'',	1,	'Haushalt',	'',	''),
(21,	0,	'06',	'Socken sortieren (Socken zusammen in die WÃ¤sche geben)',	'erledigt',	'Christiane',	'2011-01-25',	'2011-12-03',	'',	'haben sockenklammer',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(22,	14,	'99',	'GEZ ummelden',	'erledigt',	'Horst',	'2011-02-07',	'2011-02-24',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(23,	14,	'99',	'Netcologne bezahlen Nov / Dez 2010',	'erledigt',	'Horst',	'2011-02-07',	'2011-02-24',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(24,	14,	'99',	'HDI Auto bezahlen',	'erledigt',	'Horst',	'2011-02-07',	'2011-04-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(31,	0,	'99',	'KarnevalskostÃ¼me fÃ¼r Frieda',	'erledigt',	'Horst',	'2011-02-18',	'2011-02-24',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(32,	0,	'',	'Vorrat / Lebensmittel erfassen für Rezeptdatenbank',	'offen',	'Horst',	'2011-02-18',	'',	'',	'',	'2015-04-20 05:27:47',	'',	1,	'PrgEntw',	'',	'Erledigung'),
(33,	0,	'99',	'Ordnung schaffen',	'zurueckges',	'Horst',	'2011-02-24',	'',	'',	'',	'2012-01-02 17:50:13',	'',	1,	'(ohne)',	'',	''),
(34,	0,	'02',	'Finanzen 01/2011',	'erledigt',	'Horst',	'2011-02-24',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(35,	34,	'99',	'Netcologne bezahlen 01/2011',	'erledigt',	'Horst',	'2011-02-24',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(36,	14,	'99',	'Provinzial antworten',	'erledigt',	'Horst',	'2011-02-24',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(37,	14,	'99',	'Bank anschreiben wg Kreditraten',	'erledigt',	'Horst',	'2011-02-24',	'2011-04-28',	'',	'wurde an Inkasso weitergeben und wird von der Schuldnerberatung geklärt',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(38,	0,	'99',	'GEZ GebÃ¼hren RÃ¼ckforderung Horst',	'zurueckges',	'Horst',	'2011-02-24',	'',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(39,	14,	'99',	'Rheinenergie Strom Ã¼berweisen (DA)',	'erledigt',	'Horst',	'2011-02-24',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(40,	34,	'99',	'Rheinenergie 01/2011',	'erledigt',	'Horst',	'2011-02-28',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(41,	34,	'99',	'Rheinenergie Dauerauftrag',	'erledigt',	'Horst',	'2011-02-28',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(42,	34,	'99',	'Provinzialbrief Zahlungen ab 01/2011',	'erledigt',	'Horst',	'2011-02-28',	'2011-02-28',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(46,	44,	'99',	'Finanzunterlagen fÃ¼r Finanzberater',	'offen',	'Horst',	'2011-08-22',	'',	'',	'',	'2011-12-21 19:42:02',	'',	4,	'Finanzen',	'',	''),
(47,	44,	'99',	'Blueman installieren fÃ¼r Bluetooth Handy Internetverbindung',	'erledigt',	'Horst',	'2011-08-22',	'2011-10-11',	'',	'funktioniert mit kabel',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(78,	44,	'99',	'unison sync installieren',	'erledigt',	'Horst',	'2011-09-01',	'2011-09-13',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(89,	0,	'99',	'Google-Konto einrichten fÃ¼r Cyberduck-Zugriff',	'erledigt',	'Horst',	'2011-10-11',	'2011-10-17',	'',	'wurde angelegt mit horstmail-google@yahoo.de',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(51,	44,	'99',	'Blueman installieren fuer Bluetooth Handy Internetverbindung',	'erledigt',	'Horst',	'2011-08-17',	'2011-10-11',	'',	'verbindung zum Handy schlaegt fehl. Verbindung mit Kabel funktioniert.',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(52,	44,	'99',	'php5 installieren',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(53,	44,	'99',	'xubuntu 10.10 upgrade klaeren',	'offen',	'Horst',	'2011-08-17',	'',	'',	'',	'2011-12-21 19:53:11',	'Laptop',	2,	'Ubuntu',	'',	''),
(54,	44,	'99',	'joomla 1.7 installieren auf Laptop',	'erledigt',	'Horst',	'2011-08-17',	'2011-10-11',	'',	'bisher nur joomla 1.6.5',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(55,	44,	'99',	'ant installieren fuer java-compilieren',	'offen',	'Horst',	'2011-08-17',	'',	'',	'',	'2012-02-24 17:40:44',	'Laptop',	1,	'PrgEntw',	'',	''),
(56,	44,	'99',	'lightwallet kompilieren',	'offen',	'Horst',	'2011-08-17',	'',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(57,	44,	'99',	'Versicherungen anschreiben wg Homepagerechtsschutz',	'offen',	'Horst',	'2011-08-17',	'',	'',	'vorbereitet',	'2011-12-21 20:00:45',	'Homepage',	4,	'leer',	'',	''),
(58,	44,	'99',	'Scheiben und Schrauben fuer Waschmaschinenschutz besorgen',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Haushalt',	1,	'leer',	'',	''),
(59,	44,	'99',	'Sockelschutz fuer Waschmaschine anbringen',	'zurueckges',	'Horst',	'2011-08-17',	'',	'',	'bekomme keine Hilti (Haus der Maschinen? zu teuer)',	'2011-12-21 20:00:45',	'Haushalt',	1,	'leer',	'',	''),
(60,	44,	'99',	'libreoffice neuste Version mit Reportdesigner installieren',	'zurueckges',	'Horst',	'2011-08-17',	'',	'',	'laeuft nur im neusten Upgrade',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(61,	44,	'99',	'Sonnenblume fuer Hochzeitstag',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-26',	'',	'leider keine bekommen',	'2011-12-21 20:00:45',	'Hochzeit',	1,	'leer',	'',	''),
(62,	44,	'99',	'kleines Hochzeitsgeschenk - Karte',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Hochzeit',	1,	'leer',	'',	''),
(63,	44,	'99',	'openjdk6 installieren fuer java',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-26',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(64,	44,	'99',	'Hilti ausleihen',	'zurueckges',	'Horst',	'2011-08-17',	'',	'',	'zu teuer',	'2011-12-21 20:00:45',	'Haushalt',	1,	'leer',	'',	''),
(65,	44,	'99',	'svn doku runterladen',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(66,	44,	'99',	'phpdbsync runterladen',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(67,	44,	'99',	'svn installieren',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(68,	44,	'99',	'svn fuer https konfigurieren',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-17',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(69,	44,	'99',	'phpmyadmin installieren',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-22',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(70,	44,	'99',	'mysql installieren',	'erledigt',	'Horst',	'2011-08-17',	'2011-08-22',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(71,	44,	'99',	'webportal erledigungsliste kopieren',	'erledigt',	'Horst',	'2011-08-22',	'2011-08-26',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(72,	44,	'99',	'jwebportal einrichten',	'erledigt',	'Horst',	'2011-08-22',	'2011-10-11',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(73,	44,	'99',	'jwebportal komponente entwickeln',	'offen',	'Horst',	'2011-08-22',	'',	'',	'',	'2011-12-21 19:54:18',	'Laptop',	1,	'Programm',	'',	''),
(74,	44,	'99',	'Termin klaeren siehe Email',	'zurueckges',	'Horst',	'2011-08-22',	'',	'',	'unklar was gemeint ist',	'2011-12-21 20:00:45',	'Ubuntu',	1,	'leer',	'',	''),
(75,	44,	'99',	'openbook joomla 1.5 downloaden',	'erledigt',	'Horst',	'2011-08-22',	'2011-08-26',	'',	'joomla 1.6 buch gibt es noch nicht',	'2011-12-21 20:00:45',	'joomla',	1,	'leer',	'',	''),
(76,	44,	'99',	'chmviewer installieren',	'erledigt',	'Horst',	'2011-08-26',	'2011-09-01',	'',	'',	'2011-12-21 20:00:45',	'Laptop',	1,	'leer',	'',	''),
(77,	44,	'99',	'Selfhtml openbook runterladen',	'erledigt',	'Horst',	'2011-09-01',	'2011-09-01',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(79,	44,	'99',	'tbluser anlegen uebernehmen',	'offen',	'Christiane',	'2011-09-02',	'',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(80,	44,	'99',	'tomcat 6 installieren',	'erledigt',	'Horst',	'2011-09-13',	'2011-10-11',	'',	'',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(81,	0,	'99',	'Netcologne Rechnung bezahlen',	'erledigt',	'Horst',	'2011-10-04',	'2011-10-18',	'',	'8 / 9 2011 Ã¼berwiesen',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(82,	0,	'99',	'Schulden bezahlen',	'erledigt',	'Christiane',	'2011-10-04',	'2011-10-04',	'',	'per Telefonbanking',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(83,	0,	'99',	'Dauerauftrag Schulden',	'erledigt',	'Christiane',	'2011-10-06',	'2012-02-27',	'',	'',	'2012-02-27 22:29:52',	'',	5,	'Finanzen',	'',	''),
(85,	0,	'99',	'e-book Funktion einrichten',	'erledigt',	'Horst',	'2011-10-06',	'2011-12-21',	'',	'calibre installiert',	'2012-02-14 06:42:21',	'',	1,	'Computer',	'',	''),
(86,	0,	'99',	'Baum entsorgen',	'erledigt',	'Horst',	'2011-10-11',	'2011-12-22',	'',	'wurde zerlegt und in die Garage gestellt',	'2012-01-02 17:47:52',	'',	1,	'Haushalt',	'',	''),
(90,	0,	'99',	'Netcologne Zugang XUbuntu',	'erledigt',	'Horst',	'2011-10-11',	'2011-10-27',	'',	'mit pppoeconf eingerichtet und zweite Netzwerkkarte',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(91,	0,	'99',	'Backup auf Notebook test (Areca / BackInTime)',	'erledigt',	'Horst',	'2011-10-11',	'2011-10-28',	'',	'Areca ist die beste Wahl!',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(92,	0,	'99',	'Wine testen',	'erledigt',	'Horst',	'2011-10-11',	'2011-10-12',	'',	'ist eingerichtet und funktioniert.',	'2011-12-21 20:00:45',	'',	4,	'leer',	'',	''),
(95,	0,	'99',	'save.tv testen',	'erledigt',	'Horst',	'2011-10-11',	'2011-10-11',	'',	'Unklare Preispolitik!',	'2011-12-21 20:00:45',	'',	4,	'leer',	'',	''),
(96,	0,	'99',	'Scan Programm testen',	'offen',	'Horst',	'2011-10-11',	'',	'',	'',	'2012-02-14 06:42:58',	'',	3,	'Computer',	'',	''),
(97,	0,	'99',	'Lifecare Programm mit Java erstellen',	'offen',	'Horst',	'2011-10-12',	'',	'',	'',	'2013-08-22 20:59:27',	'',	3,	'PrgEntw',	'',	''),
(98,	0,	'99',	'Programmierung',	'zurueckges',	'Horst',	'2011-10-12',	'',	'',	'',	'2012-01-02 17:49:59',	'',	1,	'(ohne)',	'',	''),
(99,	98,	'99',	'Erledigungsliste drucken in Din A5 mit leeren Zeilen',	'offen',	'Horst',	'2011-10-12',	'',	'',	'',	'2011-12-21 20:00:45',	'',	3,	'leer',	'',	''),
(100,	98,	'99',	'com_webportal fÃ¼r joomla 1.7 programmieren',	'offen',	'Horst',	'2011-10-12',	'',	'',	'',	'2011-12-21 19:51:50',	'',	3,	'Programm',	'',	''),
(101,	98,	'99',	'Travelcheck programieren',	'offen',	'Horst',	'2011-10-12',	'',	'',	'',	'2011-12-21 19:52:08',	'',	3,	'Programm',	'',	''),
(103,	0,	'99',	'Chris wg Congstar klÃ¤ren',	'erledigt',	'Horst',	'2011-10-17',	'2011-10-18',	'',	'mit Chris besprochen, kÃ¼mmert sich drum.',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(104,	0,	'99',	'Headset fÃ¼r Chris',	'erledigt',	'Horst',	'2011-10-17',	'2011-10-17',	'',	'',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(105,	0,	'99',	'KlÃ¤rung in Erledigungsliste',	'erledigt',	'Horst',	'2011-10-17',	'2011-10-18',	'',	'wurde umgesetzt',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(106,	0,	'99',	'Thunderbird fÃ¼r Chris einrichten',	'erledigt',	'Horst',	'2011-10-18',	'2011-10-30',	'',	'erst Christiane fragen, hat kein intresse, schade!',	'2011-12-21 20:00:45',	'',	4,	'leer',	'',	''),
(107,	0,	'99',	'Kassenbon-Mappe zeigen',	'erledigt',	'Horst',	'2011-10-18',	'2011-10-30',	'',	'hab ich gezeigt',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(145,	0,	'99',	'Gutschein fÃ¼r Louis',	'erledigt',	'Christiane',	'2011-12-03',	'2012-03-13',	'',	'wird wohl erledigt sein.',	'2012-03-13 17:30:09',	'',	4,	'Geschenk',	'',	''),
(109,	0,	'99',	'Homepage horald.de auf Joomla 1.7 umstellen',	'in Arbeit',	'Horst',	'2011-10-18',	'',	'',	'angefangen',	'2012-02-14 06:49:06',	'',	2,	'Computer',	'',	''),
(138,	0,	'99',	'Fotos fÃ¼r Kalendar gemeinsam aussuchen',	'erledigt',	'Horst',	'2011-12-02',	'2011-12-05',	'',	'',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(111,	0,	'99',	'meine iTan beantragen (online) KSK-KÃ¶ln',	'erledigt',	'Horst',	'2011-10-20',	'2011-10-25',	'',	'habe mich fÃ¼r chiptan entschieden',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(112,	0,	'99',	'iTan von Chris',	'erledigt',	'Horst',	'2011-10-20',	'2011-11-01',	'',	'sind endlich angekommen',	'2011-12-21 20:00:45',	'',	1,	'leer',	'',	''),
(114,	0,	'99',	'NK-Abrechnung einscannen',	'zurueckges',	'Horst',	'2011-10-20',	'',	'',	'',	'2012-02-27 22:29:15',	'',	3,	'Finanzen',	'',	''),
(116,	0,	'99',	'aktuelle phpdbsync version runterladen',	'offen',	'Horst',	'2011-10-20',	'',	'',	'',	'2013-08-22 20:59:42',	'',	2,	'PrgEntw',	'',	''),
(118,	0,	'99',	'Proxy-Server einrichten',	'erledigt',	'Horst',	'2011-10-27',	'2011-10-27',	'',	'mit tinyproxy',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(119,	0,	'99',	'Haken an Jacke (rot) machen',	'erledigt',	'Horst',	'2011-10-28',	'2011-12-29',	'',	'mein Schatz genÃ¤ht',	'2011-12-29 16:19:10',	'',	4,	'Reparatur',	'',	''),
(120,	0,	'99',	'Adressbook Header schmaler machen fÃ¼r Webportal',	'offen',	'Horst',	'2011-10-28',	'',	'',	'',	'2012-02-24 17:42:10',	'',	3,	'PrgEntw',	'',	''),
(140,	0,	'99',	'Geschenk fÃ¼r Christiane bestellen',	'erledigt',	'Horst',	'2011-12-02',	'2011-12-06',	'',	'bestellt',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(122,	0,	'99',	'Ãœberweisung Schulden 150,--',	'erledigt',	'Horst',	'2011-11-02',	'2011-11-04',	'',	'Ã¼berwiesen.',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(123,	0,	'99',	'Windows 2000 PC aufrÃ¼sten',	'offen',	'Horst',	'2011-11-02',	'',	'',	'aufrÃ¼stsatz bestellt.',	'2013-08-22 21:14:22',	'',	4,	'Computer',	'',	''),
(124,	0,	'99',	'Brett fÃ¼r KÃ¼chenschrank besorgen',	'erledigt',	'Horst',	'2011-11-02',	'2011-12-21',	'',	'wurde kleingesÃ¤gt',	'2011-12-21 19:43:13',	'',	4,	'(ohne)',	'',	''),
(125,	0,	'99',	'Wunschliste fÃ¼r meine Eltern erstellen',	'erledigt',	'Horst',	'2011-11-02',	'2011-12-12',	'',	'Mokkatasse und Massage',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(127,	0,	'99',	'Stuhl reparieren, Leiste besorgen',	'erledigt',	'Horst',	'2011-11-02',	'2011-12-21',	'',	'',	'2011-12-21 19:43:31',	'',	4,	'(ohne)',	'',	''),
(128,	0,	'99',	'1500 auf mein konto',	'erledigt',	'Horst',	'2011-11-02',	'2011-12-22',	'',	'wurde von Christianes Konto Ã¼berwiesen',	'2011-12-21 23:01:37',	'',	4,	'Finanzen',	'',	''),
(129,	0,	'99',	'google docs fÃ¼r ubuntu einrichten',	'offen',	'Horst',	'2011-11-02',	'',	'',	'',	'2013-08-22 21:14:30',	'',	3,	'Computer',	'',	''),
(130,	0,	'99',	'Funkarmbanduhr Fehler klÃ¤ren',	'erledigt',	'Horst',	'2011-11-02',	'2011-12-05',	'',	'Garantietausch',	'2011-12-21 20:00:45',	'',	4,	'leer',	'',	''),
(131,	0,	'99',	'Handy Fehler Lautsprecher klÃ¤ren',	'zurueckges',	'Horst',	'2011-11-02',	'2011-12-05',	'',	'zu teuer',	'2011-12-21 20:00:45',	'',	4,	'leer',	'',	''),
(132,	0,	'99',	'Laptop Handy Verbindung pruefen',	'erledigt',	'Horst',	'2011-11-03',	'2011-11-28',	'',	'geht prinzipiell, hat aber verbindungsprobleme oder wackelkontakt',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(133,	0,	'99',	'ubuntu openbook installieren',	'offen',	'Horst',	'2011-11-03',	'',	'',	'',	'2013-08-22 21:14:15',	'',	2,	'Computer',	'',	''),
(134,	0,	'99',	'DVD lib installieren',	'erledigt',	'Horst',	'2011-11-04',	'2011-12-05',	'',	'',	'2011-12-21 20:00:45',	'',	4,	'leer',	'',	''),
(135,	0,	'99',	'Geld Ã¼berweisen wegen Internetsperre Netcologne',	'erledigt',	'Horst',	'2011-12-02',	'2011-12-02',	'',	'wurde Ã¼berwiesen',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(136,	0,	'99',	'Beschwerdebrief an Netcologne wegen Internetsperre',	'zurueckges',	'Horst',	'2011-12-02',	'',	'',	'keine zeit fÃ¼r',	'2012-01-02 17:45:03',	'',	3,	'Briefe',	'',	''),
(137,	0,	'99',	'Neuen Telefonanbieter suchen 1u1 o Alice',	'offen',	'Horst',	'2011-12-02',	'',	'',	'',	'2012-02-24 17:39:10',	'',	3,	'Haushalt',	'',	''),
(141,	0,	'99',	'Schwimmen gehen evtl mit Rahel u Lewin',	'erledigt',	'Frieda',	'2011-12-03',	'2012-02-12',	'',	'im Lentbad',	'2012-02-13 06:16:23',	'',	5,	'Freizeit',	'',	''),
(142,	0,	'99',	'Abfluss frei im oberen Bad',	'erledigt',	'Christiane',	'2011-12-03',	'2012-02-06',	'',	'',	'2012-02-06 17:35:19',	'',	1,	'Reparatur',	'',	''),
(144,	0,	'99',	'Neuen Stromanbieter suchen meine-wende.de',	'offen',	'Horst',	'2011-12-03',	'',	'',	'',	'2011-12-21 20:07:33',	'',	5,	'Haushalt',	'',	''),
(146,	0,	'99',	'Fotos in Fotokalendar einkleben',	'erledigt',	'Horst',	'2011-12-05',	'2011-12-20',	'',	'',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(147,	0,	'99',	'Briefe sortieren und durchschauen',	'spaeter',	'Horst',	'2011-12-07',	'',	'',	'',	'2012-01-12 20:50:20',	'',	5,	'Ordnung',	'',	''),
(148,	0,	'99',	'November-Rechnung Netcologne bezahlen',	'erledigt',	'Horst',	'2011-12-12',	'2011-12-21',	'',	'',	'2011-12-21 21:43:20',	'',	5,	'Finanzen',	'',	''),
(149,	0,	'99',	'Haare schneiden vor Weihnachten',	'erledigt',	'Horst',	'2011-12-20',	'2011-12-21',	'',	'',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(150,	0,	'99',	'Auto waschen und Tanken',	'erledigt',	'Horst',	'2011-12-20',	'2011-12-29',	'',	'von innen gereinigt',	'2011-12-29 15:26:14',	'',	5,	'Auto',	'',	''),
(151,	0,	'99',	'Drucker reparieren oder neu bestellen',	'erledigt',	'Horst',	'2011-12-20',	'2011-12-21',	'',	'neuen bestellt',	'2011-12-21 20:00:45',	'',	5,	'leer',	'',	''),
(152,	0,	'99',	'Arbeitszimmer aufrÃ¤umen',	'erledigt',	'Horst',	'2011-12-20',	'2011-12-22',	'',	'DauerbeschÃ¤ftigung, habe aber angefangen',	'2011-12-21 23:03:14',	'',	5,	'Ordnung',	'',	''),
(153,	0,	'99',	'ADAC Rechnung 2011',	'erledigt',	'Horst',	'2011-12-21',	'2011-12-29',	'',	'',	'2011-12-29 15:25:45',	'',	5,	'Finanzen',	'',	''),
(154,	0,	'99',	'Neues Autoradio einbauen lassen',	'erledigt',	'Horst',	'2011-12-21',	'2012-03-08',	'',	'teurer Einbau',	'2012-03-13 17:23:14',	'',	5,	'Auto',	'',	''),
(164,	123,	'99',	'PC AufrÃ¼stsatz einbauen',	'offen',	'Horst',	'2012-01-04',	'',	'',	'',	'2012-01-04 18:42:29',	'',	4,	'Computer',	'',	''),
(155,	0,	'99',	'Neuen Kindersitz besorgen',	'zurueckges',	'Horst',	'2011-12-21',	'',	'',	'wahrscheinlich noch zu frÃ¼h',	'2011-12-21 20:41:25',	'',	5,	'Auto',	'',	''),
(156,	0,	'99',	'Dauerauftrag Miete erhÃ¶hen',	'erledigt',	'Horst',	'2011-12-22',	'2011-12-29',	'',	'auf 950 erhÃ¶ht',	'2011-12-29 15:25:26',	'',	5,	'Finanzen',	'',	''),
(157,	0,	'99',	'Neue Reifen bestellen und montieren lassen',	'erledigt',	'Horst',	'2011-12-29',	'2012-01-28',	'',	'wurden bestellt, wurden montiert',	'2012-01-30 17:22:16',	'',	5,	'Auto',	'',	''),
(158,	0,	'99',	'Laserdrucker Samsung CLP-300 verschenken',	'offen',	'Horst',	'2011-12-29',	'',	'',	'',	'2011-12-29 16:27:31',	'',	4,	'Computer',	'',	''),
(159,	0,	'99',	'Datensicherung fÃ¼r Internet-PC einrichten',	'offen',	'Horst',	'2012-01-02',	'',	'',	'',	'2012-02-24 17:38:16',	'',	4,	'Computer',	'',	''),
(160,	123,	'99',	'PC AufrÃ¼stsatz bei Snogard abholen',	'erledigt',	'Horst',	'2012-01-02',	'2012-01-03',	'',	'',	'2012-01-04 18:40:11',	'',	5,	'Computer',	'',	''),
(161,	0,	'99',	'samba freigabe auf Internet-PC',	'offen',	'Horst',	'2012-01-02',	'',	'',	'',	'2013-08-22 21:14:05',	'',	2,	'Computer',	'',	''),
(162,	0,	'99',	'Libreoffice auf Laptop installieren',	'erledigt',	'Horst',	'2012-01-02',	'2012-01-30',	'',	'',	'2012-02-14 06:52:51',	'',	4,	'Computer',	'',	''),
(163,	0,	'99',	'Serienbriefdruck mit Libreoffice und Mysql einrichten',	'offen',	'Horst',	'2012-01-02',	'',	'',	'',	'2012-01-02 17:42:03',	'',	4,	'',	'',	''),
(165,	0,	'99',	'Joomla Tabellen-Komponente userabhÃ¤ngig',	'offen',	'Horst',	'2012-01-04',	'',	'',	'',	'2013-08-22 21:13:40',	'',	2,	'PrgEntw',	'',	''),
(166,	0,	'99',	'Netcologne 12/2011 Rechnung',	'erledigt',	'Horst',	'2012-01-12',	'2012-01-27',	'',	'',	'2012-01-30 17:20:25',	'',	5,	'Finanzen',	'',	''),
(167,	0,	'99',	'Cronjob ans laufen bringen',	'offen',	'Horst',	'2012-01-13',	'',	'',	'',	'2013-08-22 21:13:23',	'',	2,	'(ohne)',	'',	''),
(168,	0,	'99',	'Mieterverein 2011 Rechnung',	'erledigt',	'Horst',	'2012-01-19',	'2012-01-27',	'',	'',	'2012-01-30 17:20:07',	'',	5,	'Finanzen',	'',	''),
(169,	0,	'99',	'Austausch Joomla Komponente in Forum eintragen',	'offen',	'Horst',	'2012-01-19',	'',	'',	'',	'2013-08-22 21:13:15',	'',	2,	'PrgEntw',	'',	''),
(170,	0,	'99',	'Telekom Rechnung',	'erledigt',	'Christiane',	'2012-01-21',	'2012-02-27',	'',	'',	'2012-02-27 22:40:20',	'',	5,	'Finanzen',	'',	''),
(171,	0,	'99',	'Kindergarten Vereinsbeitrag 2011',	'erledigt',	'Horst',	'2012-01-21',	'2012-01-27',	'',	'',	'2012-01-30 17:19:47',	'',	5,	'Finanzen',	'',	''),
(172,	0,	'99',	'Zahnarzt Rechnung?',	'offen',	'Horst',	'2012-01-23',	'',	'',	'',	'2012-01-23 17:25:55',	'',	5,	'Finanzen',	'',	''),
(174,	0,	'99',	'Hibiscus installieren',	'erledigt',	'Horst',	'2012-01-26',	'2012-01-30',	'',	'reines Bankprogramm, nicht was ich suche...',	'2012-02-14 06:51:15',	'',	5,	'Computer',	'',	''),
(175,	0,	'99',	'Haftpflichtbeitrag, Zeitraum ?',	'erledigt',	'Horst',	'2012-01-30',	'2013-08-22',	'',	'',	'2013-08-22 21:13:01',	'',	2,	'Finanzen',	'',	''),
(176,	0,	'99',	'Auto wegen Auspuff reparieren',	'erledigt',	'Horst',	'2012-02-03',	'2012-03-07',	'',	'teure Reparatur',	'2012-03-13 17:22:49',	'',	5,	'Auto',	'',	''),
(177,	0,	'99',	'Mehrwertdienste sperren lassen',	'offen',	'Horst',	'2012-02-03',	'',	'',	'',	'2012-02-07 17:51:22',	'',	5,	'Haushalt',	'',	''),
(178,	0,	'99',	'WÃ¤sche waschen, saubere WÃ¤sche von schmutziger trenne, wie?',	'erledigt',	'Horst',	'2012-02-03',	'2012-02-05',	'',	'',	'2012-02-06 06:13:17',	'',	1,	'(ohne)',	'',	''),
(179,	0,	'99',	'Kleidung von Frieda aussortieren',	'offen',	'Horst',	'2012-02-04',	'',	'',	'',	'2012-02-06 06:12:54',	'',	3,	'(ohne)',	'',	''),
(180,	0,	'99',	'KÃ¼hlschrank abtauen',	'erledigt',	'Horst',	'2012-02-04',	'2012-02-05',	'',	'',	'2012-02-06 06:10:36',	'',	1,	'Haushalt',	'',	''),
(181,	0,	'99',	'Wann fahren wir zu Antonia / Fr - So oder Sa - Mo',	'erledigt',	'Horst',	'2012-02-04',	'2012-02-04',	'',	'Samstag bis Montag',	'2012-02-06 06:11:29',	'',	1,	'Besuche',	'',	''),
(182,	0,	'99',	'Oma Opa besuchen einmal im Monat abwechselnd',	'erledigt',	'Horst',	'2012-02-04',	'2012-02-05',	'',	'',	'2012-02-06 06:11:52',	'',	1,	'(ohne)',	'',	''),
(183,	0,	'99',	'Webcam installieren',	'offen',	'Horst',	'2012-02-07',	'',	'',	'',	'2012-02-07 17:49:43',	'',	4,	'Computer',	'',	''),
(184,	0,	'99',	'Mama Papa Betreuung klÃ¤ren',	'erledigt',	'Horst',	'2012-02-11',	'2012-03-13',	'',	'niemanden gefunden',	'2012-03-13 17:30:45',	'',	4,	'Familie',	'',	''),
(185,	0,	'99',	'LBS Frieda 50 Euro zurÃ¼ckfordern!',	'klaeren',	'Frieda',	'2012-02-11',	'',	'',	'',	'2013-08-22 20:59:57',	'',	5,	'Finanzen',	'',	''),
(186,	0,	'99',	'Frieda Probeschminken',	'erledigt',	'Christiane',	'2012-02-11',	'2012-02-11',	'',	'',	'2012-02-13 06:16:44',	'',	1,	'Familie',	'',	''),
(187,	0,	'99',	'Weihnachssachen abhÃ¤ngen',	'erledigt',	'Christiane',	'2012-02-11',	'2012-03-13',	'',	'',	'2012-03-13 17:27:44',	'',	4,	'Ordnung',	'',	''),
(188,	0,	'99',	'Kreuzkette fÃ¼r Antonia',	'erledigt',	'Christiane',	'2012-02-11',	'2012-03-02',	'',	'musste auf ohringe ausweichen',	'2012-03-02 17:29:04',	'',	5,	'Geschenk',	'',	''),
(189,	0,	'99',	'Wachsdecke Bund und durchsichtig',	'erledigt',	'Horst',	'2012-02-11',	'2012-02-11',	'',	'mit Frieda geholt',	'2012-02-13 06:18:21',	'',	1,	'Haushalt',	'',	''),
(190,	0,	'99',	'HDI Rechnung?',	'erledigt',	'Horst',	'2012-02-13',	'2012-02-27',	'',	'',	'2012-02-27 22:46:24',	'',	1,	'Finanzen',	'',	''),
(191,	0,	'99',	'Netcologne 01/2012 Rechnung',	'erledigt',	'Horst',	'2012-02-13',	'2012-02-27',	'',	'',	'2012-02-27 22:30:28',	'',	5,	'Finanzen',	'',	''),
(192,	0,	'99',	'Antonia Gastquatier per EMail klÃ¤ren',	'erledigt',	'Horst',	'2012-02-23',	'2012-03-08',	'',	'wurde telefonisch geklÃ¤rt',	'2012-03-13 17:24:08',	'',	5,	'Besuche',	'',	''),
(193,	0,	'99',	'Urlaub  einreichen fÃ¼r Sommerferien',	'offen',	'Horst',	'2012-02-24',	'',	'',	'',	'2012-02-24 17:28:13',	'',	4,	'Freizeit',	'',	''),
(194,	0,	'99',	'Urlaubsunterkunft fÃ¼r An- und Abreise klÃ¤ren',	'offen',	'Horst',	'2012-02-24',	'',	'',	'',	'2012-02-24 17:28:50',	'',	4,	'Freizeit',	'',	''),
(195,	0,	'99',	'Vermieter wg Rollo klÃ¤ren',	'erledigt',	'Christiane',	'2012-02-27',	'',	'',	'',	'2013-05-21 20:41:04',	'',	3,	'Reparatur',	'',	'Finanzen'),
(196,	154,	'99',	'Autoradio kaufen',	'erledigt',	'Horst',	'2012-03-02',	'2012-03-02',	'',	'Kennwood',	'2012-03-02 17:30:51',	'',	0,	'',	'',	''),
(197,	154,	'99',	'Autoradio einbauen',	'offen',	'Horst',	'2012-03-02',	'',	'',	'',	'2012-03-02 17:30:26',	'',	0,	'',	'',	''),
(198,	0,	'99',	'Scanner anschliessen',	'offen',	'Horst',	'2012-03-13',	'',	'',	'',	'2012-03-13 17:25:23',	'',	4,	'Computer',	'',	''),
(199,	0,	'99',	'Urlaub Versenden von GepÃ¤ck klÃ¤ren',	'offen',	'Horst',	'2012-03-13',	'',	'',	'',	'2012-03-13 17:29:20',	'',	3,	'Freizeit',	'',	''),
(200,	0,	'99',	'homepage horald.de joomla2.5 auf 2.5.3 updaten',	'erledigt',	'Horst',	'2012-03-16',	'2012-03-28',	'',	'',	'2012-03-29 16:50:34',	'',	4,	'Computer',	'',	''),
(203,	0,	'99',	'Netcologne 02/2012 Rechnung',	'erledigt',	'Horst',	'2012-03-23',	'2012-03-26',	'',	'',	'2012-03-27 05:00:27',	'',	5,	'Finanzen',	'',	''),
(213,	0,	'99',	'Libreoffice Umlaute bei Base klÃ¤ren',	'erledigt',	'Horst',	'2012-03-29',	'2012-04-16',	'',	'mit JDBC-Bridge werden die Umlaute korrekt dargestellt. (nur bei ODBC nicht)',	'2012-04-16 16:48:32',	'',	4,	'Computer',	'',	''),
(223,	0,	'99',	'bindfs testen',	'offen',	'Horst',	'2012-03-30',	'',	'',	'',	'2013-08-22 21:12:34',	'',	2,	'Computer',	'',	''),
(233,	0,	'99',	'Lohnsteuer 2011 klÃ¤ren',	'offen',	'Horst',	'2012-04-11',	'',	'',	'',	'2012-04-11 17:56:43',	'',	4,	'Finanzen',	'',	''),
(243,	0,	'99',	'GenoStrom Brief Ã¶ffnen und antworten',	'erledigt',	'Horst',	'2012-04-12',	'2012-04-24',	'',	'AnmeldebestÃ¤tigung',	'2012-04-23 23:13:44',	'',	5,	'Finanzen',	'',	''),
(251,	0,	'99',	'AnhÃ¤nger montieren lassen',	'erledigt',	'Horst',	'2012-04-16',	'2013-03-05',	'',	'Auto verkauft',	'2013-03-05 17:32:28',	'',	4,	'Auto',	'',	''),
(253,	0,	'99',	'Netcologne 03/2012 Rechnung',	'erledigt',	'Horst',	'2012-04-17',	'2012-04-24',	'',	'',	'2012-04-23 23:13:22',	'',	5,	'Finanzen',	'',	''),
(263,	0,	'99',	'Wunschliste webportal programmieren',	'offen',	'Horst',	'2012-04-20',	'',	'',	'',	'2012-04-20 16:19:02',	'',	4,	'PrgEntw',	'',	''),
(273,	0,	'99',	'perl-aufruf mit apache klÃ¤ren',	'offen',	'Horst',	'2012-04-20',	'',	'',	'',	'2013-08-22 21:12:14',	'',	3,	'PrgEntw',	'',	''),
(283,	0,	'99',	'Projektverwaltung qdpm installieren',	'offen',	'Horst',	'2012-04-23',	'',	'',	'',	'2012-04-23 15:57:24',	'',	5,	'Computer',	'http://localhost/webportal/einkauf/index.php',	''),
(293,	0,	'99',	'Projekt BÃ¼rgerzentrum eintragen',	'offen',	'Horst',	'2012-04-23',	'',	'',	'',	'2012-04-23 15:50:03',	'',	5,	'(ohne)',	'',	''),
(303,	251,	'99',	'Anfrage auf Preis fÃ¼r Montage',	'erledigt',	'Horst',	'2012-04-23',	'2012-04-24',	'',	'per Mail erfolgt',	'2012-04-23 23:12:56',	'',	0,	'',	'',	''),
(313,	159,	'99',	'DVD+RW formatieren 10 StÃ¼ck',	'offen',	'Horst',	'2012-04-23',	'',	'',	'',	'2012-04-23 16:28:31',	'',	0,	'',	'',	''),
(323,	159,	'99',	'DVD+RW Cover drucken',	'offen',	'Horst',	'2012-04-23',	'',	'',	'',	'2012-04-23 16:28:57',	'',	0,	'',	'',	''),
(333,	159,	'99',	'Back-in-time testen (root)',	'offen',	'Horst',	'2012-04-23',	'',	'',	'',	'2012-04-23 16:29:23',	'',	0,	'',	'',	''),
(343,	251,	'99',	'AnhÃ¤ngerkupplung bestellen',	'offen',	'Horst',	'2012-04-24',	'',	'',	'',	'2012-04-23 23:12:32',	'',	0,	'',	'',	''),
(353,	0,	'99',	'Android Entwicklungsumgebung installieren',	'offen',	'Horst',	'2012-04-24',	'',	'',	'',	'2013-08-22 21:12:05',	'',	3,	'Computer',	'',	''),
(363,	0,	'99',	'Ehe',	'Problem',	'Horst',	'2012-05-02',	'',	'',	'',	'2012-05-02 16:18:36',	'',	5,	'Familie',	'http://localhost/webportal/Erledigung/update.php?idwert=373',	''),
(373,	0,	'99',	'Mut',	'Problem',	'Horst',	'2012-05-02',	'',	'',	'',	'2012-05-02 16:11:42',	'',	1,	'(ohne)',	'',	''),
(383,	0,	'99',	'Rechtsschutz',	'Problem',	'Horst',	'2012-05-02',	'',	'',	'',	'2012-05-02 16:12:35',	'',	1,	'(ohne)',	'',	''),
(393,	0,	'99',	'Finanzen',	'Problem',	'Horst',	'2012-05-02',	'',	'',	'',	'2012-05-02 16:26:17',	'',	1,	'(ohne)',	'http://localhost/webportal/Erledigung/showtab.php?setfilter=1&filter=offen&userfilter=Horst&priorfilter=0&grpfilter=Finanzen',	''),
(403,	0,	'99',	'Lifecare',	'Problem',	'Horst',	'2012-05-02',	'',	'',	'',	'2012-05-02 16:13:21',	'',	1,	'(ohne)',	'',	''),
(413,	0,	'99',	'Report designer finden fÃ¼r Libre office',	'Problem',	'Horst',	'2012-05-02',	'',	'',	'',	'2012-05-02 16:16:29',	'',	4,	'PrgEntw',	'',	''),
(1753,	0,	'',	'Briefe',	'zurueckges',	'Horst',	'2013-02-12',	'',	'',	'',	'2013-08-22 21:01:46',	'',	5,	'Ordnung',	'',	'Erledigung'),
(1763,	1753,	'',	'test',	'offen',	'Horst',	'2013-02-12',	'',	'',	'',	'2013-02-12 06:46:57',	'',	5,	'Ordnung',	'',	''),
(1773,	0,	'99',	'young-people-portraitphoto 16,50',	'erledigt',	'Horst',	'2013-02-12',	'',	'',	'groÃŸes PortrÃ¤tfoto wurde nicht bezahlt.',	'2013-02-20 06:53:37',	'',	5,	'Finanzen',	'',	'Erledigung'),
(1783,	0,	'99',	'Beitrag Mieterverein',	'erledigt',	'Horst',	'2013-02-12',	'',	'',	'',	'2013-02-20 06:47:28',	'',	5,	'Finanzen',	'',	'Erledigung'),
(1793,	0,	'',	'Netcologne 01/2013 Rechnung',	'erledigt',	'Horst',	'2013-01-05',	'',	'',	'Ratenzahlung von 350 Euro vereinbart.',	'2013-02-20 06:55:33',	'',	5,	'Finanzen',	'',	'Erledigung'),
(1843,	0,	'99',	'Quasselstrippe MÃ¤rz-Ausgabe fertigmachen',	'erledigt',	'Horst',	'2013-03-05',	'2013-06-12',	'',	'',	'2013-06-12 06:02:56',	'',	5,	'(ohne)',	'',	'Erledigung'),
(1853,	1843,	'99',	'Quasselstrippe ausdrucken',	'offen',	'Horst',	'2013-03-05',	'',	'',	'',	'2013-03-05 16:47:09',	'',	0,	'',	'',	''),
(1863,	1843,	'99',	'Quasselstrippe an Frau Grothaus Ã¼bergeben',	'offen',	'Horst',	'2013-03-05',	'',	'',	'',	'2013-03-05 16:47:34',	'',	0,	'',	'',	''),
(1873,	1843,	'99',	'Quasselstrippe per Mail an Frau Grothaus',	'offen',	'Horst',	'2013-03-05',	'',	'',	'',	'2013-03-05 16:48:01',	'',	0,	'',	'',	''),
(1883,	0,	'',	'Handschuhe wegen Umtausch zurÃ¼ckschicken',	'erledigt',	'Horst',	'2013-03-05',	'2013-04-25',	'',	'',	'2013-04-25 05:28:04',	'',	4,	'privat',	'',	'Erledigung'),
(1893,	0,	'',	'Netcologne 02/2013 Rechnung',	'erledigt',	'Horst',	'2013-02-05',	'2013-04-25',	'',	'',	'2013-04-25 05:02:14',	'',	5,	'Finanzen',	'',	'Erledigung'),
(1923,	0,	'',	'Brief an Verbraucherzentrale',	'erledigt',	'Horst',	'2013-04-26',	'2013-04-30',	'',	'heute termin vor ort',	'2013-04-30 14:03:30',	'',	5,	'Finanzen',	'',	'Erledigung'),
(1993,	0,	'06',	'Netcologne 04/2013 Rechnung',	'in Arbeit',	'Horst',	'2013-04-05',	'',	'',	'in KlÃ¤rung',	'2013-07-18 08:15:41',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2003,	0,	'04',	'SteuererklÃ¤rung abgeben, warte auf Christianes SteuererklÃ¤rung',	'erledigt',	'Horst',	'2013-05-08',	'2013-07-11',	'',	'',	'2013-07-11 09:42:08',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2013,	0,	'',	'Beschwerde bei Bundesnetzagentur',	'in Arbeit',	'Horst',	'2013-05-13',	'',	'',	'',	'2013-06-12 06:00:01',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2023,	0,	'',	'Webportal Werbetext schreiben',	'offen',	'Christiane',	'2013-05-21',	'',	'',	'',	'2013-05-21 20:03:30',	'',	0,	'(ohne)',	'',	'(ohne)'),
(2033,	0,	'',	'Videos brennen',	'zurueckges',	'Horst',	'2013-05-23',	'',	'',	'Ã¼bertragung von der Kamera funktioniert nicht',	'2013-08-22 21:08:46',	'',	4,	'Computer',	'',	'Erledigung'),
(2044,	0,	'',	'bÃ¼geln',	'offen',	'Christiane',	'2013-08-21',	'',	'',	'',	'2013-08-22 20:47:59',	'',	0,	'Haushalt',	'',	'Erledigung'),
(2054,	0,	'',	'Dienstplan fÃ¼r Oktober machen',	'offen',	'Christiane',	'2013-08-21',	'',	'',	'',	'2013-08-22 20:48:09',	'',	0,	'Finanzen',	'',	'Erledigung'),
(2043,	0,	'05',	'Netcologne Ratenzahlung Dauerauftrag einrichten',	'erledigt',	'Horst',	'2013-06-12',	'2013-07-13',	'',	'',	'2013-07-13 19:58:32',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2053,	0,	'',	'Geschenk fÃ¼r Mama',	'erledigt',	'Horst',	'2013-06-12',	'2013-06-10',	'',	'',	'2013-07-01 18:29:17',	'',	5,	'Geschenk',	'',	'Erledigung'),
(2063,	0,	'',	'Petition wg Telefonsperre bewerben',	'in Arbeit',	'Horst',	'2013-07-01',	'',	'',	'',	'2013-07-05 20:45:05',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2073,	0,	'',	'joorgportal einrichten und umbenennen',	'erledigt',	'Horst',	'2013-07-01',	'2013-07-31',	'',	'',	'2013-07-31 21:41:08',	'',	4,	'Computer',	'',	'Erledigung'),
(2083,	0,	'03',	'Beitrag fÃ¼r Lohnsteuerverein klÃ¤ren',	'erledigt',	'Horst',	'2013-07-01',	'2013-07-11',	'',	'159,-- Euro Ã¼berwiesen',	'2013-07-11 09:42:43',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2093,	0,	'09',	'KFZ-Steuer klÃ¤ren',	'in Arbeit',	'Horst',	'2013-07-01',	'',	'',	'',	'2013-07-18 17:13:48',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2103,	0,	'',	'Warten auf Netzwerk 60 sec beheben',	'erledigt',	'Horst',	'2013-07-05',	'2013-07-09',	'',	'falsch konfiguriert',	'2013-07-09 17:51:16',	'',	1,	'Xubuntu-12.04',	'',	'Themen'),
(2113,	0,	'',	'update-manager lÃ¤uft nicht',	'erledigt',	'Horst',	'2013-07-05',	'2013-07-12',	'',	'',	'2013-07-12 08:19:46',	'',	1,	'Xubuntu-12.04',	'',	'Themen'),
(2123,	0,	'',	'Touchpad stÃ¼rzt ab',	'offen',	'Horst',	'2013-07-05',	'',	'',	'',	'2013-07-12 20:15:53',	'',	1,	'Xubuntu-12.04',	'',	'Themen'),
(2133,	0,	'',	'PDF-Plugin in Firefox installieren',	'offen',	'Horst',	'2013-07-05',	'',	'',	'',	'2013-07-05 16:31:02',	'',	1,	'Bugs',	'',	'Themen'),
(2143,	0,	'07',	'Netcologne 05/2013 Rechnung',	'in Arbeit',	'Horst',	'2013-05-05',	'',	'',	'',	'2013-07-18 08:15:49',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2153,	0,	'08',	'Netcologne 06/2013 Rechnung',	'in Arbeit',	'Horst',	'2013-05-05',	'',	'',	'',	'2013-07-18 17:13:27',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2163,	0,	'01',	'Versicherungsschein besorgen',	'erledigt',	'Horst',	'2013-07-10',	'2013-07-18',	'',	'',	'2013-07-18 08:16:21',	'',	5,	'Auto',	'',	'Erledigung'),
(2173,	0,	'02',	'Fahrzeug ummelden',	'in Arbeit',	'Horst',	'2013-07-10',	'',	'',	'',	'2013-07-18 17:13:38',	'',	5,	'Auto',	'',	'Erledigung'),
(2183,	0,	'',	'nm-applet wird beim start nicht angezeigt',	'offen',	'Horst',	'2013-07-12',	'',	'',	'',	'2013-07-12 08:19:28',	'',	1,	'Xubuntu-12.04',	'',	'Themen'),
(2193,	0,	'',	'onboard-tastatur ausblenden beim start',	'offen',	'Horst',	'2013-07-13',	'',	'',	'',	'2013-07-13 10:54:02',	'',	1,	'Xubuntu-12.04',	'',	'Themen'),
(2203,	0,	'',	'Defektes Smartphone einschicken',	'in Arbeit',	'Horst',	'2013-07-18',	'',	'',	'',	'2013-07-18 17:13:13',	'',	5,	'privat',	'',	'Erledigung'),
(2213,	0,	'',	'Krankenkasse wg Anreise Klinik klÃ¤ren',	'erledigt',	'Horst',	'2013-07-18',	'2013-07-31',	'',	'muÃŸ ich selbst tragen',	'2013-07-31 21:40:02',	'',	5,	'privat',	'',	'Erledigung'),
(2223,	0,	'',	'Klinik wg OP-Termin nachfragen',	'erledigt',	'Horst',	'2013-07-18',	'2013-08-22',	'',	'',	'2013-08-22 21:08:35',	'',	5,	'privat',	'',	'Erledigung'),
(1423,	0,	'',	'Adventskalendar aus Spannplatten basteln',	'erledigt',	'Horst',	'2012-11-07',	'2015-11-29',	'',	'provisorisch fertig',	'2015-12-07 17:51:53',	'',	3,	'Familie',	'',	'Erledigung'),
(2233,	0,	'',	'Guthaben handy aufladen',	'erledigt',	'Horst',	'2013-09-09',	'2014-10-27',	'',	'',	'2014-10-27 22:04:41',	'',	4,	'(ohne)',	'',	'Erledigung'),
(2234,	0,	'',	'Alten Fernseher entsorgen',	'in Arbeit',	'Horst',	'2014-10-22',	'',	'',	'',	'2014-10-23 05:24:38',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2235,	0,	'',	'Congstar online Zugang erfragen',	'erledigt',	'Horst',	'2014-10-22',	'2014-10-27',	'',	'',	'2014-10-27 22:54:59',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2236,	0,	'',	'Automatisches Datenbank Backup',	'erledigt',	'Horst',	'2014-10-22',	'',	'',	'',	'2016-01-12 06:59:51',	'',	4,	'(ohne)',	'',	'Erledigung'),
(2237,	0,	'',	'Backup auf USB-Festplatte',	'offen',	'Horst',	'2014-10-22',	'',	'',	'',	'2016-01-12 07:00:55',	'',	1,	'(ohne)',	'',	'Erledigung'),
(2238,	0,	'',	'Haushaltshilfe suchen',	'zurueckges',	'Horst',	'2014-10-22',	'',	'',	'',	'2015-04-20 05:28:28',	'',	4,	'(ohne)',	'',	'Erledigung'),
(2239,	0,	'',	'Telefonrechnung bezahlen',	'erledigt',	'Horst',	'2014-10-22',	'2015-04-20',	'',	'',	'2015-04-20 05:26:20',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2240,	0,	'',	'Kreditkonto aufladen',	'erledigt',	'Horst',	'2014-10-22',	'2014-10-23',	'',	'',	'2014-10-22 22:45:26',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2241,	0,	'',	'Webcam Bestellung wiederholen',	'erledigt',	'Horst',	'2014-10-22',	'',	'',	'',	'2015-02-07 09:51:57',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2242,	0,	'',	'Spardauerauftrag umbuchen',	'erledigt',	'Horst',	'2014-10-22',	'2014-10-27',	'',	'',	'2014-10-27 22:35:39',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2243,	0,	'',	'Passbilder machen',	'erledigt',	'Horst',	'2014-10-22',	'',	'',	'',	'2015-02-07 09:50:29',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2244,	0,	'',	'Perso verlÃ¤ngern',	'erledigt',	'Horst',	'2014-10-22',	'',	'',	'',	'2015-02-07 09:50:13',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2245,	0,	'',	'Daten vom alten Laptop kopieren',	'offen',	'Horst',	'2014-10-22',	'',	'',	'',	'2016-01-12 07:00:09',	'',	1,	'(ohne)',	'',	'Erledigung'),
(2246,	0,	'',	'Homeplug Power Lan Adapter besorgen',	'erledigt',	'Horst',	'2014-10-23',	'2014-10-27',	'',	'',	'2014-10-27 22:03:46',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2247,	0,	'',	'Kita Konto mitteilen',	'erledigt',	'Horst',	'2014-10-23',	'2014-10-27',	'',	'',	'2014-10-27 22:04:03',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2248,	0,	'',	'Porto 60cent besorgen',	'erledigt',	'Horst',	'2014-10-23',	'2014-10-27',	'',	'',	'2014-10-27 07:10:07',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2249,	0,	'',	'Brief Mittweida einwerfen mit Porto',	'erledigt',	'Horst',	'2014-10-23',	'2014-10-27',	'',	'',	'2014-10-27 07:10:22',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2250,	0,	'',	'Telekom-Schreiben widersprechen',	'erledigt',	'Horst',	'2014-10-27',	'2014-10-27',	'',	'',	'2014-10-27 22:03:12',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2251,	0,	'',	'Nebenkostenabrechnung antworten',	'erledigt',	'Horst',	'2014-10-27',	'',	'',	'',	'2015-02-07 09:51:24',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2252,	0,	'',	'Toner blau u rot bestellen',	'erledigt',	'Horst',	'2014-10-28',	'',	'',	'',	'2015-12-07 17:54:06',	'',	4,	'(ohne)',	'',	'Erledigung'),
(2253,	0,	'',	'Wein als Geschenk besorgen',	'erledigt',	'Horst',	'2014-10-28',	'2014-10-31',	'',	'',	'2014-11-03 06:16:22',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2254,	0,	'',	'Paket Webcam wegschicken',	'erledigt',	'Horst',	'2014-10-28',	'2014-10-30',	'',	'',	'2014-10-30 06:18:59',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2255,	0,	'',	'Nachthosen besorgen',	'erledigt',	'Horst',	'2014-10-28',	'2014-10-30',	'',	'',	'2014-10-30 06:16:20',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2256,	0,	'',	'Daten von Horst2000 Rechner sichern und kopieren',	'offen',	'Horst',	'2014-10-30',	'',	'',	'',	'2016-01-12 06:58:50',	'',	1,	'(ohne)',	'',	'Erledigung'),
(2257,	0,	'',	'alten Fernseher und AltgerÃ¤te am 6.11. rausstellen',	'erledigt',	'Horst',	'2014-11-03',	'',	'',	'',	'2015-02-07 09:50:45',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2258,	0,	'',	'Konten Bank Horst abrufen',	'offen',	'Horst',	'2014-11-03',	'',	'',	'',	'2015-04-20 05:39:45',	'',	4,	'Finanzen',	'',	'Erledigung'),
(2259,	0,	'',	'Konten Bank Chris abrufen',	'offen',	'Horst',	'2014-11-03',	'',	'',	'',	'2015-04-20 05:40:01',	'',	4,	'Finanzen',	'',	'Erledigung'),
(2260,	0,	'',	'Forderungsmanagement',	'zurueckges',	'Horst',	'2015-02-07',	'',	'',	'',	'2015-04-20 05:24:48',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2261,	0,	'',	'Neuen Rechtsschutz',	'in Arbeit',	'Horst',	'2015-02-07',	'',	'',	'',	'2015-04-20 05:25:13',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2262,	0,	'',	'ADAC Kündigung klären',	'erledigt',	'Horst',	'2015-02-07',	'',	'',	'',	'2015-12-07 17:52:22',	'',	3,	'Finanzen',	'',	'Erledigung'),
(2263,	0,	'',	'Krankenkassenbrief Ã¶ffnen',	'offen',	'Christiane',	'2015-02-07',	'',	'',	'',	'2015-02-07 09:54:42',	'',	5,	'(ohne)',	'',	'Erledigung'),
(2264,	0,	'',	'CreditForm klären',	'erledigt',	'Horst',	'2015-02-07',	'2015-04-27',	'',	'',	'2015-04-27 15:30:37',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2265,	0,	'',	'Neuen Lohnsteuerverein',	'in Arbeit',	'Horst',	'2015-02-07',	'',	'',	'',	'2015-04-20 05:38:23',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2266,	0,	'',	'Lesebrief über die Ungerechtigkeiten',	'offen',	'Horst',	'2015-02-07',	'',	'',	'',	'2015-04-27 15:30:51',	'',	3,	'Finanzen',	'',	'Erledigung'),
(2267,	0,	'',	'Lohnsteuervereine Retour austragen',	'offen',	'Horst',	'2015-04-20',	'',	'',	'',	'2015-04-20 05:14:42',	'',	3,	'Finanzen',	'',	'Erledigung'),
(2268,	0,	'',	'Rechtsschutz Retour austragen',	'offen',	'Horst',	'2015-04-20',	'',	'',	'',	'2015-04-20 05:29:31',	'',	3,	'Finanzen',	'',	'Erledigung'),
(2269,	0,	'',	'Super Folkband',	'offen',	'Horst',	'2015-07-01',	'',	'',	'',	'2015-07-01 05:07:39',	'',	5,	'Lebensträume',	'',	'Themen'),
(2271,	0,	'',	'Bankbrief öffnen',	'offen',	'Horst',	'2016-01-06',	'',	'',	'',	'2016-01-12 07:02:23',	'',	5,	'Briefe',	'',	'Erledigung'),
(2281,	0,	'',	'Austausch von Mainboard bei Snogard anfragen',	'in Arbeit',	'Horst',	'2016-01-06',	'',	'',	'',	'2016-01-12 07:05:50',	'',	5,	'Computer',	'',	'Erledigung'),
(2291,	0,	'',	'Lohi Mitteilung lesen',	'offen',	'Horst',	'2016-01-14',	'',	'',	'',	'2016-01-14 06:31:12',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2301,	0,	'',	'Flinkster Tankquittungen einreichen',	'offen',	'Horst',	'2016-01-04',	'',	'',	'',	'2016-01-14 06:32:42',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2311,	0,	'',	'Thunderbird einrichten',	'offen',	'Horst',	'0000-00-00',	'',	'',	'',	'2016-01-20 06:45:22',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten'),
(2321,	0,	'',	'Privoxy einrichten',	'offen',	'Horst',	'0000-00-00',	'',	'',	'',	'2016-01-20 06:45:35',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten'),
(2331,	0,	'',	'Squid berechtigungen einrichten',	'offen',	'Horst',	'0000-00-00',	'',	'',	'',	'2016-01-20 06:45:53',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten'),
(2341,	0,	'',	'Drucker einrichten',	'offen',	'Horst',	'0000-00-00',	'',	'',	'',	'2016-01-20 06:46:07',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten'),
(2351,	0,	'',	'Prepaid aufladen',	'offen',	'Horst',	'2016-01-20',	'',	'',	'',	'2016-01-20 06:48:15',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2361,	0,	'',	'Netcologne 12/2015 bezahlen',	'offen',	'Horst',	'2016-01-20',	'',	'',	'',	'2016-01-20 06:48:28',	'',	5,	'Finanzen',	'',	'Erledigung'),
(2371,	0,	'',	'Firefox Favoriten',	'offen',	'Horst',	'2016-01-21',	'',	'',	'',	'2016-01-21 05:57:46',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten'),
(2381,	0,	'',	'Apache einrichten',	'offen',	'Horst',	'0000-00-00',	'',	'',	'',	'2016-01-21 05:59:00',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten'),
(2391,	0,	'',	'Joorgportal',	'offen',	'Horst',	'0000-00-00',	'',	'',	'',	'2016-01-21 05:59:27',	'',	5,	'Ubuntu einrichten',	'',	'Computerarbeiten');

CREATE TABLE `tblerl_dauer` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldprior` int(11) NOT NULL,
  `flddatum` date NOT NULL,
  `fldstatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldGruppe` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldcategory` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldbenutzer` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldmonat` int(11) NOT NULL,
  `fldkorrektur` int(11) NOT NULL DEFAULT '0',
  `fldzeitraum` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldaktiv` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblessensplan` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddatum` date NOT NULL,
  `fldbez` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `fldid_rezepte` bigint(20) NOT NULL,
  `fldzeit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tblessensplan` (`fldindex`, `flddatum`, `fldbez`, `fldid_rezepte`, `fldzeit`) VALUES
(1,	'2011-09-05',	'Spaghetti',	0,	''),
(2,	'2011-09-06',	'Pizza',	0,	''),
(3,	'2011-09-07',	'KnÃ¶del',	0,	''),
(4,	'2011-09-10',	'Nudeln',	0,	''),
(5,	'2011-09-17',	'Nudeln',	0,	''),
(6,	'2011-09-12',	'Spaghetti',	0,	''),
(7,	'2011-09-13',	'Pizza',	0,	''),
(9,	'2011-09-18',	'sÃ¼ÃŸe speise',	0,	''),
(14,	'2012-04-04',	'Gnocchi mit Gorgonzolasauce',	0,	''),
(24,	'2012-04-05',	'gebackener Camembert mit Preiselbeeren und Reis',	0,	''),
(34,	'2012-04-06',	'Spinat mit Kartoffeln und RÃ¼hrei',	0,	''),
(44,	'2012-04-07',	'Nudeln mit TomatensoÃŸe',	0,	''),
(54,	'2012-04-08',	'Osterbrunch in Kamen',	0,	''),
(64,	'2012-04-09',	'Linsenbraten mit Rotkohl und KlÃ¶ÃŸen Nachtisch Eis',	0,	''),
(74,	'2012-04-10',	'vegetarische WÃ¼rstchen mit Pommes und GemÃ¼se',	0,	''),
(84,	'2012-04-11',	'GemÃ¼seauflauf',	0,	''),
(94,	'2012-04-12',	'Gnocchi a la Spinaci',	0,	''),
(104,	'2012-04-13',	'Reibekuchen mit Apfelmus',	0,	''),
(114,	'2012-04-14',	'Tortellini mit KÃ¤sesauce',	0,	''),
(93,	'2012-10-01',	'Lasagne (Teil2)',	0,	''),
(103,	'2012-10-02',	'Toast Hawaii (vegetarisch mit Tofuaufschnitt)',	0,	''),
(113,	'2012-10-03',	'Reibekuchen',	0,	''),
(133,	'2012-10-04',	'Rosenkohl Auflauf',	0,	''),
(143,	'2012-10-05',	'Veggi-Burger mit Fritten',	0,	''),
(123,	'2012-10-06',	'Nudeln',	0,	''),
(144,	'2013-07-29',	'',	0,	''),
(154,	'2013-07-29',	'Calyone',	0,	''),
(164,	'2014-07-28',	'Calzone',	0,	''),
(174,	'2014-08-01',	'veggischnitzel mit fritten',	0,	''),
(184,	'2014-07-30',	'spaetzle mit pilzen',	0,	''),
(194,	'2014-07-27',	'Falafeln',	0,	''),
(204,	'2014-08-30',	'Nudeln',	0,	''),
(214,	'2014-07-31',	'Chili con Carne SuperNova',	0,	''),
(224,	'2014-07-29',	'Apfelpfannekuchen',	0,	''),
(225,	'2015-08-24',	'Nudelauflauf',	0,	''),
(226,	'2015-08-25',	'Couscous mit Gemüse',	0,	''),
(227,	'2015-08-26',	'Spinat mit Tofu Nuggets und Kartoffeln',	0,	''),
(228,	'2015-08-27',	'Pizza',	0,	''),
(229,	'2015-08-28',	'Ofenkartoffeln mit Würstchen und Gemüse',	0,	''),
(230,	'2015-08-29',	'Nudeln a la Papa',	0,	'');

CREATE TABLE `tbletagen` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldbildid` bigint(20) NOT NULL,
  `fldwidth` int(11) NOT NULL,
  `fldheight` int(11) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbletagen` (`fldindex`, `fldbez`, `fldbildid`, `fldwidth`, `fldheight`) VALUES
(3,	'Untergeschoss',	0,	0,	0),
(13,	'Erdgeschoss',	0,	0,	0),
(23,	'1. Stock',	203,	360,	440),
(33,	'2. Stock',	0,	0,	0),
(43,	'Dachgeschoss',	0,	0,	0);

CREATE TABLE `tblfahrtenbuch` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldFahrzeug` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldVondatum` date NOT NULL,
  `fldBisdatum` date NOT NULL,
  `fldVonkm` int(11) NOT NULL,
  `fldBiskm` int(11) NOT NULL,
  `fldDauer` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldZeittarif` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldStatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldind_datum` bigint(20) NOT NULL,
  `fldid_adr` bigint(20) NOT NULL,
  `fldKmpreis` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flddbsyncnr` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblfahrtenbuch` (`fldIndex`, `fldFahrzeug`, `fldVondatum`, `fldBisdatum`, `fldVonkm`, `fldBiskm`, `fldDauer`, `fldZeittarif`, `fldStatus`, `fldind_datum`, `fldid_adr`, `fldKmpreis`, `fldtimestamp`, `flddbsyncnr`) VALUES
(13,	'Citroen',	'2013-01-19',	'0000-00-00',	0,	86,	'4',	'1.5',	'OK',	43,	493,	'',	'0000-00-00 00:00:00',	1),
(103,	'MonatsgebÃ¼hr 02',	'2013-01-19',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	43,	493,	'',	'0000-00-00 00:00:00',	1),
(23,	'Alfa Romeo',	'2013-01-21',	'0000-00-00',	0,	42,	'2.5',	'1.5',	'OK',	53,	493,	'',	'0000-00-00 00:00:00',	1),
(33,	'Alfa Romeo',	'2013-01-26',	'0000-00-00',	0,	32,	'6.5',	'1.5',	'OK',	53,	493,	'',	'0000-00-00 00:00:00',	1),
(43,	'Citroen',	'2013-01-28',	'0000-00-00',	0,	59,	'3.5',	'1.5',	'OK',	53,	493,	'',	'0000-00-00 00:00:00',	1),
(53,	'Alfa Romeo',	'2013-02-02',	'0000-00-00',	67216,	67251,	'4',	'1.5',	'OK',	53,	493,	'',	'0000-00-00 00:00:00',	1),
(63,	'Citroen',	'2013-02-04',	'0000-00-00',	15333,	15392,	'3.5',	'1.5',	'OK',	53,	493,	'',	'0000-00-00 00:00:00',	1),
(73,	'Citroen (Storno)',	'2013-02-13',	'0000-00-00',	0,	0,	'2.63',	'1',	'OK',	53,	493,	'',	'0000-00-00 00:00:00',	1),
(83,	'Citroen',	'2013-02-16',	'0000-00-00',	187,	208,	'4.5',	'1.5',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(293,	'Storno RÃ¼ckgabe Ã„nderung',	'2013-02-16',	'0000-00-00',	0,	0,	'0.75',	'1',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(283,	'MonatsgebÃ¼hr 03',	'2013-02-18',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(303,	'Storno RÃ¼ckgabe',	'2013-02-20',	'0000-00-00',	0,	0,	'-0.75',	'1',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(93,	'Citroen',	'2013-02-20',	'0000-00-00',	445,	510,	'7',	'1.5',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(113,	'Citroen',	'2013-02-23',	'0000-00-00',	567,	590,	'3.5',	'1.5',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(313,	'Citroen',	'2013-02-25',	'0000-00-00',	0,	57,	'3.5',	'1.5',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(123,	'Opel Corsa',	'2013-03-02',	'0000-00-00',	1172,	1209,	'4.5',	'2',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(323,	'Ã„nderung',	'2013-03-02',	'0000-00-00',	0,	0,	'1',	'1.5',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(143,	'Citroen',	'2013-03-04',	'0000-00-00',	17465,	17522,	'3.5',	'1.5',	'OK',	63,	493,	'',	'0000-00-00 00:00:00',	1),
(133,	'Fiesta',	'2013-03-16',	'0000-00-00',	38042,	38066,	'3',	'2',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(343,	'Citroen',	'2013-03-18',	'0000-00-00',	0,	66,	'3.5',	'1.5',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(333,	'MonatsgebÃ¼hr 04',	'2013-03-18',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(363,	'Storno RÃ¼ckgabe',	'2013-03-23',	'0000-00-00',	0,	0,	'-10.5',	'1',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(353,	'Citroen',	'2013-03-23',	'0000-00-00',	0,	31,	'20',	'1.5',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(153,	'Citroen',	'2013-04-06',	'0000-00-00',	1899,	1977,	'12',	'1.5',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(373,	'Storno RÃ¼ckgabe',	'2013-04-06',	'0000-00-00',	0,	0,	'-3',	'1',	'OK',	73,	493,	'',	'0000-00-00 00:00:00',	1),
(383,	'MonatsgebÃ¼hr 05',	'2013-04-18',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(393,	'Citroen',	'2013-04-20',	'0000-00-00',	0,	20,	'8',	'1.5',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(453,	'Storno RÃ¼ckgabe',	'2013-04-25',	'0000-00-00',	0,	0,	'-0.37',	'1',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(403,	'Citroen',	'2013-04-25',	'0000-00-00',	0,	31,	'2',	'1.5',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(413,	'Citroen',	'2013-04-27',	'0000-00-00',	0,	28,	'9',	'1.5',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(423,	'Storno RÃ¼ckgabe',	'2013-04-27',	'0000-00-00',	0,	0,	'-1.12',	'1',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(433,	'Citroen',	'2013-04-29',	'0000-00-00',	0,	58,	'4.5',	'1.5',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(443,	'Storno RÃ¼ckgabe',	'2013-04-29',	'0000-00-00',	0,	0,	'-0.37',	'1',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(163,	'Citroen',	'2013-05-06',	'0000-00-00',	21441,	21500,	'3',	'1.5',	'OK',	83,	493,	'',	'0000-00-00 00:00:00',	1),
(173,	'Citroen',	'2013-05-11',	'0000-00-00',	21745,	21770,	'6',	'1.5',	'OK',	93,	493,	'',	'0000-00-00 00:00:00',	1),
(183,	'Citroen',	'2013-05-15',	'0000-00-00',	22049,	22106,	'3.5',	'1.5',	'OK',	93,	493,	'',	'0000-00-00 00:00:00',	1),
(193,	'Citroen',	'2013-05-17',	'0000-00-00',	3658,	3707,	'10',	'1.5',	'OK',	93,	493,	'',	'0000-00-00 00:00:00',	1),
(473,	'Storno RÃ¼ckgabe',	'2013-05-17',	'0000-00-00',	0,	0,	'-1.12',	'1',	'OK',	93,	493,	'',	'0000-00-00 00:00:00',	1),
(463,	'MonatsgebÃ¼hr 06',	'2013-05-18',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	93,	493,	'',	'0000-00-00 00:00:00',	1),
(203,	'Citroen',	'2013-05-27',	'0000-00-00',	5253,	5321,	'7.5',	'1.5',	'OK',	93,	493,	'',	'0000-00-00 00:00:00',	1),
(223,	'Citroen',	'2013-06-16',	'0000-00-00',	8447,	8474,	'2',	'1.5',	'OK',	33,	493,	'',	'0000-00-00 00:00:00',	1),
(263,	'Storno RÃ¼ckgabe',	'2013-06-16',	'0000-00-00',	0,	0,	'-0.75',	'1',	'OK',	33,	493,	'',	'0000-00-00 00:00:00',	1),
(253,	'MonatsgebÃ¼hr 07',	'2013-06-19',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	33,	493,	'',	'0000-00-00 00:00:00',	1),
(273,	'Storno RÃ¼ckgabe',	'2013-06-22',	'0000-00-00',	0,	0,	'-1.12',	'1',	'OK',	33,	493,	'',	'0000-00-00 00:00:00',	1),
(213,	'Citroen',	'2013-06-22',	'0000-00-00',	7105,	7127,	'6',	'1.5',	'OK',	33,	493,	'',	'0000-00-00 00:00:00',	1),
(243,	'Citroen',	'2013-07-06',	'0000-00-00',	39398,	39419,	'10',	'1.5',	'OK',	33,	493,	'',	'0000-00-00 00:00:00',	1),
(233,	'Citroen',	'2013-07-08',	'0000-00-00',	26012,	26038,	'2',	'1.5',	'OK',	113,	493,	'',	'0000-00-00 00:00:00',	1),
(503,	'Storno RÃ¼ckgabe',	'2013-07-08',	'0000-00-00',	0,	0,	'-0.37',	'1',	'OK',	113,	493,	'',	'0000-00-00 00:00:00',	1),
(523,	'MonatsgebÃ¼hr 09',	'2013-08-21',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	113,	493,	'',	'0000-00-00 00:00:00',	1),
(513,	'MonatsgebÃ¼hr 08',	'2013-08-21',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	113,	493,	'',	'0000-00-00 00:00:00',	1),
(533,	'Citroen',	'2013-09-20',	'0000-00-00',	30012,	30054,	'4',	'1.5',	'OK',	123,	493,	'',	'0000-00-00 00:00:00',	1),
(543,	'Ford',	'2013-11-12',	'0000-00-00',	59655,	59687,	'4',	'2',	'OK',	133,	493,	'',	'0000-00-00 00:00:00',	1),
(583,	'Storno RÃ¼ckgabe',	'2013-11-13',	'0000-00-00',	0,	0,	'-3.50',	'1',	'OK',	133,	493,	'',	'0000-00-00 00:00:00',	1),
(573,	'MonatsgebÃ¼hr 11',	'2013-11-13',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	133,	493,	'',	'0000-00-00 00:00:00',	1),
(563,	'MonatsgebÃ¼hr 10',	'2013-11-13',	'0000-00-00',	0,	0,	'10',	'1',	'OK',	123,	493,	'',	'0000-00-00 00:00:00',	1),
(553,	'Ford',	'2013-11-13',	'0000-00-00',	59691,	59757,	'8',	'2',	'OK',	133,	493,	'',	'0000-00-00 00:00:00',	1),
(703,	'MonatsgebÃ¼hr 2013/12',	'2014-01-22',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	143,	493,	'',	'0000-00-00 00:00:00',	1),
(713,	'MonatsgebÃ¼hr 2014/01',	'2014-01-22',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	143,	493,	'',	'0000-00-00 00:00:00',	1),
(723,	'MonatsgebÃ¼hr 2014/02',	'2014-01-22',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	143,	493,	'',	'0000-00-00 00:00:00',	1),
(753,	'MonatsgebÃ¼hr 2014/05',	'2014-04-23',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	153,	493,	'',	'0000-00-00 00:00:00',	1),
(743,	'MonatsgebÃ¼hr 2014/04',	'2014-04-23',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	153,	493,	'',	'0000-00-00 00:00:00',	1),
(733,	'MonatsgebÃ¼hr 2014/03',	'2014-04-23',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	153,	493,	'',	'0000-00-00 00:00:00',	1),
(603,	'Citroen',	'2014-05-28',	'0000-00-00',	1535,	1591,	'3.5',	'1.5',	'offen',	163,	493,	'0.26',	'0000-00-00 00:00:00',	1),
(793,	'Storno RÃ¼ckgabe',	'2014-05-31',	'0000-00-00',	0,	0,	'-0.5',	'2',	'offen',	163,	493,	'',	'0000-00-00 00:00:00',	1),
(773,	'MonatsgebÃ¼hr 2014/06',	'2014-05-31',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	163,	493,	'',	'0000-00-00 00:00:00',	1),
(613,	'Ford Fiesta',	'2014-05-31',	'0000-00-00',	160,	176,	'5',	'2',	'offen',	163,	493,	'0.26',	'0000-00-00 00:00:00',	1),
(633,	'Ford Fiesta',	'2014-06-07',	'0000-00-00',	176,	193,	'5',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(803,	'Storno RÃ¼ckgabe',	'2014-06-07',	'0000-00-00',	0,	0,	'-1',	'1',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(643,	'Ford Fiesta',	'2014-06-09',	'0000-00-00',	193,	241,	'4',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(763,	'Storno RÃ¼ckgabe',	'2014-06-09',	'0000-00-00',	0,	0,	'-4',	'1',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(623,	'Ford Fiesta',	'2014-06-10',	'0000-00-00',	241,	288,	'3.5',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(653,	'Ford Fiesta',	'2014-06-14',	'0000-00-00',	288,	466,	'11',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(663,	'Ford Fiesta',	'2014-06-18',	'0000-00-00',	466,	510,	'3.5',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(673,	'Ford Fiesta',	'2014-06-21',	'0000-00-00',	510,	576,	'11',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(683,	'Ford Fiesta',	'2014-06-25',	'0000-00-00',	576,	635,	'3.5',	'2',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(693,	'Toyota',	'2014-06-27',	'0000-00-00',	4211,	4369,	'29.5',	'1.5',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(783,	'MonatsgebÃ¼hr 2014/07',	'2014-06-30',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	173,	493,	'',	'0000-00-00 00:00:00',	1),
(813,	'Ford Fiesta',	'2014-07-05',	'0000-00-00',	635,	698,	'10',	'2',	'offen',	174,	493,	'',	'0000-00-00 00:00:00',	1),
(823,	'Ford Fiesta',	'2014-07-08',	'0000-00-00',	698,	726,	'11',	'2',	'offen',	174,	493,	'',	'0000-00-00 00:00:00',	1),
(843,	'Ford Fiesta',	'2014-07-12',	'0000-00-00',	739,	786,	'11',	'2',	'offen',	174,	493,	'',	'0000-00-00 00:00:00',	1),
(833,	'Citroen',	'2014-07-16',	'0000-00-00',	28489,	28548,	'3',	'2',	'offen',	174,	493,	'',	'0000-00-00 00:00:00',	1),
(848,	'MonatsgebÃ¼hr 2014/08',	'2014-07-18',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	174,	493,	'',	'0000-00-00 00:00:00',	1),
(844,	'Ford',	'2014-07-19',	'0000-00-00',	786,	885,	'10',	'2',	'offen',	174,	493,	'',	'0000-00-00 00:00:00',	1),
(845,	'Ford',	'2014-07-29',	'0000-00-00',	134,	161,	'6',	'2',	'offen',	0,	493,	'',	'0000-00-00 00:00:00',	1),
(846,	'Ford',	'2014-08-02',	'0000-00-00',	161,	215,	'7',	'2',	'offen',	0,	493,	'',	'0000-00-00 00:00:00',	1),
(847,	'Ford',	'2014-08-03',	'0000-00-00',	215,	259,	'5',	'2',	'offen',	0,	493,	'',	'0000-00-00 00:00:00',	1),
(849,	'MonatsgebÃ¼hr 2014/10',	'2014-10-18',	'0000-00-00',	0,	0,	'10',	'1',	'offen',	175,	0,	'',	'0000-00-00 00:00:00',	1),
(853,	'Ford ',	'2015-01-01',	'0000-00-00',	1788,	1834,	'1',	'2',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(854,	'Ford ',	'2015-01-07',	'0000-00-00',	1834,	1875,	'2.5',	'2',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(855,	'Ford ',	'2015-01-10',	'0000-00-00',	1875,	1923,	'10.5',	'2',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(856,	'Citroen ',	'2015-01-21',	'0000-00-00',	50786,	50841,	'4',	'1.5',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(857,	'Citroen ',	'2015-01-28',	'0000-00-00',	51201,	51259,	'5.5',	'1.5',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(858,	'Ford ',	'2015-01-31',	'0000-00-00',	2019,	2062,	'4.5',	'2',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(859,	'Citroen',	'2015-02-04',	'0000-00-00',	0,	0,	'4',	'1.5',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(860,	'Ford',	'2015-02-14',	'0000-00-00',	2196,	2214,	'4',	'2',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(861,	'Citroen ',	'2015-02-16',	'0000-00-00',	26751,	26793,	'5',	'1.5',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(862,	'Citroen ',	'2015-02-18',	'0000-00-00',	53309,	53363,	'4',	'1.5',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(863,	'opel',	'2015-02-20',	'0000-00-00',	27257,	27280,	'3',	'1.5',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(864,	'ford',	'2015-02-21',	'0000-00-00',	2246,	2308,	'10.5',	'2',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(865,	'Toyota ',	'2015-02-25',	'0000-00-00',	19169,	19225,	'4',	'1.754',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(866,	'Ford ',	'2015-04-25',	'0000-00-00',	2697,	2750,	'8.5',	'2.15',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(867,	'ford',	'2015-04-29',	'0000-00-00',	2750,	2792,	'2.5',	'2.25',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(868,	'ford',	'2015-05-02',	'0000-00-00',	2792,	2822,	'5',	'2.25',	'OK',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(869,	'Citroen ',	'2015-05-06',	'0000-00-00',	63049,	63106,	'4',	'1.75',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(870,	'Ford ',	'2015-05-09',	'0000-00-00',	2822,	2877,	'8.5',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(871,	'Ford',	'2015-05-14',	'0000-00-00',	2877,	2923,	'4.5',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(872,	'Ford ',	'2015-05-16',	'0000-00-00',	2923,	2975,	'10.5',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(873,	'Ford ',	'2015-05-20',	'0000-00-00',	2975,	3103,	'15',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(874,	'ford',	'2015-05-23',	'0000-00-00',	3103,	3123,	'6',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(875,	'Citroen ',	'2015-05-27',	'0000-00-00',	65332,	65392,	'4',	'1.75',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(876,	'Citroen',	'2015-06-03',	'0000-00-00',	102433,	102475,	'5',	'1.75',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(877,	'Ford',	'2015-05-30',	'0000-00-00',	0,	0,	'',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1),
(878,	'Ford',	'2015-06-06',	'0000-00-00',	3175,	3190,	'6',	'2.25',	'offen',	0,	0,	'',	'0000-00-00 00:00:00',	1);

CREATE TABLE `tblfilly` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldid_art` bigint(20) NOT NULL,
  `fldanz` int(11) NOT NULL,
  `fldb01bild` bigint(20) NOT NULL,
  `fldb01filetype` varchar(50) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblfilly` (`fldindex`, `fldbez`, `fldid_art`, `fldanz`, `fldb01bild`, `fldb01filetype`) VALUES
(1,	'Filly 1',	0,	0,	31,	'image/jpeg'),
(11,	'Zauberin Miracle',	0,	0,	41,	'image/jpeg'),
(21,	'Ziri',	1,	1,	51,	'image/jpeg');

CREATE TABLE `tblfillyart` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblfillyart` (`fldindex`, `fldbez`) VALUES
(1,	'Mermaid');

CREATE TABLE `tblfilter` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldfeld` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldwert` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldmaske` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldName` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblfilter` (`fldindex`, `fldfeld`, `fldwert`, `fldmaske`, `fldName`) VALUES
(1,	'STATUS',	'offen',	'ERLEDIGUNG_SHOWTAB',	''),
(2,	'USER',	'Christiane',	'ERLEDIGUNG_SHOWTAB',	''),
(3,	'PRIOR',	'5',	'ERLEDIGUNG_SHOWTAB',	''),
(4,	'PRGLEICH',	'',	'ERLEDIGUNG_SHOWTAB',	''),
(5,	'GRP',	'(ohne)',	'ERLEDIGUNG_SHOWTAB',	''),
(74,	'fldid_group',	'',	'SHOWTAB',	'gruppe'),
(84,	'fldStatus',	'offen',	'SHOWTAB',	'status'),
(94,	'fldOrt',	'(ohne)',	'SHOWTAB',	'kaufort'),
(104,	'fldbeschenkter',	'',	'SHOWTAB',	'fuer'),
(114,	'fldstatus',	'',	'SHOWTAB',	'status'),
(124,	'fldPrior',	'(ohne)',	'SHOWTAB',	'prior'),
(134,	'fldBenutzer',	'(ohne)',	'SHOWTAB',	'benutzer'),
(144,	'fldGruppe',	'(ohne)',	'SHOWTAB',	'gruppe'),
(154,	'fldcategory',	'Computerarbeiten',	'SHOWTAB',	'kategorie'),
(164,	'fldid_gruppe',	'159',	'SHOWTAB',	'gruppe'),
(174,	'fldview',	'(ohne)',	'SHOWTAB',	'Anzeige'),
(184,	'fldid_oberkonto',	'(ohne)',	'SHOWTAB',	'oberkonten'),
(194,	'fldInhaber',	'horst_bargeld',	'SHOWTAB',	'bankkonto'),
(204,	'fldKonto',	'(ohne)',	'SHOWTAB',	'konto'),
(214,	'fldDatum',	'',	'SHOWTAB',	'zeitraumvon'),
(224,	'fldDatum',	'',	'SHOWTAB',	'zeitraumbis'),
(234,	'fldanlass',	'',	'SHOWTAB',	'anlass'),
(244,	'fldTyp',	'(ohne)',	'SHOWTAB',	'typ'),
(254,	'fldGruppe',	'(ohne)',	'SHOWTAB',	'GROUP'),
(264,	'fldBezeichnung',	'',	'SHOWTAB',	'suchen'),
(13501,	'',	'KIND',	'SHOPPING_DEFAULT',	'konto'),
(13511,	'',	'Kaufland',	'SHOPPING_DEFAULT',	'kaufort'),
(13521,	'',	'(ohne)',	'SHOPPING_DEFAULT',	'abteilung'),
(1594,	'fldtimestamp',	'',	'SHOWTAB',	'zeitpunkt'),
(1604,	'fldaktiv',	'(ohne)',	'SHOWTAB',	'setaktiv'),
(1614,	'fldsettrigger',	'(ohne)',	'SHOWTAB',	'settrigger'),
(1624,	'fldid_computer',	'44',	'SHOWTAB',	'txtcomputer'),
(1994,	'fldtblname',	'',	'SHOWTAB',	'dbtable'),
(2004,	'flddbsync',	'',	'SHOWTAB',	'dbtyp'),
(2344,	'fldvon',	'',	'SHOWTAB',	'von'),
(12471,	'',	'2016-01-04',	'ACCOUNT_DEFAULT',	'datum'),
(4304,	'flddatum',	'2015-01-01',	'SHOWTAB',	'zeitraumvon'),
(4314,	'flddatum',	'',	'SHOWTAB',	'zeitraumbis'),
(6664,	'fldid_grp',	'(ohne)',	'SHOWTAB',	'gruppe'),
(9824,	'flddatum',	'2014-07-26',	'SHOWTAB',	'zeitraum'),
(10314,	'fldid_user',	'3',	'SHOWTAB',	'fuer'),
(12491,	'',	'LEBEN_HORST',	'ACCOUNT_DEFAULT',	'konto'),
(12501,	'',	'horst_bargeld',	'ACCOUNT_DEFAULT',	'bankkonto'),
(11464,	'tblktosal.fldBez',	'',	'SHOWTAB',	'suchen'),
(11465,	'fldDatum',	'',	'SHOWTAB',	'abdatum'),
(14101,	'',	'Computerarbeiten',	'TASKS_DEFAULT',	'kategorie'),
(14111,	'',	'5',	'TASKS_DEFAULT',	'pr'),
(14121,	'',	'offen',	'TASKS_DEFAULT',	'status'),
(14131,	'',	'',	'TASKS_DEFAULT',	'erldatum'),
(14141,	'',	'Horst',	'TASKS_DEFAULT',	'eintrag'),
(14151,	'',	'',	'TASKS_DEFAULT',	'rang'),
(11648,	'fldkonto',	'(ohne)',	'SHOWTAB',	'oberkonto'),
(11649,	'fldsel',	'(ohne)',	'SHOWTAB',	'askjn'),
(11650,	'fldid_ort',	'(ohne)',	'SHOWTAB',	'fltort'),
(12193,	'',	'(ohne)',	'ACCOUNT_DEFAULT',	'umbuchihnaber'),
(11697,	'',	'Weihnachten',	'PRESENT_DEFAULT',	'anlass'),
(11698,	'',	'Horst',	'PRESENT_DEFAULT',	'fuer'),
(11699,	'',	'Horst',	'PRESENT_DEFAULT',	'von'),
(11700,	'fldBarcode',	'(ohne)',	'SHOWTAB',	'barcode'),
(11701,	'fldparent',	'(ohne)',	'SHOWTAB',	'parent'),
(11702,	'fldversion',	'(ohne)',	'SHOWTAB',	'version'),
(11703,	'fldMenu',	'Feng',	'SHOWTAB',	'suchen'),
(11704,	'fldid_geraet',	'',	'SHOWTAB',	'fltgeraet'),
(11705,	'fldid_ort',	'',	'SHOWTAB',	'wo'),
(11706,	'fldAbrjahr',	'',	'SHOWTAB',	'jahr'),
(11707,	'fldok',	'',	'SHOWTAB',	'ok'),
(12146,	'fldid_dauerauftragtyp',	'(ohne)',	'SHOWTAB',	'fltdauerauftragtyp'),
(11708,	'fldMenuID',	'(ohne)',	'SHOWTAB',	'parent'),
(11709,	'fldid_etagen',	'',	'SHOWTAB',	'stockwerke'),
(11710,	'fldprior',	'',	'SHOWTAB',	'prior'),
(11711,	'fldid_status',	'',	'SHOWTAB',	'status'),
(11712,	'fldid_benutzer',	'',	'SHOWTAB',	'fltuser'),
(11713,	'fldind_zimmer',	'47',	'SHOWTAB',	'zimmer'),
(12175,	'',	'47',	'MOEBEL_DEFAULT',	'zimmer'),
(11726,	'fldind_moebel',	'1857',	'SHOWTAB',	'moebel'),
(12176,	'',	'1857',	'FAECHER_DEFAULT',	'moebel'),
(12177,	'',	'47',	'FAECHER_DEFAULT',	'zimmer'),
(11734,	'fldid_adr',	'(ohne)',	'SHOWTAB',	'anbieter'),
(11735,	'fldVondatum',	'',	'SHOWTAB',	'zeitraumvon'),
(11736,	'fldVondatum',	'',	'SHOWTAB',	'zeitraumbis'),
(11737,	'fldind_datum',	'(ohne)',	'SHOWTAB',	'rechdat'),
(11738,	'fldFahrzeug',	'',	'SHOWTAB',	'suchen'),
(11795,	'fldv01status',	'(ohne)',	'SHOWTAB',	'status'),
(11796,	'fldv01ort',	'19',	'SHOWTAB',	'zimmer'),
(11797,	'fldv01wo',	'(ohne)',	'SHOWTAB',	'moebel'),
(11798,	'fldv01konto',	'(ohne)',	'SHOWTAB',	'konto'),
(11799,	'fldid_grundartikel',	'(ohne)',	'SHOWTAB',	'grundartikel'),
(11800,	'fldv01gekauftam',	'',	'SHOWTAB',	'fltdatum'),
(11801,	'fldv01bez',	'',	'SHOWTAB',	'suchen'),
(11802,	'fldbez',	'Joorg',	'SHOWTAB',	'suchen'),
(11803,	'fldb01bez',	'',	'SHOWTAB',	'suchen'),
(11814,	'fldid_ktogrp',	'(ohne)',	'SHOWTAB',	'fltktogrp'),
(11827,	'fldid_ktoinhgrp',	'4',	'SHOWTAB',	'fltktoinhgrp'),
(12102,	'fldid_zeitpunkt',	'',	'SHOWTAB',	'fltzeitpunkt'),
(12461,	'fldtimestamp',	'',	'SHOWTAB',	'bis'),
(12076,	'fldid_group',	'(ohne)',	'SHOWTAB',	'fltgruppe'),
(12521,	'fldid_art',	'1',	'SHOWTAB',	'fltart'),
(14091,	'',	'Ubuntu einrichten',	'TASKS_DEFAULT',	'GROUP'),
(12103,	'flddatum',	'',	'SHOWTAB',	'abdatum'),
(12145,	'fldid_ktogrp',	'4',	'SHOWTAB',	'gruppe'),
(12147,	'fldid_ktoeatyp',	'(ohne)',	'SHOWTAB',	'fltktoeatyp'),
(12148,	'fldaktiv',	'J',	'SHOWTAB',	'fldaktiv'),
(12182,	'',	'21',	'KTODAUERAUFTRAG_DEFAULT',	'konto'),
(12183,	'',	'23',	'KTODAUERAUFTRAG_DEFAULT',	'dauerauftragtyp'),
(12184,	'',	'4',	'KTODAUERAUFTRAG_DEFAULT',	'gruppe'),
(12185,	'',	'13',	'KTODAUERAUFTRAG_DEFAULT',	'ktoeatyp'),
(12171,	'fldid_benutzer',	'(ohne)',	'SHOWTAB',	'benutzer'),
(12157,	'fldid_terminegrp',	'3',	'SHOWTAB',	'gruppe'),
(12158,	'fldid_terminserie',	'(ohne)',	'SHOWTAB',	'serie'),
(12159,	'fldvondatum',	'2016-01-01',	'SHOWTAB',	'zeitraumvon'),
(12160,	'fldvondatum',	'',	'SHOWTAB',	'zeitraumbis'),
(12361,	'fldid_status',	'(ohne)',	'SHOWTAB',	'fltstatus'),
(12161,	'fldid_benutzer',	'',	'SHOWTAB',	'fltbenutzer'),
(12174,	'fldid_adr',	'1016',	'SHOWTAB',	'absender'),
(12162,	'fldid_aufgabe',	'(ohne)',	'SHOWTAB',	'fltaufgabe'),
(12481,	'',	'08:00',	'ACCOUNT_DEFAULT',	'uhrzeit'),
(12172,	'flddatum',	'',	'SHOWTAB',	'bisdatum'),
(12173,	'fldid_gepaeck',	'(ohne)',	'SHOWTAB',	'gepaeck'),
(12348,	'fldid_haeufigkeit',	'',	'SHOWTAB',	'flthaeufigkeit'),
(12372,	'',	'159',	'NOTICE_DEFAULT',	'gruppe'),
(12511,	'',	'33',	'TERMINE_DEFAULT',	'serie'),
(12373,	'',	'2',	'NOTICE_DEFAULT',	'status'),
(12374,	'fldid_user',	'50008',	'SHOWTAB',	'fltuser');

CREATE TABLE `tblfunc` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldphp` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldMenuID` bigint(20) NOT NULL,
  `fldTyp` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldTarget` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldParam` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldAktiv` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldName` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldversion` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblfunc` (`fldIndex`, `fldBez`, `fldphp`, `fldMenuID`, `fldTyp`, `fldTarget`, `fldParam`, `fldAktiv`, `fldName`, `fldtimestamp`, `fldversion`) VALUES
(3,	'Ins Archiv',	'insarchiv.php',	183,	'MENU',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	'0312'),
(13,	'Aus Stammdaten',	'ausstammdaten.php',	183,	'MENU',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(23,	'Monatsbericht',	'monatsbericht.php',	213,	'MENU',	'_blank',	'&drucken=J',	'J',	'',	'0000-00-00 00:00:00',	''),
(33,	'Aus Archiv',	'ausarchiv.php',	183,	'MENU',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(43,	'Auswertung',	'KontenVorschau.php',	183,	'MENU',	'_blank',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(53,	'Adressliste',	'druckadressliste.php',	263,	'MENU',	'_blank',	'&wert=',	'J',	'',	'0000-00-00 00:00:00',	''),
(63,	'Gruppenliste',	'druckgruppenliste.php',	263,	'MENU',	'_blank',	'&wert=',	'J',	'',	'0000-00-00 00:00:00',	'0312'),
(73,	'sync',	'sync.php',	593,	'MENUALL',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(83,	'resync all',	'resyncall.php',	593,	'MENUALL',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(93,	'export',	'export.php',	593,	'MENUALL',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(103,	'import',	'import.php',	593,	'MENUALL',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(113,	'raten',	'raten.php',	213,	'MENU',	'',	'',	'N',	'',	'0000-00-00 00:00:00',	'0312'),
(133,	'Dauerauftrag',	'dauerauftrag.php',	233,	'MENU',	'',	'',	'J',	'',	'0000-00-00 00:00:00',	''),
(134,	'Trigger',	'trigger.php',	503,	'MENU',	'',	'&trigger=4',	'J',	'',	'2013-09-10 21:15:07',	''),
(144,	'del sel',	'delsel.php',	493,	'MENU',	'',	'',	'J',	'',	'2013-09-14 08:29:00',	''),
(154,	'Druck Geschenke',	'druckgeschenkliste.php',	203,	'MENU',	'_blank',	'&wert=',	'J',	'',	'2013-11-16 13:43:27',	''),
(164,	'Druck Aufgabenplan',	'druckaufgabenplan.php',	754,	'MENU',	'_blank',	'',	'J',	'',	'2014-01-16 20:52:30',	''),
(174,	'Delete select',	'delsel.php',	754,	'MENU',	'',	'',	'J',	'',	'2014-01-16 20:55:48',	''),
(184,	'Aufgabenplan kopieren',	'schedulecopy.php',	754,	'MENU',	'',	'',	'J',	'',	'2014-01-16 20:57:00',	''),
(194,	'Stundenplan',	'druckstundenplan.php',	1004,	'MENU',	'_blank',	'',	'J',	'',	'2014-08-22 16:22:20',	''),
(195,	'Grafik',	'grafik.php',	213,	'MENU',	'',	'',	'J',	'',	'2014-11-19 17:08:15',	'0312'),
(200,	'Druck Liste',	'druckliste.php',	1054,	'MENU',	'_blank',	'',	'J',	'',	'2015-04-30 15:27:12',	'0315'),
(197,	'Holen',	'empfangen.php',	183,	'MENU',	'',	'',	'J',	'',	'2014-12-17 17:31:37',	'0312'),
(199,	'Leeren',	'leeren.php',	183,	'MENU',	'',	'',	'J',	'',	'2015-02-14 23:42:14',	'0312'),
(201,	'Druck Grafik',	'druckgrafik.php',	1054,	'MENU',	'_blank',	'',	'J',	'',	'2015-05-06 16:09:09',	'0315'),
(202,	'Druck Liste',	'druckliste.php',	1456,	'MENU',	'_blank',	'',	'J',	'',	'2015-05-08 16:30:44',	'0315'),
(203,	'Gruppenaufgabenliste',	'druckgrpaufgabenliste.php',	754,	'MENU',	'_blank',	'&wert=',	'J',	'',	'2015-05-13 08:16:44',	'0312'),
(204,	'Holen',	'empfangen.php',	1110,	'MENU',	'',	'',	'J',	'',	'2015-05-28 05:31:16',	'0315'),
(205,	'delsel',	'delsel.php',	213,	'MENU',	'',	'',	'J',	'',	'2015-06-13 17:00:05',	'0312'),
(206,	'Grafik',	'r=site/page&view=graph',	213,	'YIIMENU',	'',	'',	'N',	'',	'2015-06-22 06:13:52',	'0312'),
(207,	'Buchen',	'buchen.php',	183,	'MENU',	'',	'',	'J',	'buchen',	'2015-06-23 05:57:44',	'0312'),
(208,	'Druck Essensplan',	'druckessensplan.php',	994,	'MENU',	'',	'',	'J',	'',	'2015-08-22 12:42:10',	'0312'),
(209,	'mailen',	'mailsend.php',	263,	'MENU',	'',	'',	'J',	'',	'2015-08-27 15:47:47',	'0312'),
(210,	'Druck Liste',	'druckliste.php',	1461,	'MENU',	'_blank',	'',	'J',	'',	'2015-10-09 15:49:39',	'0312'),
(211,	'Druck Liste',	'druckliste.php',	734,	'MENU',	'_blank',	'',	'J',	'',	'2015-10-09 16:06:49',	'0312'),
(212,	'Druck Liste',	'druckliste.php',	1074,	'MENU',	'_blank',	'',	'J',	'',	'2015-10-24 11:09:07',	'0312');

CREATE TABLE `tblgeburtstage` (
  `fldIndex` int(3) NOT NULL AUTO_INCREMENT,
  `fldVorname` varchar(30) NOT NULL,
  `fldNachname` varchar(30) NOT NULL,
  `fldGebDatum` date NOT NULL,
  `fldSort` varchar(5) NOT NULL,
  `fldBemerk` varchar(80) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblgeburtstage` (`fldIndex`, `fldVorname`, `fldNachname`, `fldGebDatum`, `fldSort`, `fldBemerk`) VALUES
(1,	'Horst',	'Meyer',	'1964-05-18',	'05-18',	''),
(2,	'Christiane',	'Meyer',	'1967-09-20',	'09-20',	''),
(3,	'Frieda Lina',	'Meyer',	'2008-07-09',	'07-09',	''),
(4,	'Edgar',	'Meyer',	'1965-05-24',	'05-24',	''),
(5,	'Heinz',	'Meyer',	'1934-05-05',	'05-05',	''),
(6,	'Sabine ',	'Dreger',	'1968-01-25',	'01-25',	''),
(7,	'Phoebe',	'Grau',	'2009-02-26',	'02-26',	''),
(8,	'Ralf',	'Beckers',	'1963-06-15',	'06-15',	'Alter unklar.'),
(9,	'Erna',	'Meyer',	'1938-06-11',	'06-11',	''),
(10,	'Brigitte ',	'Schulte',	'1948-05-26',	'05-26',	''),
(11,	'Hartmut',	'Schulte',	'1944-11-21',	'11-21',	''),
(12,	'Orell',	'Schulte',	'2007-03-15',	'03-15',	''),
(13,	'Dagmar',	'Lißke',	'1955-03-04',	'03-04',	'Alter nicht bekannt.'),
(14,	'Gerrit',	'Schulte',	'1974-10-23',	'10-23',	''),
(15,	'Sylvia',	'Schulte',	'1980-08-30',	'08-30',	''),
(16,	'Marlene',	'Röthlein',	'2007-03-30',	'03-30',	''),
(17,	'Lilia Sofie',	'Plückhan',	'2005-05-29',	'05-29',	''),
(18,	'Damaris',	'Dreger',	'2005-08-01',	'08-01',	''),
(19,	'Antonia',	'Dreger',	'1998-09-10',	'09-10',	'??'),
(20,	'Louis',	'Dreger',	'1997-09-14',	'09-14',	'??'),
(21,	'Iris',	'Burgmeister',	'1975-01-04',	'01-04',	''),
(22,	'Ruth',	'Krabbe',	'1900-01-29',	'01-29',	''),
(23,	'Andrea',	'Dahmann',	'1967-09-30',	'09-30',	''),
(24,	'Manfred',	'Losse',	'1938-01-16',	'01-16',	''),
(25,	'Rachel',	'Gessat',	'1966-01-19',	'01-19',	''),
(63,	'Sigrid',	'Plückhahn',	'1967-12-24',	'',	'');

CREATE TABLE `tblgepaeck` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblgeraet` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(255) COLLATE utf8_bin NOT NULL,
  `fldgeraetenr` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldfaktor` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldid_wo` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblgeraet` (`fldindex`, `fldbez`, `fldgeraetenr`, `fldfaktor`, `fldid_wo`) VALUES
(3,	'Heizung (EssZi links)',	'713269749',	'1.200',	52),
(13,	'Heizung (Hausflur)',	'712362595',	'0.975',	41),
(23,	'Heizung (KiZi links)',	'712362502',	'0.375',	21),
(33,	'Heizung (KiZi rechts)',	'712362465',	'0.375',	21),
(43,	'Heizung (SchlaZi links)',	'712362601',	'0.425',	56),
(53,	'Heizung (SchlaZi rechts)',	'712362618',	'0.850',	56),
(63,	'Heizung (Bad oben)',	'723006846',	'0.475',	55),
(73,	'Heizung (ArbZi)',	'712362625',	'1.525',	31),
(83,	'Heizung (Kü)',	'712362571',	'0.850',	19),
(93,	'Heizung (Bad unten)',	'712362540',	'0.750',	51),
(103,	'Heizung (EssZi rechts)',	'712362588',	'0.425',	12),
(113,	'Heizung (WoZi links)',	'712362519',	'0.425',	53),
(123,	'Heizung (WoZi rechts)',	'712362441',	'0.425',	53),
(133,	'Vorauszahlung',	'',	'1',	12);

CREATE TABLE `tblgeschenke` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddatum` datetime NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldstatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldpreis` decimal(10,2) DEFAULT NULL,
  `flduser` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldbeschenkter` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldlink` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldanlass` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldprior` int(11) NOT NULL,
  `fldvon` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldimage` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblgeschenke` (`fldindex`, `flddatum`, `fldbez`, `fldstatus`, `fldpreis`, `flduser`, `fldbeschenkter`, `fldlink`, `fldanlass`, `fldprior`, `fldvon`, `fldimage`) VALUES
(13,	'2012-08-31 20:39:00',	'Akkordeon',	'offen',	4590.00,	'Horst',	'Horst',	'http://www.amazon.de/Zupan-Alpe-Cassotto-Akkordeon-Palisander/dp/B004K1K9Z6/ref=sr_1_7?s=musical-instruments&ie=UTF8&qid=1382799500&sr=1-7&keywords=Alpenklang+Akkordeon',	'(ohne)',	4,	'',	'63'),
(63,	'2012-09-03 18:38:00',	'Joomla Programmierbuch',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'',	0,	'',	''),
(23,	'2012-08-31 23:09:00',	'Elisabeth George Buch',	'erledigt',	24.99,	'Horst',	'Christiane',	'http://www.amazon.de/Glaube-L%C3%BCge-Inspector-Lynley-Roman-Elizabeth-George/dp/3442312515/ref=sr_1_1?s=books&ie=UTF8&qid=1346533778&sr=1-1',	'(ohne)',	0,	'',	''),
(33,	'2012-08-31 23:13:00',	'Miteinander Buch',	'erledigt',	14.95,	'Horst',	'Christiane',	'http://www.amazon.de/Miteinander-Empathie-Kinder-stark-macht/dp/3407859422/ref=wl_it_dp_o_pC_nS_nC?ie=UTF8&colid=28HUOCO2M9IJP&coliid=I2SWBFRDDTZD0O',	'(ohne)',	0,	'',	''),
(43,	'2012-08-31 23:16:00',	'Puzzle',	'erledigt',	9.99,	'Horst',	'Christiane',	'http://www.amazon.de/Schmidt-Spiele-58104-Teile-Puzzle/dp/B000LN5SHG/ref=sr_1_12?s=toys&ie=UTF8&qid=1346534077&sr=1-12',	'Geburtstag',	0,	'',	''),
(53,	'2012-08-31 23:17:00',	'SpÃ¤tzle-Presse',	'erledigt',	29.01,	'Horst',	'Christiane',	'http://www.amazon.de/Sp%C3%A4tzlepresse-Sp%C3%A4tzle-Chef-handgeschabt-unregelm%C3%A4%C3%9Fige-Lochform/dp/B000ZJWCKC/ref=sr_1_1?ie=UTF8&qid=1346533387&sr=8-1',	'Geburtstag',	0,	'',	''),
(73,	'2012-09-03 18:38:00',	'raspberry pi',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'Weihnachten',	0,	'Horst',	''),
(83,	'2012-09-03 18:39:00',	'gehÃ¤use fÃ¼r raspberry pi',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'Weihnachten',	0,	'Horst',	''),
(103,	'2012-09-03 18:39:00',	'Riemen fÃ¼r Akkordeon',	'offen',	28.90,	'Horst',	'Horst',	'http://www.amazon.de/Boston-Akkordeon-Gurt-48-72-Leder/dp/B003IJD0IE/ref=sr_1_4?s=musical-instruments&ie=UTF8&qid=1382803649&sr=1-4&keywords=akkordeon+riemen',	'Weihnachten',	0,	'',	'83'),
(113,	'2012-09-03 18:39:00',	'DLan Adapter (Ã¼ber Steckdose)',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'',	0,	'',	''),
(123,	'2012-09-03 18:39:00',	'Folk-CD z.B. Loreena Mc Kennit',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'',	0,	'',	''),
(133,	'2012-09-03 18:46:00',	'Modellflugzeug',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'Weihnachten',	0,	'Horst',	''),
(143,	'2012-10-09 07:34:00',	'Joomla Programmierbuch',	'erledigt',	30.00,	'Horst',	'Horst',	'http://www.amazon.de/Joomla--Extensions-entwickeln-Komponenten-programmieren/dp/3645601341/ref=sr_1_1?s=books&ie=UTF8&qid=1382804000&sr=1-1&keywords=joomla+programmierung',	'Weihnachten',	0,	'Horst',	''),
(153,	'2012-10-23 08:12:00',	'Flachbildschirm',	'erledigt',	0.00,	'Horst',	'Horst',	'',	'Weihnachten',	5,	'Horst',	''),
(163,	'2012-10-23 18:27:00',	'Engel',	'erledigt',	0.00,	'Horst',	'Frieda',	'',	'Weihnachten',	0,	'',	''),
(173,	'2012-10-23 18:50:00',	'RÃ¤tselheft',	'offen',	0.00,	'Horst',	'Opa Heinz',	'',	'Weihnachten',	0,	'',	''),
(183,	'2012-10-23 18:53:00',	'Mokkatasse',	'offen',	0.00,	'Horst',	'Oma Erna',	'',	'Weihnachten',	1,	'',	''),
(243,	'2013-05-21 00:00:00',	'Fahrradhelm',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(253,	'2013-05-21 00:00:00',	'Playmobil Feenboot',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(263,	'2013-05-21 00:00:00',	'Cars Auto',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(273,	'2013-05-21 00:00:00',	'Der kleine Ritter Trenk ( Buch )',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(274,	'2013-05-22 00:00:00',	'sprechender Teddy',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(284,	'0000-00-00 00:00:00',	'kleine lila Puppe vom Einkaufen',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(294,	'0000-00-00 00:00:00',	'kleiner I-AAh vom einkaufen',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(304,	'0000-00-00 00:00:00',	'Die Biene Maja DVD',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(314,	'0000-00-00 00:00:00',	'Feen von Playmobil',	'offen',	0.00,	'',	'Frieda',	'',	'Geburtstag',	0,	'',	''),
(233,	'2013-05-21 00:00:00',	'Smartphone',	'erledigt',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(313,	'2013-09-07 00:00:00',	'Weleda Hautlotion Sanddorn',	'erledigt',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(323,	'2013-09-07 00:00:00',	'Gutschein fÃ¼r neue Handtasche ( selbst aussuchen )',	'offen',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(333,	'2013-09-07 00:00:00',	'Dan Brown Inferno Gebundene Ausgabe',	'offen',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(343,	'2013-09-07 00:00:00',	'kleine handliche Digitalkamera',	'offen',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(353,	'2013-09-07 00:00:00',	'Tortelliniform',	'offen',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(363,	'2013-09-07 00:00:00',	'Nudelmaschine',	'offen',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(373,	'2013-09-07 00:00:00',	'Einkaufsgutschein fÃ¼r C&A',	'offen',	0.00,	'',	'Christiane',	'',	'Geburtstag',	0,	'',	''),
(383,	'2013-09-07 00:00:00',	'Buch Jojo Moyes: Ein ganzes halbes Jahr',	'erledigt',	0.00,	'',	'Christiane',	'http://www.amazon.de/Ein-ganzes-halbes-Jahr-ebook/dp/B00A32BW7A/ref=sr_1_1?s=books&ie=UTF8&qid=1378550106&sr=1-1',	'Geburtstag',	0,	'',	'halbes_jahr.jpg'),
(303,	'2013-09-07 00:00:00',	'DVD Der Hobbit',	'erledigt',	0.00,	'',	'Christiane',	'http://www.amazon.de/Hobbit-Eine-unerwartete-Reise/dp/B00AN0MCG2/ref=sr_1_1?s=dvd&ie=UTF8&qid=1378555960&sr=1-1&keywords=der+hobbit',	'Geburtstag',	0,	'',	'der_hobbit.jpg'),
(394,	'2013-10-28 00:00:00',	'ferngesteuertes Auto',	'offen',	23.99,	'',	'Frieda',	'http://www.amazon.de/Dickie-Spielzeug-203089501-Lightning-Funkfernsteuerung-entweder/dp/B004BR3CLW/ref=sr_1_4?s=toys&ie=UTF8&qid=1382998153&sr=1-4&keywords=ferngesteuertes+auto',	'Weihnachten',	0,	'',	''),
(404,	'2013-10-28 00:00:00',	'Cars Auto Hook',	'offen',	5.38,	'',	'Frieda',	'http://www.amazon.de/Disney-Cars-V2798-Mater-Martin/dp/B0050RQOQM/ref=sr_1_3?s=toys&ie=UTF8&qid=1382998251&sr=1-3&keywords=cars+autos',	'Weihnachten',	0,	'',	''),
(93,	'2012-09-03 18:39:00',	'GeldzÃ¤hlmaschine',	'offen',	19.90,	'Horst',	'Horst',	'http://www.amazon.de/General-Office-Mobiler-Euro-M%C3%BCnzz%C3%A4hler-Batteriebetrieb/dp/B005DEI4I8/ref=pd_sim_sbs_office_5',	'Weihnachten',	0,	'',	'73'),
(403,	'2013-10-26 00:00:00',	'Festplattenrekorder',	'zurueckges',	299.00,	'',	'Horst',	'http://www.amazon.de/Kathrein-Twin-HDTV-Digitalreceiver-Festplatte-CI/dp/B007SBTNE8/ref=sr_1_3?s=home-theater&ie=UTF8&qid=1382805281&sr=1-3&keywords=festplattenrecorder',	'Weihnachten',	0,	'(ohne)',	'113'),
(484,	'2013-10-30 00:00:00',	'Playmobil Prinzessinnen Schloss',	'offen',	126.94,	'',	'Frieda',	'http://www.amazon.de/Playmobil-5142-PLAYMOBIL-Prinzessinnenschloss/dp/B004P5O8OK/ref=sr_1_1?ie=UTF8&qid=1383109740&sr=8-1&keywords=playmobil+schloss+prinzessin',	'Weihnachten',	0,	'',	''),
(414,	'2013-10-28 00:00:00',	'Puppe',	'offen',	44.99,	'',	'Frieda',	'http://www.amazon.de/dp/B00B02QKFQ?psc=1',	'Weihnachten',	0,	'',	''),
(424,	'2013-10-28 00:00:00',	'Playmobil Ponyhof',	'offen',	39.98,	'',	'Frieda',	'http://www.amazon.de/Playmobil-5222-PLAYMOBIL-Ponyhof/dp/B0077QSM46/ref=sr_1_12?s=toys&ie=UTF8&qid=1382998649&sr=1-12&keywords=playmobil+pferde',	'Weihnachten',	0,	'Opa Heinz und Oma Erna',	''),
(434,	'2013-10-28 00:00:00',	'Polly Pocket Pferde',	'offen',	12.73,	'',	'Frieda',	'http://www.amazon.de/Mattel-X7175-Freundinnen-Spielset-inklusive/dp/B006O6ELI6/ref=sr_1_1?s=toys&ie=UTF8&qid=1382998802&sr=1-1&keywords=polly+pocket+pferde',	'Weihnachten',	0,	'Tante Sylvia',	''),
(444,	'2013-10-28 00:00:00',	'Rosetta Puppe',	'offen',	25.99,	'',	'Frieda',	'http://www.ebay.de/itm/Disney-Fairies-ROSETTA-Puppe-31-cm-bewegliche-Fluegel-Flatterpuppe-Feenfluegel-/141028925219?fromMakeTrack=true&ssPageName=VIP:watchlink:top:de',	'Weihnachten',	0,	'',	''),
(454,	'2013-10-28 00:00:00',	'BettwÃ¤sche Tinkerbell',	'offen',	34.80,	'',	'Frieda',	'http://www.amazon.de/Disneys-Fairies-Bettw%C3%A4sche-Tinkerbell-135x200cm/dp/B00BKW2D4I/ref=sr_1_3?s=toys&ie=UTF8&qid=1382999097&sr=1-3&keywords=bettw%C3%A4sche+tinkerbell',	'Weihnachten',	0,	'',	''),
(464,	'2013-10-29 00:00:00',	'Buch von Khaled Hosseini',	'offen',	19.99,	'',	'Christiane',	'http://www.amazon.de/Traumsammler-Roman-Khaled-Hosseini/dp/3100329104/ref=sr_1_1?s=books&ie=UTF8&qid=1383034262&sr=1-1&keywords=khaled+hosseini+traumsammler',	'Weihnachten',	0,	'',	''),
(474,	'2013-10-29 00:00:00',	'GetreidemÃ¼hle und Flockenquetscher',	'offen',	581.03,	'',	'Christiane',	'http://www.amazon.de/Getreidem%C3%BChle-Duett-100-Fidibus-Classic/dp/B004TJ1WAU/ref=pd_cp_k_0',	'Weihnachten',	0,	'',	''),
(494,	'2013-11-01 00:00:00',	'Buch Fortsetzung von Ritter Trenk',	'offen',	14.95,	'',	'Frieda',	'http://www.amazon.de/kleine-Ritter-Trenk-Gro%C3%9Fe-Gef%C3%A4hrliche/dp/3789131938/ref=sr_1_1?ie=UTF8&qid=1383275855&sr=8-1&keywords=der+kleine+ritter+trenk+und+der+gro%C3%9Fe+gef%C3%A4hrliche',	'Weihnachten',	0,	'',	''),
(504,	'2013-11-01 00:00:00',	'Cars Auto Chick Hicks',	'offen',	20.00,	'',	'Frieda',	'http://www.amazon.de/Disney-Pixar-Cars-Chick-Hicks/dp/B00A3FVONE/ref=sr_1_1?s=toys&ie=UTF8&qid=1383275995&sr=1-1&keywords=cars+chick+hicks',	'Weihnachten',	0,	'',	''),
(483,	'2013-11-11 00:00:00',	'Star Trek DVD into darkness',	'erledigt',	12.99,	'',	'Horst',	'http://www.amazon.de/Star-Trek-Into-Darkness-Chris/dp/B00CXLSRUY/ref=sr_1_3?ie=UTF8&qid=1384208178&sr=8-3&keywords=star+trek+in+the+darkness',	'Weihnachten',	0,	'(ohne)',	''),
(493,	'2013-11-16 00:00:00',	'Pippi Langstrumpf',	'offen',	22.99,	'',	'Frieda',	'http://www.amazon.de/Astrid-Lindgren-Langstrumpf-TV-Serie-Komplettbox/dp/B00CJOQ0C2/ref=sr_1_1?s=dvd&ie=UTF8&qid=1384606556&sr=1-1&keywords=pippi+langstrumpf',	'Weihnachten',	0,	'Christiane',	''),
(384,	'2013-10-28 00:00:00',	'Schlittschuhe',	'offen',	39.50,	'',	'Frieda',	'http://www.amazon.de/Nijdam-M%C3%A4dchen-Schlittschuh-inlineskate-kombi-Verstellbar-52QZ/dp/B0050QBAR6/ref=sr_1_3?s=toys&ie=UTF8&qid=1382997856&sr=1-3&keywords=schlittschuhe+kinder',	'Weihnachten',	0,	'Oma Brigitte',	''),
(513,	'2013-11-21 00:00:00',	'Makrolinse',	'erledigt',	13.94,	'',	'Horst',	'http://www.amazon.de/Magnetische-Super-Makro-Linse-verschiedene-Kameratypen/dp/B0052JJDPW/ref=sr_1_1?s=ce-de&ie=UTF8&qid=1385029809&sr=1-1&keywords=handy+makro+linse#productDescription',	'Weihnachten',	0,	'(ohne)',	'143'),
(523,	'2013-11-21 00:00:00',	'Android Programmierung',	'erledigt',	30.00,	'',	'Horst',	'http://www.amazon.de/Java-f%C3%BCr-Android-Android-Apps-programmieren/dp/3645602542/ref=sr_1_6?s=books&ie=UTF8&qid=1385030326&sr=1-6&keywords=android+programmierung',	'Weihnachten',	0,	'(ohne)',	'123'),
(533,	'2013-11-21 00:00:00',	'Festplatte',	'erledigt',	80.90,	'',	'Horst',	'http://www.snogard.de/index.php?artikelId=HDEXT100ADH14',	'Weihnachten',	0,	'(ohne)',	'133'),
(514,	'2013-11-08 00:00:00',	'Buch Gelassen erziehen von Jesper Juul',	'offen',	17.95,	'',	'Christiane',	'http://www.amazon.de/Elterncoaching-Gelassen-erziehen-Jesper-Juul/dp/3407859201/ref=sr_1_8?s=books&ie=UTF8&qid=1383886809&sr=1-8&keywords=jesper+juul',	'Weihnachten',	0,	'Opa Heinz und Oma Erna',	'183'),
(534,	'2013-11-23 00:00:00',	'Schlittschuhe',	'offen',	0.00,	'',	'Christiane',	'Schlittschuhe ;-)',	'Weihnachten',	0,	'Horst',	''),
(544,	'2013-11-29 00:00:00',	'Buch von Elizabeth George: Nur eine bÃ¶se Tat',	'offen',	24.00,	'',	'Christiane',	'http://www.amazon.de/Nur-eine-b%C3%B6se-Tat-Inspector-Lynley-Roman/dp/3442312523/ref=sr_1_1?s=books&ie=UTF8&qid=1385702531&sr=1-1&keywords=elizabeth+george+neuerscheinung+2013',	'Weihnachten',	0,	'Horst',	''),
(554,	'2013-11-29 00:00:00',	'KochschÃ¼rze groÃŸ mit netten Spruch',	'offen',	0.00,	'',	'Christiane',	'',	'Weihnachten',	0,	'Horst',	''),
(543,	'2013-11-25 00:00:00',	'SF Buch',	'erledigt',	15.00,	'',	'Horst',	'http://www.amazon.de/Sternenspiel-Roman-Sergej-Lukianenko/dp/345352411X/ref=sr_1_10?s=books&ie=UTF8&qid=1385405373&sr=1-10&keywords=lukianenko',	'Weihnachten',	0,	'Horst',	'163'),
(553,	'2013-12-01 00:00:00',	'KÃ¼chenradio mit CD',	'erledigt',	34.99,	'',	'Horst',	'http://www.amazon.de/K%C3%BCchenradio-mit-CD-Player-Alarm-Wecker/dp/B00EV3CHKI/ref=sr_1_1?s=ce-de&ie=UTF8&qid=1385903539&sr=1-1&keywords=k%C3%BCchenradio+cd',	'Weihnachten',	0,	'(ohne)',	'193'),
(563,	'2014-01-08 00:00:00',	'Ordnung im ganzen Haus!',	'offen',	0.00,	'',	'Horst',	'',	'Geburtstag',	0,	'(ohne)',	''),
(583,	'2014-04-29 00:00:00',	'Blue ray player',	'offen',	259.00,	'',	'Horst',	'http://www.mediamarkt.de/mcs/product/SAMSUNG-BD-F-8509-S,48353,460697,632824.html?langId=-3',	'Geburtstag',	0,	'(ohne)',	''),
(584,	'2014-11-12 00:00:00',	'Buch fÃ¼r Sensoren',	'offen',	30.00,	'',	'Horst',	'http://www.amazon.de/Sensoren-Raspberry-Pi-Temperatur-Stromst%C3%A4rke/dp/3645603425/ref=sr_1_1/278-2164466-1612115?ie=UTF8&qid=1415775504&sr=8-1&keywords=sensoren+raspberry+pi',	'Weihnachten',	0,	'(ohne)',	'');

CREATE TABLE `tblgrperl` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblgrperl` (`fldindex`, `fldbez`) VALUES
(2,	'(ohne)'),
(3,	'Finanzen'),
(4,	'Ordnung'),
(5,	'Auto'),
(8,	'leer'),
(9,	'Computer'),
(10,	'Briefe'),
(11,	'Haushalt'),
(12,	'Reparatur'),
(19,	'PrgEntw'),
(15,	'Besuche'),
(16,	'Freizeit'),
(17,	'Geschenk'),
(18,	'Familie'),
(144,	'Friedas Fragen'),
(143,	'Wahl'),
(154,	'Geburtstagsfeier Horst'),
(155,	'Lebensträume'),
(156,	'Ubuntu'),
(157,	'Joomla'),
(158,	'Erfolge'),
(159,	'Familienkonferenz'),
(161,	'Ubuntu einrichten');

CREATE TABLE `tblgrundartikel` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldbezmz` varchar(250) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblgrundeinheit` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldkurz` varchar(50) NOT NULL,
  `fldbez` varchar(200) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblgrundeinheit` (`fldindex`, `fldkurz`, `fldbez`) VALUES
(1,	'STK',	'Stück'),
(2,	'L',	'Liter');

CREATE TABLE `tblhaeufigkeit` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) NOT NULL,
  `fldTage` int(11) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `tblhaeufigkeit` (`fldIndex`, `fldBez`, `fldTage`) VALUES
(1,	'tägl.',	1),
(2,	'offen',	0),
(3,	'wöch.',	7),
(4,	'mon.',	30),
(5,	'vierteljähr.',	90),
(6,	'unregelmäßig',	0),
(7,	'jähr.',	365);

CREATE TABLE `tblheizung` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldid_ort` bigint(20) NOT NULL,
  `fldPreis` varchar(10) NOT NULL,
  `fldAnz` varchar(10) NOT NULL,
  `fldGespreis` varchar(10) NOT NULL,
  `fldAbrjahr` year(4) NOT NULL,
  `fldArchivDat` varchar(10) NOT NULL,
  `fldgeraetenr` varchar(10) NOT NULL,
  `fldid_geraet` bigint(20) NOT NULL,
  `fldAblesedat` date NOT NULL,
  `fldok` varchar(5) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblheizung` (`fldindex`, `fldbez`, `fldid_ort`, `fldPreis`, `fldAnz`, `fldGespreis`, `fldAbrjahr`, `fldArchivDat`, `fldgeraetenr`, `fldid_geraet`, `fldAblesedat`, `fldok`) VALUES
(3,	'Arbeitszimmer',	31,	'0.16158035',	'1516',	'',	'2012',	'',	'',	73,	'0000-00-00',	'J'),
(13,	'Badezimmer',	55,	'0.16158035',	'79',	'',	'2012',	'',	'',	63,	'0000-00-00',	'J'),
(33,	'Heizung links',	21,	'0.16158035',	'1632',	'',	'2012',	'',	'',	23,	'0000-00-00',	'J'),
(43,	'Heizung rechts',	21,	'0.16158035',	'1888',	'',	'2012',	'',	'',	33,	'0000-00-00',	'J'),
(53,	'Flur',	41,	'0.16158035',	'1795',	'',	'2012',	'',	'',	13,	'0000-00-00',	'J'),
(63,	'Bad',	51,	'0.16158035',	'2688',	'',	'2012',	'',	'',	93,	'0000-00-00',	'J'),
(73,	'KÃ¼che',	19,	'0.16158035',	'2536',	'',	'2012',	'',	'',	83,	'0000-00-00',	'J'),
(83,	'Heizung links',	52,	'0.16158035',	'1491',	'',	'2012',	'',	'',	103,	'0000-00-00',	'J'),
(93,	'Heizung rechts',	52,	'0.16158035',	'1624',	'',	'2012',	'',	'',	3,	'0000-00-00',	'J'),
(103,	'Heizung links',	53,	'0.16158035',	'2476',	'',	'2012',	'',	'',	123,	'0000-00-00',	'J'),
(113,	'Heizung rechts',	53,	'0.16158035',	'780',	'',	'2012',	'',	'',	113,	'0000-00-00',	'J'),
(123,	'Heizung links',	56,	'0.16158035',	'1275',	'',	'2012',	'',	'',	43,	'0000-00-00',	'J'),
(133,	'Heizung hinten',	56,	'0.16158035',	'478',	'',	'2012',	'',	'',	53,	'0000-00-00',	'J'),
(283,	'',	12,	'1',	'-1380',	'',	'2012',	'',	'',	133,	'0000-00-00',	'N'),
(373,	'',	31,	'0.16158035',	'476',	'',	'2014',	'',	'',	73,	'2014-07-07',	'J'),
(383,	'',	41,	'0.16158035',	'271',	'',	'2014',	'',	'',	13,	'2014-07-07',	'J'),
(393,	'',	53,	'0.16158035',	'1158',	'',	'2014',	'',	'',	123,	'2014-07-07',	'J'),
(403,	'',	53,	'0.16158035',	'702',	'',	'2014',	'',	'',	113,	'2014-07-07',	'J'),
(413,	'',	52,	'0.16158035',	'894',	'',	'2014',	'',	'',	103,	'2014-07-07',	'J'),
(423,	'',	52,	'0.16158035',	'906',	'',	'2014',	'',	'',	3,	'2014-07-07',	'J'),
(433,	'',	19,	'0.16158035',	'1016',	'',	'2014',	'',	'',	83,	'2014-07-07',	'J'),
(443,	'',	51,	'0.16158035',	'1328',	'',	'2014',	'',	'',	93,	'2014-07-07',	'J'),
(453,	'',	21,	'0.16158035',	'754',	'',	'2014',	'',	'',	33,	'2014-07-07',	'J'),
(463,	'',	21,	'0.16158035',	'1247',	'',	'2014',	'',	'',	23,	'2014-07-07',	'J'),
(473,	'',	55,	'0.16158035',	'1',	'',	'2014',	'',	'',	63,	'2014-07-07',	'J'),
(483,	'',	56,	'0.16158035',	'694',	'',	'2014',	'',	'',	43,	'2014-07-07',	'J'),
(493,	'',	56,	'0.16158035',	'272',	'',	'2014',	'',	'',	53,	'2014-07-07',	'J'),
(503,	'',	12,	'1',	'-1400',	'',	'2014',	'',	'',	133,	'0000-00-00',	'N');

CREATE TABLE `tblhelpindex` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(50) NOT NULL,
  `fldtyp` varchar(20) NOT NULL,
  `fldsort` varchar(10) NOT NULL,
  `fldmenu` bigint(20) NOT NULL,
  `fldpageno` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblhelpindex` (`fldindex`, `fldbez`, `fldtyp`, `fldsort`, `fldmenu`, `fldpageno`) VALUES
(1,	'Inhalsverzeichnis',	'INHALT',	'0001',	0,	0),
(11,	'Filly',	'',	'',	1501,	3),
(21,	'Buchführung',	'',	'',	213,	2);

CREATE TABLE `tblhelppage` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldpageno` int(11) NOT NULL,
  `fldpagename` varchar(50) NOT NULL,
  `fldhelpurl` varchar(250) NOT NULL,
  `fldheadline` varchar(100) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblhelppage` (`fldindex`, `fldpageno`, `fldpagename`, `fldhelpurl`, `fldheadline`) VALUES
(1,	2,	'buchfuehrung',	'buchfuehrung.html',	'Buchführung'),
(2,	1,	'helpindex',	'helpindex.php',	'Hilfe'),
(11,	3,	'filly',	'filly.html',	'Filly');

CREATE TABLE `tbljahr` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldjahr` year(4) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbljahr` (`fldindex`, `fldjahr`) VALUES
(3,	'2012'),
(13,	'2013'),
(23,	'2014'),
(24,	'2015');

CREATE TABLE `tblkategorie` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblkategorie` (`fldindex`, `fldbez`) VALUES
(4,	'(ohne)'),
(3,	'Themen'),
(23,	'Erledigung'),
(13,	'Aufgaben'),
(31,	'Computerarbeiten');

CREATE TABLE `tblktoart` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktoart` (`fldIndex`, `fldBez`) VALUES
(24,	'EINKAUF'),
(25,	'LASTSCHRIFT');

CREATE TABLE `tblktobanken` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(50) NOT NULL,
  `fldArt` varchar(20) NOT NULL,
  `fldcalc` varchar(4) NOT NULL,
  `fldaktiv` varchar(1) NOT NULL DEFAULT 'N',
  `fldid_benutzer` bigint(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblktobanken` (`fldIndex`, `fldBez`, `fldArt`, `fldcalc`, `fldaktiv`, `fldid_benutzer`) VALUES
(1,	'HORST',	'PERSON',	'JA',	'N',	1),
(2,	'CHRIS',	'PERSON',	'JA',	'N',	2),
(3,	'Offenen Posten',	'',	'',	'N',	0),
(4,	'Bank_Chris',	'PERSON',	'',	'N',	2),
(5,	'Bank_Horst',	'PERSON',	'',	'N',	1),
(6,	'(ohne)',	'',	'',	'N',	0),
(7,	'Frieda_Sparkonto',	'',	'',	'N',	3),
(8,	'horst_bargeld',	'',	'JA',	'N',	1),
(9,	'chris_bargeld',	'',	'',	'N',	2);

CREATE TABLE `tblktodauerauftrag` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldbetrag` decimal(10,2) NOT NULL,
  `fldgesamtbetrag` decimal(10,2) NOT NULL,
  `fldid_ktogrp` bigint(20) NOT NULL,
  `fldid_kto` bigint(20) NOT NULL,
  `fldid_dauerauftragtyp` bigint(20) NOT NULL,
  `fldid_ktoeatyp` bigint(20) NOT NULL,
  `fldaktiv` varchar(1) COLLATE utf8_bin NOT NULL,
  `fldfaelligdatum` date NOT NULL,
  `fldanzmon` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktodauerauftrag` (`fldindex`, `fldbez`, `fldbetrag`, `fldgesamtbetrag`, `fldid_ktogrp`, `fldid_kto`, `fldid_dauerauftragtyp`, `fldid_ktoeatyp`, `fldaktiv`, `fldfaelligdatum`, `fldanzmon`) VALUES
(3,	'Kindergeld',	184.00,	0.00,	4,	83,	3,	3,	'J',	'0000-00-00',	'1'),
(13,	'Miete',	-980.00,	0.00,	5,	93,	13,	13,	'J',	'0000-00-00',	'1'),
(33,	'Schulden',	-150.00,	0.00,	4,	133,	13,	13,	'J',	'2014-06-01',	'1'),
(43,	'Strom',	-153.00,	0.00,	5,	18,	23,	13,	'J',	'0000-00-00',	'1'),
(53,	'Versicherung',	-41.21,	0.00,	4,	153,	23,	13,	'J',	'0000-00-00',	'1'),
(63,	'Gehalt Horst',	2026.00,	0.00,	5,	63,	3,	3,	'J',	'0000-00-00',	'1'),
(73,	'Lebensmittel',	-500.00,	0.00,	1,	3,	33,	13,	'J',	'0000-00-00',	''),
(83,	'Festnetz-Telefon',	-60.00,	0.00,	5,	20,	43,	13,	'J',	'0000-00-00',	'1'),
(93,	'Garagenmiete',	-30.00,	0.00,	5,	93,	13,	13,	'J',	'0000-00-00',	'1'),
(103,	'Homepage',	-61.48,	0.00,	5,	113,	43,	13,	'J',	'0000-00-00',	'12'),
(113,	'Spareinlage',	-45.00,	0.00,	5,	207,	13,	13,	'J',	'0000-00-00',	'1'),
(123,	'Flinkster Monatsmiete',	-10.00,	0.00,	5,	24,	23,	13,	'J',	'0000-00-00',	'1'),
(133,	'ADAC Mietgliedsbeitrag',	0.00,	0.00,	5,	0,	43,	13,	'N',	'0000-00-00',	''),
(143,	'Lohnsteuerhilfebeitrag',	-240.00,	0.00,	5,	210,	43,	13,	'J',	'0000-00-00',	'12'),
(153,	'Mietervereinbeitrag',	-72.00,	0.00,	5,	123,	43,	13,	'J',	'0000-00-00',	'12'),
(163,	'Gehalt Chris',	850.00,	0.00,	4,	73,	3,	3,	'J',	'0000-00-00',	'1'),
(173,	'Autoversicherung',	-280.00,	0.00,	5,	0,	0,	13,	'N',	'0000-00-00',	''),
(193,	'Nebenkosten Ratenzahlung',	-100.00,	0.00,	5,	0,	43,	13,	'N',	'0000-00-00',	'1'),
(203,	'Rundfunkgebühr',	-53.94,	0.00,	4,	163,	13,	13,	'J',	'2014-07-01',	'3'),
(204,	'Familienjahreskarte Zoo',	-175.00,	-175.00,	4,	43,	23,	13,	'J',	'0000-00-00',	'12'),
(205,	'Flinkster Fahrtkosten',	-250.00,	0.00,	5,	206,	23,	13,	'J',	'0000-00-00',	'1'),
(206,	'Monatskarte Frieda',	-60.40,	0.00,	4,	24,	23,	13,	'N',	'0000-00-00',	'1'),
(207,	'Musikschule',	-28.00,	0.00,	4,	5,	23,	13,	'J',	'0000-00-00',	'1'),
(208,	'World Vision',	-30.00,	0.00,	4,	21,	23,	13,	'J',	'0000-00-00',	'1');

CREATE TABLE `tblktoEATyp` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktoEATyp` (`fldIndex`, `fldBez`) VALUES
(3,	'EINNAHME'),
(13,	'AUSGABE'),
(23,	'UMBUCH'),
(33,	'(ohne)');

CREATE TABLE `tblktogrpzuord` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_kto` bigint(20) NOT NULL,
  `fldid_ktogrp` bigint(20) NOT NULL,
  `fldid_oberkonto` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblktogrp_liste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblktoinhgrpzuord` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_ktoinhaber` bigint(20) NOT NULL,
  `fldid_ktoinhgrp` bigint(20) NOT NULL,
  `fldinhaber` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktoinhgrpzuord` (`fldindex`, `fldid_ktoinhaber`, `fldid_ktoinhgrp`, `fldinhaber`) VALUES
(1,	8,	4,	''),
(2,	9,	4,	''),
(3,	5,	5,	''),
(4,	4,	5,	'');

CREATE TABLE `tblktoinhgrp_liste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktoinhgrp_liste` (`fldindex`, `fldbez`) VALUES
(3,	'Horst_Bargeld'),
(4,	'HorstChris_Bargeld'),
(5,	'HorstChris_Bank');

CREATE TABLE `tblktokonten` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldKurz` varchar(20) CHARACTER SET latin1 NOT NULL,
  `fldBez` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fldTyp` varchar(10) CHARACTER SET latin1 NOT NULL,
  `fldid_oberkonto` bigint(20) NOT NULL,
  `fldfarbe` varchar(7) NOT NULL,
  `fldParent` bigint(20) NOT NULL,
  `fldKtoTyp` varchar(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tblktokonten` (`fldIndex`, `fldKurz`, `fldBez`, `fldTyp`, `fldid_oberkonto`, `fldfarbe`, `fldParent`, `fldKtoTyp`) VALUES
(1,	'HAUSHALT',	'Haushaltswaren',	'AUSGABE',	23,	'',	0,	''),
(3,	'LEBEN',	'Lebensmittel',	'AUSGABE',	23,	'',	0,	''),
(4,	'ABHEBUNG',	'Abhebung',	'UMBUCH',	43,	'',	0,	''),
(5,	'KIND',	'Kind',	'AUSGABE',	23,	'',	0,	''),
(6,	'AUSFLUG',	'Ausflug',	'AUSGABE',	93,	'',	0,	''),
(7,	'UMBUCH',	'Umbuch',	'UMBUCH',	43,	'',	0,	''),
(8,	'PRIVAT',	'Privates',	'AUSGABE',	23,	'',	0,	''),
(9,	'PFAND',	'Pfand',	'AUSGABE',	23,	'',	0,	''),
(10,	'PFLEG',	'Pflegemittel (KrÃ¤ms, Shampoo, etc)',	'AUSGABE',	23,	'',	0,	''),
(11,	'KREDIT',	'Kredit',	'',	0,	'',	0,	''),
(12,	'BEKL',	'Bekleidung',	'AUSGABE',	23,	'',	0,	''),
(13,	'GESCH',	'Geschenk',	'AUSGABE',	103,	'',	0,	''),
(14,	'POST',	'Post, Porto',	'AUSGABE',	33,	'',	0,	''),
(15,	'EINKAUF',	'Einkauf',	'AUSGABE',	23,	'',	0,	''),
(16,	'AUTO',	'Auto',	'AUSGABE',	73,	'',	0,	''),
(17,	'GENUSS',	'Genussmittel',	'AUSGABE',	93,	'',	0,	''),
(18,	'STROM',	'Strom',	'AUSGABE',	53,	'',	0,	''),
(19,	'MED',	'Medizin',	'AUSGABE',	23,	'',	0,	''),
(20,	'TELEFON',	'Telefon',	'AUSGABE',	53,	'',	0,	''),
(21,	'SPENDE',	'Spende',	'AUSGABE',	103,	'',	0,	''),
(22,	'LASTSCHRIFT',	'Lastschrift',	'UMBUCH',	43,	'',	0,	''),
(24,	'FAHR',	'Fahrtkosten',	'AUSGABE',	73,	'',	0,	''),
(25,	'LASTSCHR',	'Lastschrift',	'',	0,	'',	0,	''),
(26,	'VERGNUEGEN',	'VergnÃ¼gen',	'AUSGABE',	93,	'',	0,	''),
(33,	'GLUEBIRNEN',	'GlÃ¼hbirnen',	'AUSGABE',	33,	'',	0,	''),
(34,	'(ohne)',	'',	'',	34,	'',	0,	''),
(43,	'FAMILIE',	'Familie',	'AUSGABE',	33,	'',	0,	''),
(53,	'(ohne)',	'(ohne)',	'',	0,	'',	0,	''),
(63,	'GEHALTHORST',	'Gehalt Horst',	'EINNAHME',	3,	'',	0,	''),
(73,	'GEHALTCHRIS',	'Gehalt Christiane',	'EINNAHME',	3,	'',	0,	''),
(83,	'KINDERGELD',	'Kindergeld',	'EINNAHME',	13,	'',	0,	''),
(93,	'MIETE',	'Miete',	'AUSGABE',	53,	'',	0,	''),
(103,	'SONSTIGES',	'Sonstiges',	'AUSGABE',	33,	'',	0,	''),
(113,	'HOMEPAGE',	'Homepage',	'AUSGABE',	53,	'',	0,	''),
(123,	'GEBUEHR',	'Gebühren',	'AUSGABE',	83,	'',	0,	''),
(133,	'SCHULDEN',	'Schulden',	'AUSGABE',	83,	'',	0,	''),
(153,	'VERSICHERUNG',	'Versicherung',	'AUSGABE',	53,	'',	0,	''),
(163,	'RUNDFUNK',	'Rundfunkgebühr',	'AUSGABE',	53,	'',	0,	''),
(173,	'GUTSCHRIFT',	'Gutschrift',	'EINNAHME',	13,	'',	0,	''),
(183,	'SPORT',	'Sport',	'AUSGABE',	93,	'',	0,	''),
(193,	'PRAESENT',	'Present',	'EINNAHME',	13,	'',	0,	''),
(203,	'RUECKBUCHUNG',	'RÃ¼ckbuchung',	'EINNAHME',	13,	'',	0,	''),
(204,	'LEBEN_HORST',	'Lebensmittel_horst',	'AUSGABE',	23,	'',	0,	''),
(205,	'CHRIS_PRIVAT',	'Chris Privat',	'AUSGABE',	0,	'',	0,	''),
(206,	'FLINKSTER',	'Flinkster',	'AUSGABE',	0,	'',	0,	''),
(207,	'SPAREINLAGE',	'Spareinlage',	'UMBUCH',	0,	'',	0,	''),
(208,	'MASTERCARD',	'Mastercard',	'UMBUCH',	0,	'',	0,	''),
(209,	'BUECHER',	'BÃ¼cher',	'AUSGABE',	0,	'',	0,	''),
(210,	'LOHNSTEUERBEITRAG',	'Lohnsteuerbeitag',	'AUSGABE',	53,	'',	0,	''),
(211,	'EINZAHLUNG',	'Einzahlung',	'EINNAHME',	0,	'',	0,	''),
(212,	'LOSGEWINN',	'Losgewinn',	'EINNAHME',	0,	'',	0,	''),
(213,	'ANFANGSBESTAND',	'Anfangsbestand',	'EINNAHME',	0,	'',	0,	''),
(214,	'BARGUTSCHRIFT',	'Bargutschrift',	'EINNAHME',	0,	'',	0,	''),
(215,	'PFANDGUTSCHRIFT',	'Pfandgutschrift',	'EINNAHME',	0,	'',	0,	'');

CREATE TABLE `tblktooberkonten` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldKurz` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldTyp` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktooberkonten` (`fldIndex`, `fldBez`, `fldKurz`, `fldTyp`) VALUES
(34,	'(ohne)',	'',	''),
(3,	'Gehalt',	'GEHALT',	'EINNAHME'),
(13,	'Sonstige Einnahmen',	'SONSTEIN',	'EINNAHME'),
(23,	'Lebenshaltung',	'LEBENSHALT',	'AUSGABE'),
(33,	'Sonstige Ausgaben',	'SONSTAUS',	'AUSGABE'),
(43,	'Umbuchungen',	'UMBUCH',	'UMBUCH'),
(53,	'Miete, Strom, Versicherungen',	'MIETE',	'AUSGABE'),
(63,	'(ohne)',	'',	''),
(73,	'Auto, Fahrkosten (Bahn)',	'AUTO',	'AUSGABE'),
(83,	'GebÃ¼hren, Schulden',	'GEBUEHR',	'AUSGABE'),
(93,	'Freizeit, VergnÃ¼gen',	'FREIZEIT',	'AUSGABE'),
(103,	'Geschenke, Spenden',	'GESCHENK',	'AUSGABE');

CREATE TABLE `tblktosal` (
  `fldindex` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fldDatum` date NOT NULL,
  `fldUhrzeit` time NOT NULL,
  `fldPos` int(11) NOT NULL,
  `fldBez` varchar(250) CHARACTER SET latin1 NOT NULL,
  `fldArt` varchar(1) CHARACTER SET latin1 NOT NULL,
  `fldKonto` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fldBetrag` decimal(10,2) NOT NULL,
  `fldInhaber` char(20) CHARACTER SET latin1 NOT NULL,
  `fldKtoart` varchar(3) CHARACTER SET latin1 NOT NULL,
  `fldFix` decimal(10,2) NOT NULL,
  `fldorgdatum` date NOT NULL,
  `fldfremdbetrag` decimal(10,2) NOT NULL,
  `fldwaehrung` varchar(10) CHARACTER SET latin1 NOT NULL,
  `fldDetailind` bigint(20) NOT NULL DEFAULT '0',
  `fldUmbuchinhaber` varchar(20) NOT NULL,
  `fldsel` varchar(1) NOT NULL DEFAULT 'N',
  `fldid_ort` bigint(20) NOT NULL,
  `fldtyp` varchar(20) NOT NULL,
  `fldfilename` varchar(250) NOT NULL,
  `fldcomputer` varchar(50) NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flddbsyncnr` int(11) NOT NULL DEFAULT '1',
  `flddel` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `tblktosal` (`fldindex`, `fldDatum`, `fldUhrzeit`, `fldPos`, `fldBez`, `fldArt`, `fldKonto`, `fldBetrag`, `fldInhaber`, `fldKtoart`, `fldFix`, `fldorgdatum`, `fldfremdbetrag`, `fldwaehrung`, `fldDetailind`, `fldUmbuchinhaber`, `fldsel`, `fldid_ort`, `fldtyp`, `fldfilename`, `fldcomputer`, `fldtimestamp`, `flddbsyncnr`, `flddel`) VALUES
(1473,	'2013-02-02',	'00:00:00',	0,	'Cappucino',	'',	'PRIVAT',	-3.60,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(1223,	'2013-01-02',	'00:00:00',	0,	'Kassensturz',	'U',	'UMBUCH',	0.00,	'CHRIS',	'VAL',	8.93,	'0000-00-00',	0.00,	'EURO',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(243,	'2010-04-07',	'00:00:00',	0,	'Kassensturz',	'U',	'UMBUCH',	11.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(253,	'2010-04-08',	'00:00:00',	0,	'Penny Lebensmittel',	'G',	'LEBEN',	-2.20,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(323,	'2012-02-29',	'00:00:00',	0,	'Kassensturz',	'P',	'UMBUCH',	42.21,	'CHRIS',	'VAL',	51.01,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(393,	'2012-05-02',	'00:00:00',	0,	'Kassensturz',	'U',	'UMBUCH',	4.76,	'CHRIS',	'VAL',	55.77,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(1463,	'2013-02-07',	'00:00:00',	0,	'Sonstige Ausgaben (Kassensturz)',	'',	'GUTSCHRI',	13.52,	'CHRIS',	'',	18.85,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(1474,	'2013-02-10',	'00:00:00',	0,	'Kassensturz',	'',	'UMBUCH',	6.59,	'FRIEDA',	'',	6.59,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(1483,	'2013-02-13',	'00:00:00',	0,	'Telefonrechnung Januar 2013',	'',	'TELEFON',	-2049.49,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(1533,	'2013-01-29',	'00:00:00',	0,	'Korrektur',	'',	'SONSTIGE',	42.32,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(1543,	'2013-01-28',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4693,	'2013-01-31',	'00:00:00',	0,	'2401649130123124016491301231IHRE RECHNUNG VOM 23.0',	'P',	'AUTO',	-38.36,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4703,	'2013-01-28',	'00:00:00',	0,	'28.01/12.13UHR 120  B.BNPGA NR00003457 BLZ37050299',	'P',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4713,	'2013-01-28',	'00:00:00',	0,	'ELV61302499 26.01 14.27 ME0KAUFLAND SAGT DANKE',	'P',	'EINKAUF',	-28.39,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4723,	'2013-01-28',	'00:00:00',	0,	'EC 65443605 260113133011OC0ALDI SUED SAGT DANKE',	'P',	'EINKAUF',	-51.84,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4733,	'2013-01-23',	'00:00:00',	0,	'23.01/12.14UHR 120  B.BNPGA NR00003456 BLZ37050299',	'P',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4743,	'2013-01-22',	'00:00:00',	0,	'22.01/12.15UHR 120  B.BNPGA NR00003456 BLZ37050299',	'P',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4753,	'2013-01-21',	'00:00:00',	0,	'EC 65443605 190113141633OC0ALDI SUED SAGT DANKE',	'P',	'EINKAUF',	-43.20,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4763,	'2013-01-18',	'00:00:00',	0,	'VOM 16.01.2013 20.48 UHRMOBILFUNKNR016096700923CON',	'P',	'TELEFON',	-30.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4773,	'2013-01-15',	'00:00:00',	0,	'KUNDENNR. 10412030RECHNUNG 12 2012DATUM 15.01.2013',	'P',	'TELEFON',	-96.40,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4783,	'2013-01-15',	'00:00:00',	0,	'KAUTIONKD-NR. 401178DATUM 15.01.2013, 00.15 UHR1.T',	'P',	'AUTO',	-500.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4793,	'2013-01-15',	'00:00:00',	0,	'TRÄGERANTEIL / ESSENSGELDDATUM 15.01.2013, 00.01 U',	'P',	'KIND',	-71.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4803,	'2013-01-15',	'00:00:00',	0,	'MIETE + NEBENKOSTENDATUM 14.01.2013, 23.51 UHR1.TA',	'P',	'MIETE',	-950.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4813,	'2013-01-14',	'00:00:00',	0,	'ELV61302148 12.01 20.58 ME0KAUFLAND SAGT DANKE',	'P',	'EINKAUF',	-74.08,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4823,	'2013-01-14',	'00:00:00',	0,	'EC 65443575 120113162739OC0ALDI SUED SAGT DANKE',	'P',	'EINKAUF',	-47.28,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4833,	'2013-01-14',	'00:00:00',	0,	'12.01/15.06UHR 740  NMFOYGA NR00003764 BLZ37050299',	'P',	'ABHEBUNG',	-100.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4843,	'2013-01-10',	'00:00:00',	0,	'ZAHLUNGSBELEG 003530578941RGNR.10000495813047,94  ',	'P',	'HOMEPAGE',	-47.94,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4853,	'2013-01-08',	'00:00:00',	0,	'050114030039643141230058290ELV65158989 05.01 14.03',	'P',	'EINKAUF',	-22.64,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4863,	'2013-01-08',	'00:00:00',	0,	'VERDIENSTABRECHNUNG 12.12/1MAUSER-WERKE GMBH',	'P',	'GEHALTHORST',	2827.09,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'horald-Easynote',	'2015-09-01 15:59:57',	1,	'N'),
(4873,	'2013-01-08',	'00:00:00',	0,	'Benachrichtigungsentg.KREISSPARKASSE KOELN',	'P',	'GEBUEHR',	-3.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4883,	'2013-01-08',	'00:00:00',	0,	'Benachrichtigungsentg.KREISSPARKASSE KOELN',	'P',	'GEBUEHR',	-3.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4893,	'2013-01-04',	'00:00:00',	0,	'EC 71028375 02.01 07.48 CE0ARAL TST. KÖLN ÄUßERE-K',	'P',	'AUTO',	-37.50,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4903,	'2013-01-02',	'00:00:00',	0,	'LS0000000651683KD.NR 215608HORST MEYERMERKENICHER ',	'P',	'STROM',	-72.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4913,	'2013-01-02',	'00:00:00',	0,	'EC 60907777 311212091258OC0ADAC CM K LN',	'P',	'AUTO',	-109.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4923,	'2013-01-02',	'00:00:00',	0,	'EC 65154571 311212100627OC0REWE SAGT DANKE  434000',	'P',	'EINKAUF',	-19.03,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4933,	'2013-01-02',	'00:00:00',	0,	'EC 67022641 281212173130OC0C&amp',	'P',	'BEKL',	-24.25,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4943,	'2013-01-02',	'00:00:00',	0,	'EC 65482548 281212174836OC0MEDIA MARKT DANKT 65482',	'P',	'EINKAUF',	-17.98,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(4953,	'2013-01-02',	'00:00:00',	0,	'GARAGENMIETEHILDEGARD HELFF',	'P',	'MIETE',	-30.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6803,	'2012-12-31',	'00:00:00',	0,	'Anfangsbestand',	'',	'UMBUCH',	972.59,	'Bank_Horst',	'',	972.59,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'horald-Easynote',	'2015-09-01 16:06:37',	1,	'N'),
(6813,	'2013-01-14',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	100.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6823,	'2013-01-22',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6833,	'2013-01-23',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6853,	'2012-12-31',	'00:00:00',	0,	'Anfangsbestand',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6863,	'2013-01-31',	'00:00:00',	0,	'Sonstiges',	'',	'SONSTIGE',	-250.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6873,	'2012-12-31',	'00:00:00',	0,	'Anfangsbestand',	'',	'UMBUCH',	-46.84,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6883,	'2012-12-31',	'00:00:00',	0,	'ÜBERWEISUNG TARGOBANK TBOL AM 29 12 2012 UM 23 06 ',	'I',	'UMBUCH',	-8.40,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6893,	'2012-12-31',	'00:00:00',	0,	'FUER DIE INANSPRUCHNAHME DES DISPOSITIONSKREDITES ',	'I',	'UMBUCH',	0.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6903,	'2012-12-31',	'00:00:00',	0,	'GRUNDGEBÜHR',	'I',	'UMBUCH',	0.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6913,	'2013-01-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300005 BAD',	'I',	'SCHULDEN',	-150.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6923,	'2013-01-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300004 STA',	'I',	'KIND',	-78.59,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6933,	'2013-01-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300002 RUN',	'I',	'RUNDFUNK',	-53.94,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6943,	'2013-01-02',	'00:00:00',	0,	'RESERV POS EUR 7 18 AUTORISIERUNGSNR 132742 REWE P',	'I',	'EINKAUF',	0.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6953,	'2013-01-02',	'00:00:00',	0,	'GAA-AUSZAHLUNG 002636 1312 0395 GA NR00003595 BLZ37050198 028 12/08 07UHR MERKENICH EUR 25 00 00E2800004800001180028012 0FA508A030C000000000000000 0000000F101212180000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-25.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6963,	'2013-01-02',	'00:00:00',	0,	'POS MIT PIN F016757016757 00000 REWE SAGT DANKE 43',	'I',	'EINKAUF',	-15.72,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6973,	'2013-01-02',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6983,	'2013-01-03',	'00:00:00',	0,	'GUTSCHRIFT PROMEUS AG ERMÄßIGUNG PUPPENBETT',	'I',	'GUTSCHRI',	1.79,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(6993,	'2013-01-03',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 1874809423220513',	'I',	'EINKAUF',	-11.04,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7003,	'2013-01-03',	'00:00:00',	0,	'POS MIT PIN F132742132742 00000 PENNY SAGT DANKE 3',	'I',	'EINKAUF',	-7.18,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7023,	'2013-01-04',	'00:00:00',	0,	'LASTSCHRIFT OTTMAR SCHNEIDER MUSIKSCHULGEB HR JAN ',	'I',	'KIND',	-49.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7033,	'2013-01-04',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 030111580132',	'I',	'EINKAUF',	-14.54,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7053,	'2013-01-07',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000313 1312 0395 GA NR00003595 BLZ37050198 004 01/13 36UHR MERKENICH EUR 25 00 00E6800004800001180028013 0FA508A030C000000000000000 0000000F101301020000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-25.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7063,	'2013-01-07',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000573 1312 0395 GA NR00003538 BLZ37050198 006 01/14 39UHR ZOO KOELN EUR 25 00 00E8800004800001180028013 0FA508A030C000000000000000 0000000F101301040000000000 000000000000 D27600002547410100 0203006040201412259040 0002',	'I',	'ABHEBUNG',	-25.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7073,	'2013-01-07',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7083,	'2013-01-07',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7093,	'2013-01-09',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 1974392361019882',	'I',	'EINKAUF',	-13.80,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7103,	'2013-01-10',	'00:00:00',	0,	'GUTSCHRIFT FAMILIENKASSE KG357357FK149064 0113 920',	'I',	'GUTSCHRI',	184.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7123,	'2013-01-11',	'00:00:00',	0,	'RESERV POS EUR 14 48 AUTORISIERUNGSNR 133393 REWE ',	'I',	'EINKAUF',	0.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7133,	'2013-01-11',	'00:00:00',	0,	'POS MIT PIN F166008166008 00000 C-A Kï¿½LN EC 6702',	'I',	'KIND',	-34.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7143,	'2013-01-14',	'00:00:00',	0,	'LASTSCHRIFT DEVK-GRUPPE 628004453288 VERTRAGSKONTO',	'I',	'VERSICHE',	-40.21,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7153,	'2013-01-14',	'00:00:00',	0,	'LASTSCHRIFT DM DROGERIEMARKT SAGT DANKE 1001095001',	'I',	'EINKAUF',	-16.90,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7163,	'2013-01-14',	'00:00:00',	0,	'POS MIT PIN F133393133393 00000 PENNY SAGT DANKE 3',	'I',	'EINKAUF',	-14.48,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7183,	'2013-01-16',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000724 1312 0395 GA NR00003595 BLZ37050198 015 01/11 24UHR MERKENICH EUR 20 00 00EC800004800001180028013 0FA508A030C000000000000000 0000000F101301110000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-20.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7193,	'2013-01-16',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7203,	'2013-01-17',	'00:00:00',	0,	'RESERV POS EUR 9 83 AUTORISIERUNGSNR 133840 REWE P',	'I',	'EINKAUF',	0.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7213,	'2013-01-17',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 160109340133',	'I',	'EINKAUF',	-11.93,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7223,	'2013-01-18',	'00:00:00',	0,	'LASTSCHRIFT AMAZON SERVICES EUROPE SA 213980822899',	'I',	'EINKAUF',	-12.90,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7233,	'2013-01-18',	'00:00:00',	0,	'POS MIT PIN F133840133840 00000 PENNY SAGT DANKE 3',	'I',	'EINKAUF',	-9.83,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7243,	'2013-01-21',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 180112590133',	'I',	'EINKAUF',	-6.64,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7263,	'2013-01-23',	'00:00:00',	0,	'GAA-AUSZAHLUNG 008241 1312 0395 GA NR00003733 BLZ37050198 022 01/15 13UHR NIEHL EUR 10 00 00EF800004800001180028013 0FA508A030C000000000000000 0000000F101301170000000000 000000000000 D27600002547410100 0203006040201412259040 0002',	'I',	'ABHEBUNG',	-10.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7273,	'2013-01-23',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7283,	'2013-01-24',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 230109060040',	'I',	'EINKAUF',	-15.82,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7293,	'2013-01-28',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 250113100134',	'I',	'EINKAUF',	-15.57,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7303,	'2013-01-29',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 2736320565457042',	'I',	'EINKAUF',	-15.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7313,	'2013-01-30',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 290111460134',	'I',	'EINKAUF',	-11.43,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7323,	'2013-01-31',	'00:00:00',	0,	'LOHN / GEHALT / RENTE PERSONALAMT DER STADT KOELN ',	'I',	'GEHALTCH',	497.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7333,	'2013-01-31',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 1672908424740765',	'I',	'EINKAUF',	-18.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(7343,	'2013-01-31',	'00:00:00',	0,	'GRUNDGEBï¿½HR',	'I',	'GEBUEHR',	-5.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9883,	'2013-02-01',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300004 STADTKASSE KOELN KONTO 37050198 / 0093102978 ELTERNBEITRAG FRIEDA LINA MEYER MO HLENWEG 2',	'I',	'KIND',	-78.59,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9913,	'2013-02-01',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 1235879556721240',	'I',	'EINKAUF',	-29.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9923,	'2013-02-01',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 0497729231509138',	'I',	'EINKAUF',	-11.98,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9933,	'2013-02-01',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 310109420134723131230058290ELV65158990 31 01 09 42 ME0',	'I',	'EINKAUF',	-11.84,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9953,	'2013-02-04',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300005 BAD HOMBURGER INKASSO GMBH KONTO 50050000 / 0014700009 GESCHÄFTSZEICHEN 1683389',	'I',	'SCHULDEN',	-150.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9963,	'2013-02-04',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000005 1312 0395 GA NR80870011 BLZ37160087 003 02/06 42UHR MERHEIM EUR 50 00 00F2800004800001180028013 0FA508A030C000000000000000 0000000F101302010000000000 000000000000 D27600002547410100 02030060402014001Y1406 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9973,	'2013-02-04',	'00:00:00',	0,	'LASTSCHRIFT OTTMAR SCHNEIDER MUSIKSCHULGEB HR FEBR 13',	'I',	'KIND',	-49.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9983,	'2013-02-04',	'00:00:00',	0,	'POS MIT PIN F134834134834 00000 PENNY SAGT DANKE 33300582 EC 65158990 010213110948OC0',	'I',	'EINKAUF',	-22.57,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9993,	'2013-02-04',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10003,	'2013-02-05',	'00:00:00',	0,	'POS MIT PIN F011688011688 00000 APOTHEKEMERKENICH EC 65398675 010213104904OC0',	'I',	'MED',	-10.87,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10033,	'2013-02-07',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 060215260135196131230058290ELV65158990 06 02 15 26 ME0',	'I',	'EINKAUF',	-17.76,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10053,	'2013-02-08',	'00:00:00',	0,	'POS MIT PIN F135233135233 00000 PENNY SAGT DANKE 33300582 EC 65158990 070213092528OC0',	'I',	'EINKAUF',	-12.98,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10063,	'2013-02-08',	'00:00:00',	0,	'LASTSCHRIFT AMAZON SERVICES EUROPE SA 3006818706411690',	'I',	'EINKAUF',	-9.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10073,	'2013-02-08',	'00:00:00',	0,	'Rï¿½CKGABE LASTSCHRIFT MANGELS DECKUNG 3006818706411690',	'I',	'RUECKBUCHUNG',	9.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10093,	'2013-02-11',	'00:00:00',	0,	'GUTSCHRIFT BUNDESAGENTUR FUER ARBEIT-S KG357357FK149064 0213620102N DE 94193 30 00043609926/ERST MARKDEF1760/CREF 62010294193 /ADRS RASSE 104 90478 NUERNBERG DE ERVICE-HAUS REGENSBURGER ST',	'I',	'GUTSCHRIFT',	184.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10103,	'2013-02-11',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 080209080135320131230058290ELV65158990 08 02 09 08 ME0',	'I',	'EINKAUF',	-22.37,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10113,	'2013-02-11',	'00:00:00',	0,	'POS MIT PIN F011755011755 00000 APOTHEKEMERKENICH EC 65398675 070213112107OC0',	'I',	'MED',	-21.22,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10133,	'2013-02-13',	'00:00:00',	0,	'LASTSCHRIFT DEVK-GRUPPE 622004470127 VERTRAGSKONTO Z00006939535 DEVK-GRUPPE SAGT DANKE',	'I',	'VERSICHERUNG',	-40.21,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10143,	'2013-02-13',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 120209250135514131230058290ELV65158990 12 02 09 25 ME0',	'I',	'EINKAUF',	-22.25,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10163,	'2013-02-14',	'00:00:00',	0,	'POS MIT PIN F135593135593 00000 PENNY SAGT DANKE 33300582 EC 65158990 130213090605OC0',	'I',	'EINKAUF',	-10.29,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10173,	'2013-02-15',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000295 1312 0395 GA NR00003595 BLZ37050198 014 02/13 39UHR MERKENICH EUR 50 00 00F8800004800001180028013 0FA508A030C000000000000000 0000000F101302130000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10183,	'2013-02-15',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10203,	'2013-02-18',	'00:00:00',	0,	'POS MIT PIN F003635003635 00000 AKZENTE EC 65303741 080213114740OC0',	'I',	'GESCH',	-12.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10213,	'2013-02-19',	'00:00:00',	0,	'POS MIT PIN F040967040967 00000 PENNY SAGT DANKE 33300582 EC 65158989 180213132017OC0',	'I',	'EINKAUF',	-10.61,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10233,	'2013-02-20',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 190208430136056131230058290ELV65158990 19 02 08 43 ME0',	'I',	'EINKAUF',	-16.96,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10243,	'2013-02-20',	'00:00:00',	0,	'Rï¿½CKGABE LASTSCHRIFT MANGELS DECKUNG 190208430136056131230058290ELV65158990 19 02 08 43 ME0',	'I',	'RUECKBUCHUNG',	16.96,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10263,	'2013-02-21',	'00:00:00',	0,	'POS MIT PIN F136159136159 00000 PENNY SAGT DANKE 33300582 EC 65158990 200213092744OC0',	'I',	'EINKAUF',	-13.18,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10273,	'2013-02-22',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 210209200136245131230058290ELV65158990 21 02 09 20 ME0',	'I',	'EINKAUF',	-16.67,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8293,	'2012-12-31',	'00:00:00',	0,	'Anfangsbestand',	'',	'UMBUCH',	560.96,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8303,	'2013-03-25',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	100.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8313,	'2013-03-25',	'00:00:00',	0,	'Geld an Chris',	'',	'UMBUCH',	-50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8323,	'2013-03-25',	'00:00:00',	0,	'Sonstige Ausgaben',	'',	'SONSTIGES',	-39.59,	'HORST',	'',	53.10,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8333,	'2013-03-25',	'00:00:00',	0,	'Geld von Horst',	'',	'UMBUCH',	50.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8343,	'2013-03-25',	'00:00:00',	0,	'Sonstige Ausgaben',	'',	'SONSTIGE',	-15.50,	'CHRIS',	'',	53.35,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8363,	'2013-03-23',	'00:00:00',	0,	'Aldi Einkauf',	'G',	'HAUSHALT',	-3.11,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8373,	'2013-03-23',	'00:00:00',	0,	'Aldi Einkauf',	'G',	'LEBEN',	-52.08,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8383,	'2013-03-23',	'00:00:00',	0,	'Aldi Einkauf',	'G',	'PFAND',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8393,	'2013-03-23',	'00:00:00',	0,	'cafe Einkauf',	'G',	'AUSFLUG',	-10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8403,	'2013-03-23',	'00:00:00',	0,	'Kaufland Einkauf',	'G',	'GESCH',	-8.37,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8413,	'2013-03-23',	'00:00:00',	0,	'Kaufland Einkauf',	'G',	'HAUSHALT',	-7.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8423,	'2013-03-23',	'00:00:00',	0,	'Kaufland Einkauf',	'G',	'KIND',	-3.73,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8433,	'2013-03-23',	'00:00:00',	0,	'Kaufland Einkauf',	'G',	'LEBEN',	-7.16,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8443,	'2013-03-23',	'00:00:00',	0,	'Kaufland Einkauf',	'G',	'PFLEG',	-1.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8453,	'2013-03-27',	'00:00:00',	0,	'Ostergeschenke (BÃ¼cher)',	'',	'GESCH',	-10.75,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8463,	'2013-03-27',	'00:00:00',	0,	'Sonstige Einnahmen',	'',	'GUTSCHRI',	0.84,	'CHRIS',	'',	43.44,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8473,	'2013-03-30',	'00:00:00',	0,	'Aldi Einkauf',	'',	'HAUSHALT',	-0.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8483,	'2013-03-30',	'00:00:00',	0,	'Aldi Einkauf',	'',	'LEBEN',	-40.58,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8493,	'2013-03-30',	'00:00:00',	0,	'Aldi Lastschrift',	'',	'LASTSCHRIFT',	41.57,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8503,	'2013-03-30',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'HAUSHALT',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8513,	'2013-03-30',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'KIND',	-1.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8523,	'2013-03-30',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'LEBEN',	-14.65,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8533,	'2013-03-30',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'PFAND',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8543,	'2013-03-30',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'PFLEG',	-0.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8553,	'2013-03-30',	'00:00:00',	0,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	21.34,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8563,	'2013-03-30',	'00:00:00',	0,	'Penny Einkauf',	'',	'LEBEN',	-9.41,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8573,	'2013-03-30',	'00:00:00',	0,	'Penny Einkauf',	'',	'PFAND',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8583,	'2013-03-23',	'00:00:00',	0,	'Aldi Lastschrift',	'',	'LASTSCHR',	58.19,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8593,	'2013-03-23',	'00:00:00',	0,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	28.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8603,	'2013-04-02',	'00:00:00',	0,	'Sonstige Ausgaben (Kassensturz)',	'',	'SONSTIGES',	-31.64,	'HORST',	'',	10.55,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8613,	'2013-04-02',	'00:00:00',	0,	'Sonstige Einnahmen',	'',	'GUTSCHRIFT',	26.82,	'CHRIS',	'',	70.26,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8623,	'2013-04-03',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8633,	'2013-04-03',	'00:00:00',	0,	'Badminton',	'',	'SPORT',	-6.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8643,	'2013-04-03',	'00:00:00',	0,	'Sonstige Ausgaben (Kassensturz)',	'',	'SONSTIGES',	0.00,	'HORST',	'',	42.01,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8653,	'2013-04-03',	'00:00:00',	0,	'Batterien und Stopfpilz',	'',	'HAUSHALT',	-9.59,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(8663,	'2013-04-03',	'00:00:00',	0,	'Deo',	'',	'PFLEG',	-2.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9023,	'2013-03-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	350.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9033,	'2013-04-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9043,	'2013-05-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9053,	'2013-06-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9063,	'2013-07-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9073,	'2013-08-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9083,	'2013-09-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9093,	'2013-10-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9103,	'2013-11-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9113,	'2013-12-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9123,	'2014-01-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9133,	'2014-02-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9143,	'2014-03-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9153,	'2014-04-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9163,	'2014-05-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9173,	'2014-06-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9183,	'2014-07-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	100.00,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9193,	'2014-08-01',	'00:00:00',	0,	'Rate',	'',	'TELEFON',	99.49,	'Netcologne',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9203,	'2013-04-07',	'00:00:00',	0,	'Spende',	'',	'SPENDE',	-2.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9213,	'2013-04-07',	'00:00:00',	0,	'Flutschfinger',	'',	'KIND',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9223,	'2013-04-07',	'00:00:00',	0,	'Pommes',	'',	'FAMILIE',	-2.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9233,	'2013-04-07',	'00:00:00',	0,	'Eis',	'',	'KIND',	-1.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9243,	'2013-04-06',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9253,	'2013-04-06',	'00:00:00',	0,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	16.91,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9263,	'2013-04-06',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'HAUSHALT',	-5.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9273,	'2013-04-06',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'KIND',	-4.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9283,	'2013-04-06',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'LEBEN',	-1.68,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9293,	'2013-04-06',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'PFAND',	-0.25,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9303,	'2013-04-06',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'PFLEG',	-4.10,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9313,	'2013-04-06',	'00:00:00',	0,	'Aldi Lastschrift',	'',	'LASTSCHRIFT',	56.46,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9323,	'2013-04-06',	'00:00:00',	0,	'Aldi Einkauf',	'',	'KIND',	-0.29,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9333,	'2013-04-06',	'00:00:00',	0,	'Aldi Einkauf',	'',	'LEBEN',	-53.17,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9343,	'2013-04-06',	'00:00:00',	0,	'Aldi Einkauf',	'',	'PFAND',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9353,	'2013-04-13',	'00:00:00',	0,	'Penny Lastschrift',	'',	'LASTSCHRIFT',	36.65,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9363,	'2013-04-13',	'00:00:00',	0,	'Penny Einkauf',	'',	'LEBEN',	-35.15,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9373,	'2013-04-13',	'00:00:00',	0,	'Penny Einkauf',	'',	'PFAND',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9383,	'2013-04-13',	'00:00:00',	0,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	8.34,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9393,	'2013-04-13',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'HAUSHALT',	-3.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9403,	'2013-04-13',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'LEBEN',	-4.44,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9453,	'2013-03-03',	'00:00:00',	0,	'Kautionsvorlage',	'',	'PRIVAT',	-600.00,	'Bar_Papa',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9463,	'2013-03-03',	'00:00:00',	0,	'Kautionsvorlage',	'',	'PRIVAT',	600.00,	'Bar_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9473,	'2013-05-04',	'00:00:00',	0,	'Penny Lastschrift',	'',	'LASTSCHRIFT',	23.22,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9483,	'2013-05-04',	'00:00:00',	0,	'Penny Einkauf',	'',	'HAUSHALT',	-0.66,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9493,	'2013-05-04',	'00:00:00',	0,	'Penny Einkauf',	'',	'LEBEN',	-22.06,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9503,	'2013-05-04',	'00:00:00',	0,	'Penny Einkauf',	'',	'PFAND',	-0.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9513,	'2013-05-04',	'00:00:00',	0,	'Sonstige Ausgaben (Kassensturz)',	'',	'SONSTIGES',	0.00,	'HORST',	'',	9.78,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9523,	'2013-05-05',	'00:00:00',	0,	'Spende',	'',	'SPENDE',	-2.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9533,	'2013-05-05',	'00:00:00',	0,	'faire Banane',	'',	'KIND',	-0.55,	'HORST',	'',	6.73,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9543,	'2013-05-05',	'00:00:00',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-2.72,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9553,	'2013-05-05',	'00:00:00',	0,	'vorzeitiges Geburtstagsgeschenk',	'',	'PRAESENT',	100.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9563,	'2013-01-26',	'00:00:00',	0,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	28.39,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9573,	'2013-01-26',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'HAUSHALT',	-7.54,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9583,	'2013-01-26',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'KIND',	-5.57,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9593,	'2013-01-26',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'LEBEN',	-12.03,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9603,	'2013-01-26',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'PFAND',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9613,	'2013-01-26',	'00:00:00',	0,	'Kaufland Einkauf',	'',	'PFLEG',	-1.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9623,	'2013-01-26',	'00:00:00',	0,	'Aldi Lastschrift',	'',	'LASTSCHRIFT',	51.84,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9633,	'2013-01-26',	'00:00:00',	0,	'Aldi Einkauf',	'',	'HAUSHALT',	-1.35,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9643,	'2013-01-26',	'00:00:00',	0,	'Aldi Einkauf',	'',	'LEBEN',	-48.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9653,	'2013-01-26',	'00:00:00',	0,	'Aldi Einkauf',	'',	'PFAND',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9663,	'2013-05-09',	'00:00:00',	0,	'Waffeln, Apfelschorle',	'',	'AUSFLUG',	-2.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9673,	'2013-05-09',	'00:00:00',	0,	'Eis',	'',	'AUSFLUG',	-6.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9683,	'2013-05-08',	'00:00:00',	0,	'Schirm',	'',	'BEKL',	-19.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9693,	'2013-05-08',	'00:00:00',	0,	'Armbanduhr',	'',	'BEKL',	-14.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9703,	'2013-05-08',	'00:00:00',	0,	'Verpflegung',	'',	'LEBEN',	-2.03,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9713,	'2013-05-07',	'00:00:00',	0,	'GetrÃ¤nk',	'',	'LEBEN',	-3.84,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9723,	'2013-05-06',	'00:00:00',	0,	'Prepaid',	'',	'TELEFON',	-30.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9733,	'2013-05-06',	'00:00:00',	0,	'zahnbÃ¼rste',	'',	'PFLEG',	-1.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9743,	'2013-05-06',	'00:00:00',	0,	'gemÃ¼se ravioli',	'',	'LEBEN',	-1.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9753,	'2013-04-30',	'00:00:00',	0,	'Sonstige Ausgaben (Kassensturz)',	'',	'SONSTIGES',	-73.73,	'HORST',	'',	9.78,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9763,	'2013-05-11',	'00:00:00',	0,	'GetrÃ¤nke',	'',	'AUSFLUG',	-5.10,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9773,	'2013-05-11',	'00:00:00',	0,	'Lose',	'',	'GESCH',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9783,	'2013-05-11',	'00:00:00',	0,	'Spargel',	'',	'HAUSHALT',	-6.80,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9793,	'2013-05-11',	'00:00:00',	0,	'Motorrad',	'',	'KIND',	-0.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9813,	'2013-05-11',	'00:00:00',	0,	'Einkaufseuro',	'',	'UMBUCH',	-1.00,	'HORST',	'',	5.36,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9823,	'2013-05-12',	'00:00:00',	0,	'Spende',	'',	'SPENDE',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9833,	'2013-05-12',	'00:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9843,	'2013-05-12',	'00:00:00',	0,	'GetrÃ¤nke Altenbergerhof',	'',	'AUSFLUG',	-12.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9853,	'2013-05-13',	'00:00:00',	0,	'NachthÃ¶schen',	'',	'KIND',	-9.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9863,	'2013-05-14',	'00:00:00',	0,	'Einschreiben bnetza',	'',	'POST',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(9873,	'2013-05-14',	'00:00:00',	0,	'Einkauf Netto',	'',	'LEBEN',	-7.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10283,	'2013-02-22',	'00:00:00',	0,	'Rï¿½CKGABE LASTSCHRIFT MANGELS DECKUNG 210209200136245131230058290ELV65158990 21 02 09 20 ME0',	'I',	'RUECKBUCHUNG',	16.67,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10313,	'2013-02-26',	'00:00:00',	0,	'GUTSCHRIFT HORST MEYER GELDGESCHENK',	'I',	'GUTSCHRIFT',	100.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10333,	'2013-02-26',	'00:00:00',	0,	'LASTSCHRIFT ZOOLOGISCHER GARTEN KOELN 233005712301224830 VERLï¿½NGERUNG',	'I',	'VERGNUEGEN',	-75.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10343,	'2013-02-26',	'00:00:00',	0,	'POS MIT PIN F136547136547 00000 PENNY SAGT DANKE 33300582 EC 65158990 250213092249OC0',	'I',	'EINKAUF',	-12.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10363,	'2013-02-27',	'00:00:00',	0,	'GAA-AUSZAHLUNG 001223 1312 0395 GA NR00003595 BLZ37050198 026 02/09 20UHR MERKENICH EUR 5 00 00FD800004800001180028013 0FA508A030C000000000000000 0000000F101302250000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-5.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10373,	'2013-02-27',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10383,	'2013-02-28',	'00:00:00',	0,	'LOHN / GEHALT / RENTE PERSONALAMT DER STADT KOELN LOHN/GEHALT 09202800/201302* KLINIKEN',	'I',	'GEHALTCHRIS',	497.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10403,	'2013-02-28',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 190208430136056131230058290KAUFBETRAG 16 96 EUR + GEBUEHREN 25 46 EUR AUS LASTSCHRIFT',	'I',	'EINKAUF',	-25.46,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(10413,	'2013-02-28',	'00:00:00',	0,	'GRUNDGEBï¿½HR',	'I',	'GEBUEHR',	-5.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11773,	'2013-03-01',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300004 STADTKASSE KOELN KONTO 37050198 / 0093102978 ELTERNBEITRAG FRIEDA LINA MEYER MO HLENWEG 2',	'I',	'KIND',	-78.59,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11783,	'2013-03-01',	'00:00:00',	0,	'POS MIT PIN F136843136843 00000 PENNY SAGT DANKE 33300582 EC 65158990 280213142201OC0',	'I',	'EINKAUF',	-19.40,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11793,	'2013-03-04',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300005 BAD HOMBURGER INKASSO GMBH KONTO 50050000 / 0014700009 GESCHÄFTSZEICHEN 1683389',	'I',	'SCHULDEN',	-150.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11803,	'2013-03-04',	'00:00:00',	0,	'LASTSCHRIFT OTTMAR SCHNEIDER MUSIKSCHULGEB HR M RZ 13',	'I',	'KIND',	-49.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11813,	'2013-03-05',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000012 1312 0395 GA NR00003538 BLZ37050198 004 03/12 46UHR ZOO KOELN EUR 50 00 0100800004800001180028013 0FA508A030C000000000000000 0000000F101302280000000000 000000000000 D27600002547410100 0203006040201412259040 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11823,	'2013-03-05',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11833,	'2013-03-08',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 070312010000790131256000213',	'I',	'EINKAUF',	-14.19,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11843,	'2013-03-08',	'00:00:00',	0,	'LASTSCHRIFT AMAZON DE 0489240864806585',	'I',	'EINKAUF',	-11.90,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11853,	'2013-03-08',	'00:00:00',	0,	'POS MIT PIN F000067000067 00000 PENNY SAGT DANKE 33300582 EC 56000212 070313195414OC0',	'I',	'EINKAUF',	-7.03,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11863,	'2013-03-08',	'00:00:00',	0,	'LASTSCHRIFT AMAZON SERVICES EUROPE SA 2521471822670963',	'I',	'EINKAUF',	-5.10,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11873,	'2013-03-11',	'00:00:00',	0,	'GUTSCHRIFT BUNDESAGENTUR FUER ARBEIT - KG357357FK149064 0313420113N DE 15327 30 00043609926/ERST MARKDEF1760/CREF 42011315327 /ADRS STRASSE 104 90478 NUERNBERG DE FAMILIENKASSE REGENSBURGER',	'I',	'GUTSCHRIFT',	184.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11883,	'2013-03-11',	'00:00:00',	0,	'POS MIT PIN F092471092471 00000 DEUTSCHE BAHN KOELN HBF EC 59082923 090313095235OC0',	'I',	'FAHR',	-42.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11893,	'2013-03-12',	'00:00:00',	0,	'GUTSCHRIFT HORST MEYER GELDGESCHENK',	'I',	'GUTSCHRIFT',	100.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11903,	'2013-03-12',	'00:00:00',	0,	'LASTSCHRIFT AMAZON SERVICES EUROPE SA 0821084556734666',	'I',	'EINKAUF',	-22.94,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11913,	'2013-03-12',	'00:00:00',	0,	'POS MIT PIN F229016229016 00000 DM DROGERIEMARKT SAGT DANKEEC 65131369 090313154200OC0',	'I',	'EINKAUF',	-22.55,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11923,	'2013-03-13',	'00:00:00',	0,	'LASTSCHRIFT DEVK-GRUPPE 590005697675 VERTRAGSKONTO Z00006939535 DEVK-GRUPPE SAGT DANKE',	'I',	'VERSICHERUNG',	-40.21,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11933,	'2013-03-15',	'00:00:00',	0,	'GUTSCHRIFT AMAZON SERVICES EUROPE SARL 0190961114618629',	'I',	'GUTSCHRIFT',	8.44,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11943,	'2013-03-15',	'00:00:00',	0,	'POS MIT PIN F000731000731 00000 PENNY SAGT DANKE 33300582 EC 56000213 140313154041OC0',	'I',	'EINKAUF',	-5.42,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11953,	'2013-03-18',	'00:00:00',	0,	'POS MIT PIN F000928000928 00000 PENNY SAGT DANKE 33300582 EC 56000213 150313185156OC0',	'I',	'EINKAUF',	-33.27,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11963,	'2013-03-18',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 150309390008140131256000213',	'I',	'EINKAUF',	-17.34,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11973,	'2013-03-19',	'00:00:00',	0,	'POS MIT PIN F001120001120 00000 PENNY SAGT DANKE 33300582 EC 56000213 180313090501OC0',	'I',	'EINKAUF',	-15.79,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11983,	'2013-03-19',	'00:00:00',	0,	'POS MIT PIN F012090012090 00000 APOTHEKEMERKENICH EC 65398675 150313152134OC0',	'I',	'MED',	-15.15,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(11993,	'2013-03-20',	'00:00:00',	0,	'GAA-AUSZAHLUNG 219502 1312 0195 GA NR00002098 BLZ37040044 019 03/14 58UHR K-EBERT 15 EUR 50 00 0110800004808001180028013 0FA508A030C000000000000000 0000000F101303180000000000 000000000000 D2760000254741010000000000000000 0203006040201420081691 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12003,	'2013-03-20',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 190310580012170131256000213',	'I',	'EINKAUF',	-20.75,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12013,	'2013-03-20',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-1.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12023,	'2013-03-21',	'00:00:00',	0,	'ï¿½BERWEISUNG TARGOBANK TBOL AM 21 03 2013 UM 05 01 12 13/0 MARCUS BRASSAT KONTO 20069782/0059792900 LILLIFEE BETTWï¿½SCHE',	'I',	'KIND',	-13.89,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12033,	'2013-03-22',	'00:00:00',	0,	'POS MIT PIN F121765121765 00000 ALDI SUED SAGT DANKE EC 65443421 210313111130OC0',	'I',	'EINKAUF',	-13.94,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12043,	'2013-03-25',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 220309280015300131256000213',	'I',	'EINKAUF',	-22.55,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12053,	'2013-03-27',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 260309380018520131256000213',	'I',	'EINKAUF',	-28.15,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12063,	'2013-03-27',	'00:00:00',	0,	'Rï¿½CKGABE LASTSCHRIFT MANGELS DECKUNG 260309380018520131256000213',	'I',	'RUECKBUCHUNG',	28.15,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12073,	'2013-03-28',	'00:00:00',	0,	'LOHN / GEHALT / RENTE PERSONALAMT DER STADT KOELN LOHN/GEHALT 09202800/201303* KLINIKEN',	'I',	'GEHALTCHRIS',	653.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12083,	'2013-03-28',	'00:00:00',	0,	'LASTSCHRIFT PENNY SAGT DANKE 33300582 210209200136245131230058290KAUFBETRAG 16 67 EUR + GEBUEHREN 25 17 EUR AUS LASTSCHRIFT',	'I',	'EINKAUF',	-25.17,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12093,	'2013-03-28',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000033 1312 0395 GA NR00003595 BLZ37050198 027 03/09 29UHR MERKENICH EUR 25 00 0113800004800001180028013 0FA508A030C000000000000000 0000000F101303210000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-25.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12103,	'2013-03-28',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12113,	'2013-03-28',	'00:00:00',	0,	'GRUNDGEBï¿½HR',	'I',	'GEBUEHR',	-5.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12123,	'2013-04-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300005 BAD HOMBURGER INKASSO GMBH KONTO 50050000 / 0014700009 GESCHÄFTSZEICHEN 1683389',	'I',	'SCHULDEN',	-150.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12133,	'2013-04-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300004 STADTKASSE KOELN KONTO 37050198 / 0093102978 ELTERNBEITRAG FRIEDA LINA MEYER MO HLENWEG 2',	'I',	'KIND',	-78.59,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12143,	'2013-04-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300002 RUNDFUNK ARD ZDF DRADIO KONTO 30050000 / 0001111111 RUNDFUNKGEBÜHREN TEILNEHMERNUMMER 1 22 418 615',	'I',	'RUNDFUNK',	-53.94,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12153,	'2013-04-02',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000428 1312 0395 GA NR00003595 BLZ37050198 028 03/13 25UHR MERKENICH EUR 50 00 0115800004800001180028013 0FA508A030C000000000000000 0000000F101303270000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12163,	'2013-04-02',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12173,	'2013-04-03',	'00:00:00',	0,	'ÜBERWEISUNG TARGOBANK TBOL AM 03 04 2013 UM 11 54 12 13/0 NETCOLOGNE KONTO 37050198/0002462950 KUNDEN NR 10412030',	'I',	'TELEFON',	-100.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12183,	'2013-04-03',	'00:00:00',	0,	'LASTSCHRIFT OTTMAR SCHNEIDER MUSIKSCHULGEB HR APRIL 13',	'I',	'KIND',	-49.60,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12193,	'2013-04-04',	'00:00:00',	0,	'POS MIT PIN F002463002463 00000 PENNY SAGT DANKE 33300582 EC 56000213 030413092735OC0',	'I',	'EINKAUF',	-18.72,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12203,	'2013-04-09',	'00:00:00',	0,	'POS MIT PIN F002838002838 00000 PENNY SAGT DANKE 33300582 EC 56000213 080413115632OC0',	'I',	'EINKAUF',	-5.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12213,	'2013-04-10',	'00:00:00',	0,	'GUTSCHRIFT BUNDESAGENTUR FUER ARBEIT - KG357357FK149064 0413480110N DE 93699 30 00043609926/ERST MARKDEF1760/CREF 48011093699 /ADRS STRASSE 104 90478 NUERNBERG DE FAMILIENKASSE REGENSBURGER Wertstellung 09 04 2013',	'I',	'GUTSCHRIFT',	184.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12223,	'2013-04-10',	'00:00:00',	0,	'POS MIT PIN F021239021239 00000 REWE SAGT DANKE 47655371 EC 65495993 090413101303OC0',	'I',	'EINKAUF',	-16.11,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12233,	'2013-04-10',	'00:00:00',	0,	'POS MIT PIN F002938002938 00000 PENNY SAGT DANKE 33300582 EC 56000213 090413111407OC0',	'I',	'EINKAUF',	-13.76,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12243,	'2013-04-12',	'00:00:00',	0,	'LASTSCHRIFT DEVK-GRUPPE 570005834479 VERTRAGSKONTO Z00006939535 DEVK-GRUPPE SAGT DANKE',	'I',	'VERSICHERUNG',	-40.21,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12253,	'2013-04-12',	'00:00:00',	0,	'POS MIT PIN F003115003115 00000 PENNY SAGT DANKE 33300582 EC 56000213 110413104429OC0',	'I',	'EINKAUF',	-11.87,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12263,	'2013-04-19',	'00:00:00',	0,	'AUSZAHLUNG GELDAUTOMAT - TARGOBANK Kï¿½LN 01189 AM 19 04 2013 UM 10 32 KARTE 12 13/0 TRANSAKTIONSNUMMER 054619',	'I',	'ABHEBUNG',	-70.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12273,	'2013-04-19',	'00:00:00',	0,	'POS MIT PIN F003606003606 00000 PENNY SAGT DANKE 33300582 EC 56000213 170413092156OC0',	'I',	'EINKAUF',	-22.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12283,	'2013-04-19',	'00:00:00',	0,	'POS MIT PIN F003720003720 00000 PENNY SAGT DANKE 33300582 EC 56000213 180413094344OC0',	'I',	'EINKAUF',	-15.59,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12293,	'2013-04-25',	'00:00:00',	0,	'POS MIT PIN F001410001410 00000 PENNY SAGT DANKE 33300582 EC 56000212 240413105546OC0',	'I',	'EINKAUF',	-12.73,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12303,	'2013-04-26',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000949 1312 0395 GA NR00003595 BLZ37050198 025 04/09 19UHR MERKENICH EUR 50 00 0120800004800001180028013 0FA508A030C000000000000000 0000000F101304240000000000 000000000000 D27600002547410100 0203006040201411026060 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12313,	'2013-04-26',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12323,	'2013-04-29',	'00:00:00',	0,	'POS MIT PIN F004391004391 00000 PENNY SAGT DANKE 33300582 EC 56000213 260413104335OC0',	'I',	'EINKAUF',	-14.92,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12333,	'2013-04-30',	'00:00:00',	0,	'LOHN / GEHALT / RENTE PERSONALAMT DER STADT KOELN LOHN/GEHALT 09202800/201304* KLINIKEN',	'I',	'GEHALTCHRIS',	604.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12343,	'2013-04-30',	'00:00:00',	0,	'LASTSCHRIFT PENNY-MARKT GMBH DC KOELN 040000005699 33300582 PENNY SAGT DANKE 260309380018520131256000213KAUFB 28 15 EUR + GEBUEHR 8 50 EUR AUS LASTSCHRIFT',	'I',	'EINKAUF',	-36.65,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12353,	'2013-04-30',	'00:00:00',	0,	'POS MIT PIN F001630001630 00000 PENNY SAGT DANKE 33300582 EC 56000212 290413102230OC0',	'I',	'EINKAUF',	-10.29,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12354,	'2014-10-03',	'00:00:00',	0,	'Kassensturz 22.11',	'',	'SONSTIGES',	-48.15,	'CHRIS',	'',	22.11,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'0000-00-00 00:00:00',	1,	'N'),
(12356,	'0000-00-00',	'00:00:00',	0,	'REWE Einkauf',	'',	'LEBEN',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	85,	'',	'',	'',	'2014-11-05 16:51:09',	1,	'N'),
(12357,	'0000-00-00',	'00:00:00',	0,	'REWE Einkauf',	'',	'LEBEN',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	85,	'',	'',	'',	'2014-11-05 16:52:09',	1,	'N'),
(12358,	'0000-00-00',	'00:00:00',	0,	'REWE Einkauf',	'',	'LEBEN',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	85,	'',	'',	'',	'2014-11-05 16:58:34',	1,	'N'),
(12525,	'2014-11-11',	'18:49:00',	0,	'Vegane WÃ¼rstchen',	'',	'LEBEN',	-2.19,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12523,	'2014-11-12',	'11:19:51',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12524,	'2014-11-12',	'08:13:22',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12522,	'2014-11-12',	'12:21:52',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12521,	'2014-11-13',	'08:20:23',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12520,	'2014-11-13',	'22:56:49',	0,	'Ã–l',	'',	'PRIVAT',	-3.09,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12519,	'2014-11-14',	'07:02:45',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-2.09,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12518,	'2014-11-15',	'12:14:55',	0,	'Kaffee U Kuchen',	'',	'FAMILIE',	-8.09,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12517,	'2014-11-16',	'13:32:59',	0,	'Essen Backwerk',	'',	'FAMILIE',	-3.84,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12516,	'2014-11-17',	'08:32:22',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12393,	'2014-10-31',	'12:36:47',	0,	'Wein',	'',	'GESCH',	-4.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12515,	'2014-11-18',	'08:02:24',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12514,	'2014-11-18',	'08:20:47',	0,	'kassensturz 20.04',	'',	'UMBUCH',	-11.93,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12394,	'2014-10-31',	'10:29:27',	0,	'Musikgeld',	'',	'UMBUCH',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12395,	'2014-10-31',	'07:57:53',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12396,	'2014-10-31',	'07:14:20',	0,	'Geburtagsgeld',	'',	'UMBUCH',	10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12397,	'2014-10-30',	'12:52:07',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12398,	'2014-10-30',	'08:08:02',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12399,	'2014-10-30',	'06:12:51',	0,	'Geld An Chris',	'',	'UMBUCH',	-10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12400,	'2014-10-29',	'08:34:27',	0,	'kassensturz 14.22',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12401,	'2014-10-29',	'08:32:51',	0,	'fundgeld',	'',	'UMBUCH',	1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12402,	'2014-10-29',	'07:59:17',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12403,	'2014-10-28',	'12:20:49',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-14.96,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12404,	'2014-10-28',	'09:23:11',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12405,	'2014-10-27',	'12:17:49',	0,	'Adapter',	'',	'FAMILIE',	-59.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12406,	'2014-10-27',	'09:13:06',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12407,	'2014-10-27',	'08:30:11',	0,	'Geburtagsgeld',	'',	'UMBUCH',	70.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12408,	'2014-10-26',	'16:22:50',	0,	'Klezmerkonzert',	'',	'SPENDE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12409,	'2014-10-26',	'11:21:47',	0,	'kirchenspende',	'',	'SPENDE',	-1.70,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12410,	'2014-10-26',	'09:12:21',	0,	'kassensturz 24.03',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12411,	'2014-10-25',	'16:51:14',	0,	'einkauf kaufland',	'',	'EINKAUF',	-54.12,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12412,	'2014-10-25',	'16:10:22',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12413,	'2014-10-25',	'15:44:12',	0,	'einkauf aldi',	'',	'EINKAUF',	-46.52,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12414,	'2014-10-25',	'14:23:10',	0,	'Abhebung',	'',	'ABHEBUNG',	100.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12415,	'2014-10-25',	'09:57:09',	0,	'Kaffee U Kuchen',	'',	'SPENDE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12416,	'2014-10-24',	'12:25:52',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-11.37,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12417,	'2014-10-24',	'08:06:25',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.67,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12418,	'2014-10-23',	'12:33:01',	0,	'Briefmarken',	'',	'POST',	-12.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12419,	'2014-10-23',	'12:32:38',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12420,	'2014-10-23',	'07:57:55',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12421,	'2014-10-22',	'12:24:23',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-3.18,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12422,	'2014-10-22',	'08:41:20',	0,	'kassensturz 6.64',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12423,	'2014-10-22',	'08:40:20',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12424,	'2014-10-21',	'08:24:59',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12425,	'2014-10-20',	'12:30:17',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-3.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12426,	'2014-10-20',	'08:29:53',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12427,	'2014-10-19',	'12:36:54',	0,	'kirchenspende',	'',	'SPENDE',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12428,	'2014-10-18',	'08:45:08',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-1.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12429,	'2014-10-17',	'19:49:13',	0,	'\"\"',	'',	'FAMILIE',	-8.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12430,	'2014-10-17',	'16:42:13',	0,	'parken',	'',	'AUTO',	-0.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12431,	'2014-10-17',	'09:25:52',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-1.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12432,	'2014-10-16',	'19:26:25',	0,	'einkauf penny',	'',	'EINKAUF',	-5.06,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12433,	'2014-10-16',	'13:06:43',	0,	'Odysseum',	'',	'FAMILIE',	-40.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12434,	'2014-10-16',	'10:28:04',	0,	'kassensturz 71.20',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12435,	'2014-10-15',	'13:04:19',	0,	'Einkauf Edeka',	'',	'EINKAUF',	-2.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12436,	'2014-10-15',	'08:56:57',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-1.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12437,	'2014-10-14',	'16:47:49',	0,	'Eis',	'',	'FAMILIE',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12438,	'2014-10-14',	'16:44:08',	0,	'Zoo Foto',	'',	'FAMILIE',	-6.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12439,	'2014-10-14',	'14:08:21',	0,	'zoo essen',	'',	'FAMILIE',	-12.28,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12440,	'2014-10-14',	'08:40:14',	0,	'einkauf penny',	'',	'EINKAUF',	-0.26,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12441,	'2014-10-13',	'18:45:43',	0,	'backwerk',	'',	'LEBENHORST',	-2.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12442,	'2014-10-13',	'16:26:28',	0,	'Kuchen',	'',	'FAMILIE',	-3.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12443,	'2014-10-13',	'10:44:35',	0,	'Geld Von Geburtstag',	'',	'UMBUCH',	1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12444,	'2014-10-13',	'10:22:42',	0,	'Abhebung',	'',	'ABHEBUNG',	100.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12445,	'2014-10-13',	'09:39:43',	0,	'kassensturz 1.13',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12446,	'2014-10-13',	'08:35:42',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-2.18,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12447,	'2014-10-11',	'14:38:57',	0,	'Frieda Auto',	'',	'KIND',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12448,	'2014-10-10',	'12:29:32',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-0.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12449,	'2014-10-10',	'08:15:47',	0,	'kassensturz 5.30',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12450,	'2014-10-10',	'07:57:17',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12451,	'2014-10-09',	'12:26:18',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-21.06,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12452,	'2014-10-09',	'08:30:09',	0,	'kassensturz 27.11',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12453,	'2014-10-09',	'08:10:34',	0,	'Hustenbonbons',	'',	'MED',	-1.74,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12454,	'2014-10-09',	'07:58:24',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12455,	'2014-10-08',	'12:24:10',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-3.25,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12456,	'2014-10-08',	'08:59:50',	0,	'Tabletten',	'',	'MED',	-5.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12457,	'2014-10-08',	'08:51:12',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12458,	'2014-10-07',	'19:50:06',	0,	'Veganes Essen',	'',	'UMBUCH',	-30.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12459,	'2014-10-07',	'17:43:07',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12460,	'2014-10-07',	'12:27:24',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-4.28,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12461,	'2014-10-07',	'08:10:19',	0,	'kassensturz 22.88',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12462,	'2014-10-07',	'08:09:24',	0,	'fundgeld',	'',	'UMBUCH',	3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12463,	'2014-10-07',	'07:48:23',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12464,	'2014-10-06',	'12:30:21',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-7.57,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12465,	'2014-10-06',	'08:23:40',	0,	'kassensturz 28.20',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12466,	'2014-10-06',	'08:07:54',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12467,	'2014-10-05',	'11:51:27',	0,	'kirchenspende',	'',	'SPENDE',	-0.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12468,	'2014-10-05',	'08:41:03',	0,	'Geld An Chris',	'',	'UMBUCH',	-30.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12469,	'2014-10-04',	'20:48:57',	0,	'kassensturz 59.15',	'',	'UMBUCH',	-14.38,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12470,	'2014-10-04',	'16:06:17',	0,	'Einkauf Alnatura',	'',	'EINKAUF',	-13.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12471,	'2014-10-04',	'15:09:43',	0,	'einkauf kaufland',	'',	'EINKAUF',	-39.64,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12472,	'2014-10-04',	'14:09:44',	0,	'einkauf aldi',	'',	'EINKAUF',	-38.86,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12473,	'2014-10-04',	'11:52:59',	0,	'geld von chris',	'',	'UMBUCH',	120.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12474,	'2014-10-03',	'13:09:45',	0,	'Fritten U Salat',	'',	'FAMILIE',	-10.60,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12475,	'2014-10-03',	'13:09:09',	0,	'schwimmen',	'',	'FAMILIE',	-8.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12476,	'2014-10-03',	'08:07:40',	0,	'Geburtagsgeld',	'',	'UMBUCH',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12477,	'2014-10-02',	'08:59:05',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12478,	'2014-10-01',	'15:17:04',	0,	'Vatergeld',	'',	'GESCH',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12479,	'2014-10-01',	'08:37:20',	0,	'kassensturz 17.53',	'',	'UMBUCH',	-1.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12480,	'2014-10-01',	'08:17:21',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 07:39:26',	1,	'N'),
(12483,	'2014-01-30',	'09:04:29',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:21',	1,	'N'),
(12482,	'2013-12-31',	'00:00:00',	0,	'',	'',	'UMBUCH',	30.57,	'HORST',	'',	34.63,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2014-11-06 07:51:05',	1,	'N'),
(12484,	'2014-01-29',	'12:24:29',	0,	'Himbeersirup',	'',	'LEBEN',	-1.35,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12485,	'2014-01-29',	'08:17:42',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12486,	'2014-01-29',	'08:16:56',	0,	'einkauf rewe brÃ¼hl',	'',	'EINKAUF',	-4.71,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12487,	'2014-01-29',	'06:58:13',	0,	'abhebung',	'',	'ABHEBUNG',	30.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12488,	'2014-01-28',	'08:04:35',	0,	'kassensturz',	'',	'UMBUCH',	-24.78,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12489,	'2014-01-21',	'12:38:56',	0,	'einkauf rewe brÃ¼hl',	'',	'EINKAUF',	-5.44,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12490,	'2014-01-21',	'08:16:55',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12491,	'2014-01-20',	'08:16:34',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12492,	'2014-01-19',	'17:30:05',	0,	'kassensturz',	'',	'UMBUCH',	-3.51,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12493,	'2014-01-19',	'17:27:41',	0,	'Geld An Chris',	'',	'UMBUCH',	-10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12494,	'2014-01-19',	'15:03:05',	0,	'bahn frieda',	'',	'KIND',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12495,	'2014-01-19',	'15:02:48',	0,	'kirchenspende',	'',	'SPENDE',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12496,	'2014-01-18',	'10:33:00',	0,	'KÃ¤sestange',	'',	'LEBENHORST',	-1.10,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12497,	'2014-01-18',	'10:32:25',	0,	'abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12498,	'2014-01-17',	'08:16:22',	0,	'einkauf rewe brÃ¼hl',	'',	'EINKAUF',	-4.07,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12499,	'2014-01-17',	'08:16:03',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12500,	'2014-01-15',	'17:32:40',	0,	'einkauf rewe brÃ¼hl',	'',	'EINKAUF',	-5.56,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12501,	'2014-01-15',	'08:23:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12502,	'2014-01-14',	'12:39:01',	0,	'einkauf rewe brÃ¼hl',	'',	'EINKAUF',	-3.43,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12503,	'2014-01-14',	'08:29:28',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12504,	'2014-01-13',	'20:58:59',	0,	'kassensturz',	'',	'UMBUCH',	-27.10,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12505,	'2014-01-13',	'09:08:18',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12506,	'2014-01-12',	'11:44:34',	0,	'kirchenspende',	'',	'SPENDE',	-1.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12507,	'2014-01-10',	'18:04:53',	0,	'Geschenk',	'',	'GESCH',	-5.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12508,	'2014-01-10',	'18:04:34',	0,	'abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12509,	'2014-01-09',	'12:35:23',	0,	'Spachtel',	'',	'HAUSHALT',	-2.39,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12510,	'2014-01-09',	'08:21:20',	0,	'kassensturz',	'',	'UMBUCH',	-2.37,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12511,	'2014-01-09',	'08:07:05',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12512,	'2014-01-08',	'09:34:45',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12513,	'2014-01-05',	'11:16:51',	0,	'kirchenspende',	'',	'SPENDE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-06 20:29:22',	1,	'N'),
(12526,	'2014-11-11',	'18:46:36',	0,	'Brot',	'',	'LEBEN',	-2.40,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12527,	'2014-11-11',	'12:48:46',	0,	'einkauf netto',	'',	'EINKAUF',	-4.26,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12528,	'2014-11-11',	'12:38:27',	0,	'Passfotos',	'',	'PRIVAT',	-11.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12529,	'2014-11-11',	'08:49:55',	0,	'Medikamente',	'',	'MED',	-5.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12530,	'2014-11-11',	'08:45:45',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12531,	'2014-11-10',	'18:30:20',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-4.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12532,	'2014-11-10',	'12:29:50',	0,	'einkauf baumarkt',	'',	'EINKAUF',	-16.68,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12533,	'2014-11-10',	'08:39:24',	0,	'kassensturz 50.92',	'',	'UMBUCH',	38.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12534,	'2014-11-10',	'08:18:54',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12535,	'2014-11-09',	'12:12:59',	0,	'kirchenspende',	'',	'SPENDE',	-2.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12536,	'2014-11-08',	'09:02:28',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-10.57,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12537,	'2014-11-07',	'08:53:48',	0,	'kassensturz 25.75',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12538,	'2014-11-07',	'08:07:51',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12539,	'2014-11-06',	'12:29:56',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-7.15,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12540,	'2014-11-06',	'08:59:57',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12541,	'2014-11-05',	'08:59:06',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12542,	'2014-11-04',	'12:34:26',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-2.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12543,	'2014-11-04',	'08:18:50',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12544,	'2014-11-03',	'14:25:09',	0,	'Fr Sauerwein',	'',	'GESCH',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12545,	'2014-11-03',	'12:26:32',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12546,	'2014-11-03',	'08:27:04',	0,	'kassensturz 42.36',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12547,	'2014-11-03',	'08:26:05',	0,	'Unbekannt',	'',	'SPENDE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12548,	'2014-11-03',	'08:02:11',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12549,	'2014-11-02',	'15:51:31',	0,	'fÃ¤hre',	'',	'FAMILIE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12550,	'2014-11-02',	'13:36:37',	0,	'Essen Backwerk',	'',	'FAMILIE',	-4.32,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12551,	'2014-11-02',	'11:37:12',	0,	'kirchenspende',	'',	'SPENDE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12552,	'2014-11-01',	'11:11:21',	0,	'Fahrkarte Kamen',	'',	'FAMILIE',	-41.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12553,	'2014-11-01',	'11:10:34',	0,	'Essen Backwerk',	'',	'FAMILIE',	-3.32,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12554,	'2014-11-01',	'10:30:13',	0,	'Geburtstagsgeld',	'',	'UMBUCH',	40.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-18 17:30:02',	1,	'N'),
(12555,	'2014-02-28',	'07:59:55',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12556,	'2014-02-28',	'06:29:50',	0,	'geld von chris',	'',	'UMBUCH',	10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12557,	'2014-02-26',	'08:10:38',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12558,	'2014-02-25',	'12:32:28',	0,	'einkauf rewe brÃ¼hl',	'',	'LEBENHORST',	-3.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12559,	'2014-02-25',	'08:20:21',	0,	'kassensturz 7,81',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12560,	'2014-02-25',	'08:00:12',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12561,	'2014-02-24',	'12:18:27',	0,	'Computer Zeitschriften',	'',	'UMBUCH',	-4.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12562,	'2014-02-24',	'12:17:00',	0,	'einkauf rewe brÃ¼hl',	'',	'LEBENHORST',	-2.68,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12563,	'2014-02-24',	'08:32:56',	0,	'kassensturz 15,44',	'',	'UMBUCH',	-25.22,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12564,	'2014-02-23',	'16:49:43',	0,	'eis',	'',	'FAMILIE',	-3.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12565,	'2014-02-23',	'16:49:16',	0,	'spende',	'',	'SPENDE',	-2.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12566,	'2014-02-22',	'18:33:00',	0,	'lose',	'',	'FAMILIE',	-7.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12567,	'2014-02-22',	'18:32:39',	0,	'Eisenbahn',	'',	'KIND',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12568,	'2014-02-21',	'08:11:57',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12569,	'2014-02-20',	'20:22:56',	0,	'geld von chris',	'',	'UMBUCH',	10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12570,	'2014-02-20',	'08:57:23',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12571,	'2014-02-19',	'12:25:38',	0,	'einkauf rewe brÃ¼hl',	'',	'LEBENHORST',	-1.74,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12572,	'2014-02-19',	'08:03:29',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12573,	'2014-02-17',	'13:08:00',	0,	'Nachthose',	'',	'KIND',	-8.79,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12574,	'2014-02-17',	'13:07:39',	0,	'abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12575,	'2014-02-17',	'09:24:32',	0,	'Paracetamol',	'',	'MED',	-2.30,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12576,	'2014-02-17',	'09:16:34',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12577,	'2014-02-16',	'11:18:57',	0,	'kirchenspende',	'',	'SPENDE',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12578,	'2014-02-16',	'11:07:26',	0,	'kassensturz 14,49',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12579,	'2014-02-15',	'15:01:20',	0,	'eiscafe',	'',	'FAMILIE',	-12.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12580,	'2014-02-15',	'11:18:51',	0,	'geld von chris',	'',	'UMBUCH',	10.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12581,	'2014-02-14',	'07:54:42',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12582,	'2014-02-13',	'12:32:56',	0,	'Mundwasser',	'',	'UMBUCH',	-3.59,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12583,	'2014-02-13',	'12:31:50',	0,	'Essen Rewe BrÃ¼hl',	'',	'LEBENHORST',	-3.69,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12584,	'2014-02-13',	'08:17:12',	0,	'kassensturz 24.52',	'',	'UMBUCH',	-11.19,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12585,	'2014-02-13',	'08:01:44',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12586,	'2014-02-09',	'12:09:23',	0,	'kassensturz',	'',	'UMBUCH',	-18.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12587,	'2014-02-09',	'12:06:22',	0,	'Essen Backwerk',	'',	'UMBUCH',	-6.51,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12588,	'2014-02-09',	'12:05:53',	0,	'abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12589,	'2014-02-09',	'12:05:37',	0,	'kirchenspende',	'',	'SPENDE',	-1.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12590,	'2014-02-09',	'09:26:13',	0,	'geld von chris',	'',	'UMBUCH',	-1.40,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12591,	'2014-02-06',	'08:40:18',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.59,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12592,	'2014-02-05',	'08:38:26',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12593,	'2014-02-04',	'07:03:38',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.57,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12594,	'2014-02-02',	'13:04:54',	0,	'kassensturz',	'',	'UMBUCH',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12595,	'2014-02-02',	'13:03:20',	0,	'auto frieda',	'',	'KIND',	-0.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12596,	'2014-02-02',	'11:30:34',	0,	'kirchenspende',	'',	'SPENDE',	-2.10,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2014-11-19 07:03:43',	1,	'N'),
(12597,	'2014-12-31',	'00:00:00',	0,	'Jahresabschluss',	'',	'UMBUCH',	-22.54,	'HORST',	'',	21.89,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'',	'2015-01-05 16:57:18',	1,	'N'),
(12797,	'2015-01-20',	'07:58:39',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12796,	'2015-01-20',	'12:17:13',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-4.53,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12795,	'2015-01-20',	'18:15:45',	0,	'Finanzbuch',	'',	'PRIVAT',	-9.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12794,	'2015-01-21',	'08:12:13',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12604,	'2014-12-31',	'00:00:00',	0,	'Jahresabschluss',	'',	'UMBUCH',	6.29,	'CHRIS',	'',	28.40,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-01-05 17:06:44',	1,	'N'),
(12841,	'2015-01-03',	'15:56:47',	0,	'BÃ¼cher',	'',	'CHRIS_PRIVAT',	-11.93,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12840,	'2015-01-04',	'17:17:23',	0,	'Lakritz',	'',	'CHRIS_PRIVAT',	-1.60,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12838,	'2015-01-05',	'21:12:22',	0,	'kassensturz 5.32',	'',	'UMBUCH',	0.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12839,	'2015-01-04',	'21:21:15',	0,	'Ksta',	'',	'CHRIS_PRIVAT',	-1.40,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12791,	'2015-01-23',	'12:31:30',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.94,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12835,	'2015-01-11',	'11:59:14',	0,	'Kaffee u Kuchen',	'',	'FAMILIE',	-3.36,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-02-15 13:31:07',	1,	'N'),
(12836,	'2015-01-06',	'11:55:37',	0,	'Broccoli',	'',	'LEBEN',	-0.79,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12837,	'2015-01-06',	'08:54:49',	0,	'BrÃ¶tchen',	'',	'LEBEN',	-2.50,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12834,	'2015-01-24',	'14:53:49',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12833,	'2015-01-24',	'15:02:08',	0,	'Kaffee U Kuchen',	'',	'FAMILIE',	-9.24,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12792,	'2015-01-23',	'08:16:28',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12656,	'2015-01-02',	'00:00:00',	10,	'Kiosk Einkauf',	'',	'EINKAUF',	4.90,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-01-06 19:24:11',	1,	'N'),
(12657,	'2015-01-02',	'00:00:00',	11,	'Kiosk Einkauf',	'',	'CHRIS_PRIVAT',	-1.40,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	1855,	'',	'',	'',	'2015-01-06 19:24:11',	1,	'N'),
(12658,	'2015-01-02',	'00:00:00',	12,	'Kiosk Einkauf',	'',	'LEBEN',	-3.50,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	1855,	'',	'',	'',	'2015-01-06 19:24:11',	1,	'N'),
(12789,	'2015-01-25',	'10:45:45',	0,	'kirchenspende',	'',	'SPENDE',	-4.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12790,	'2015-01-24',	'16:58:10',	0,	'einkauf baumarkt',	'',	'EINKAUF',	-2.08,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12788,	'2015-01-26',	'07:55:57',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12787,	'2015-01-26',	'08:18:22',	0,	'kassensturz 4.13',	'',	'UMBUCH',	0.00,	'HORST',	'',	4.13,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-02-15 13:22:15',	1,	'N'),
(12786,	'2015-01-26',	'17:50:47',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12785,	'2015-01-26',	'18:50:21',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-5.04,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12784,	'2015-01-27',	'08:08:04',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12783,	'2015-01-28',	'07:58:24',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12692,	'2015-01-10',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'HAUSHALT',	-3.30,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-01-10 15:44:30',	1,	'N'),
(12691,	'2015-01-10',	'00:00:00',	12,	'Kaufland ',	'',	'LASTSCHRIFT',	44.20,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-01-10 15:46:14',	1,	'N'),
(12690,	'2015-01-10',	'00:00:00',	11,	'Aldi Einkauf',	'',	'LEBEN',	-25.33,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-01-10 15:44:30',	1,	'N'),
(12689,	'2015-01-10',	'00:00:00',	10,	'Aldi ',	'',	'LASTSCHRIFT',	25.33,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-01-10 15:45:50',	1,	'N'),
(12693,	'2015-01-10',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'KIND',	-12.23,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-01-10 15:44:30',	1,	'N'),
(12694,	'2015-01-10',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'LEBEN',	-28.67,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-01-10 15:44:30',	1,	'N'),
(12695,	'2015-02-14',	'00:00:00',	10,	'Kaufland ',	'',	'LASTSCHRIFT',	48.65,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-02-15 08:39:23',	1,	'N'),
(12696,	'2015-02-14',	'00:00:00',	11,	'Kaufland Einkauf',	'',	'HAUSHALT',	-6.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-02-15 08:37:47',	1,	'N'),
(12697,	'2015-02-14',	'00:00:00',	12,	'Kaufland Einkauf',	'',	'KIND',	-10.24,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-02-15 08:37:47',	1,	'N'),
(12698,	'2015-02-14',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'LEBEN',	-31.92,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-02-15 08:37:47',	1,	'N'),
(12699,	'2015-02-14',	'00:00:00',	14,	'Aldi ',	'',	'LASTSCHRIFT',	39.42,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-02-15 08:39:40',	1,	'N'),
(12700,	'2015-02-14',	'00:00:00',	15,	'Aldi Einkauf',	'',	'HAUSHALT',	-3.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-02-15 08:37:47',	1,	'N'),
(12701,	'2015-02-14',	'00:00:00',	16,	'Aldi Einkauf',	'',	'LEBEN',	-36.29,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-02-15 08:37:47',	1,	'N'),
(12793,	'2015-01-21',	'08:44:47',	0,	'kassensturz 13.65',	'',	'UMBUCH',	0.00,	'HORST',	'',	13.65,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-02-15 13:20:16',	1,	'N'),
(12782,	'2015-01-28',	'12:33:51',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-5.92,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12781,	'2015-01-29',	'09:17:45',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12780,	'2015-01-29',	'12:32:54',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-16.39,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12779,	'2015-01-30',	'08:50:30',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12778,	'2015-01-30',	'12:22:25',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-4.94,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12777,	'2015-01-30',	'17:24:15',	0,	'Briefmarken',	'',	'POST',	-6.40,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12876,	'2015-02-18',	'18:37:12',	4,	'Einkauf Alnatura',	'',	'EINKAUF',	-5.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:30:34',	1,	'N'),
(12875,	'2015-02-19',	'07:27:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12873,	'2015-02-20',	'08:06:18',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12871,	'2015-02-20',	'18:17:59',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-3.73,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12872,	'2015-02-20',	'12:25:29',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-3.08,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12870,	'2015-02-24',	'09:04:00',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12868,	'2015-02-24',	'12:36:21',	0,	'Einkauf Lidl',	'',	'EINKAUF',	-2.91,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12869,	'2015-02-24',	'12:17:35',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12867,	'2015-02-25',	'08:21:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12865,	'2015-02-25',	'12:09:32',	3,	'frisÃ¶r',	'',	'SPENDE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:28:09',	1,	'N'),
(12866,	'2015-02-25',	'08:38:36',	2,	'kassensturz 35.37',	'',	'UMBUCH',	-18.21,	'HORST',	'',	35.37,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:33:24',	1,	'N'),
(12864,	'2015-02-26',	'08:09:07',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12862,	'2015-02-26',	'18:26:58',	0,	'klo',	'',	'FAMILIE',	-0.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12863,	'2015-02-26',	'12:30:34',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-9.61,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12861,	'2015-02-27',	'07:28:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12860,	'2015-02-28',	'11:49:28',	0,	'toastbrÃ¶tchen',	'',	'LEBEN',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12859,	'2015-02-28',	'12:39:46',	0,	'geld von chris',	'',	'UMBUCH',	150.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12858,	'2015-02-28',	'15:41:13',	0,	'Frieda Auto',	'',	'KIND',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12857,	'2015-02-28',	'16:32:58',	0,	'einkauf aldi',	'',	'EINKAUF',	-29.86,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12856,	'2015-02-28',	'17:20:59',	0,	'einkauf kaufland',	'',	'EINKAUF',	-57.30,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12854,	'2015-02-28',	'19:42:06',	0,	'Geld An Chris',	'',	'UMBUCH',	-60.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12798,	'2015-01-19',	'12:30:01',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-5.78,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12799,	'2015-01-19',	'08:19:32',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12800,	'2015-01-17',	'12:35:05',	0,	'Geschenk',	'',	'GESCH',	-3.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12801,	'2015-01-17',	'11:23:03',	0,	'FrÃ¼hstÃ¼ck',	'',	'LEBENHORST',	-4.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12802,	'2015-01-17',	'10:06:15',	0,	'toastbrÃ¶tchen',	'',	'LEBEN',	-0.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12803,	'2015-01-16',	'12:22:35',	0,	'Medikamente',	'',	'MED',	-5.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12804,	'2015-01-16',	'12:22:26',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12805,	'2015-01-16',	'09:47:13',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12806,	'2015-01-15',	'12:43:15',	0,	'Schieblehre',	'',	'HAUSHALT',	-6.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12807,	'2015-01-15',	'08:08:09',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12808,	'2015-01-13',	'13:02:43',	0,	'Medikamente',	'',	'MED',	-10.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12809,	'2015-01-13',	'13:02:16',	0,	'Teilchen',	'',	'LEBENHORST',	-1.60,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12810,	'2015-01-12',	'12:17:57',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-2.28,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12811,	'2015-01-12',	'08:02:09',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12812,	'2015-01-10',	'15:50:45',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-02-15 13:16:54',	1,	'N'),
(12813,	'2015-01-10',	'12:34:33',	0,	'Kaffee U Kuchen',	'',	'FAMILIE',	-8.33,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12814,	'2015-01-10',	'12:33:56',	0,	'getrÃ¤nke',	'',	'KIND',	-1.54,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12815,	'2015-01-09',	'12:39:30',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-7.76,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12816,	'2015-01-09',	'07:58:40',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12817,	'2015-01-08',	'12:41:07',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-6.65,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12818,	'2015-01-08',	'12:13:17',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12819,	'2015-01-08',	'08:28:01',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12820,	'2015-01-07',	'12:42:33',	0,	'nudeln',	'',	'LEBENHORST',	-0.69,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12821,	'2015-01-07',	'08:10:10',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12822,	'2015-01-06',	'12:23:08',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-6.07,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12823,	'2015-01-06',	'07:57:34',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12824,	'2015-01-05',	'12:27:11',	0,	'einkauf baumarkt',	'',	'EINKAUF',	-2.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12825,	'2015-01-05',	'08:07:49',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12826,	'2015-01-04',	'11:31:11',	0,	'kirchenspende',	'',	'SPENDE',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12827,	'2015-01-03',	'17:01:33',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-3.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12828,	'2015-01-03',	'12:11:30',	0,	'toastbrÃ¶tchen',	'',	'LEBEN',	-0.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:14:37',	1,	'N'),
(12829,	'2015-01-01',	'14:10:18',	0,	'kassensturz 21.89',	'',	'UMBUCH',	0.00,	'HORST',	'',	21.89,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-02-15 13:20:00',	1,	'N'),
(12874,	'2015-02-19',	'12:27:05',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.78,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12830,	'2015-02-01',	'00:00:00',	0,	'Sonstiges',	'',	'SONSTIGES',	-2.19,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'',	'2015-02-15 13:18:59',	1,	'N'),
(12831,	'2015-02-13',	'00:00:00',	0,	'Sonstiges',	'',	'SONSTIGES',	-19.93,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'',	'2015-02-15 13:21:34',	1,	'N'),
(12855,	'2015-02-28',	'17:40:40',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12832,	'2015-02-14',	'00:00:00',	0,	'Sonstiges',	'',	'SONSTIGES',	-5.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'',	'2015-02-15 13:23:22',	1,	'N'),
(12842,	'2015-01-02',	'21:15:10',	0,	'Einkauf Kiosk',	'',	'EINKAUF',	-4.90,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12843,	'2015-01-01',	'11:57:57',	0,	'Cappuccino',	'',	'CHRIS_PRIVAT',	-3.25,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-02-15 13:29:47',	1,	'N'),
(12905,	'2015-02-28',	'12:40:23',	0,	'Abhebung',	'',	'ABHEBUNG',	200.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:34:16',	1,	'N'),
(12904,	'2015-02-28',	'13:34:37',	0,	'Geld An Horst',	'',	'UMBUCH',	-150.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:34:16',	1,	'N'),
(12846,	'2015-02-15',	'00:00:00',	0,	'Eis',	'',	'FAMILIE',	-10.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'(ohne)',	'N',	0,	'',	'',	'',	'2015-02-15 13:35:41',	1,	'N'),
(12847,	'2015-02-28',	'00:00:00',	10,	'Kaufland Einkauf',	'',	'EINKAUF',	57.30,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12848,	'2015-02-28',	'00:00:00',	11,	'Kaufland Einkauf',	'',	'HAUSHALT',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12849,	'2015-02-28',	'00:00:00',	12,	'Kaufland Einkauf',	'',	'KIND',	-10.24,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12850,	'2015-02-28',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'LEBEN',	-45.56,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12851,	'2015-02-28',	'00:00:00',	14,	'Aldi Einkauf',	'',	'EINKAUF',	29.86,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12852,	'2015-02-28',	'00:00:00',	15,	'Aldi Einkauf',	'',	'KIND',	-6.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12853,	'2015-02-28',	'00:00:00',	16,	'Aldi Einkauf',	'',	'LEBEN',	-22.87,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-03-03 06:09:54',	1,	'N'),
(12877,	'2015-02-18',	'12:24:03',	3,	'Einkauf Rewe',	'',	'EINKAUF',	-8.11,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:29:55',	1,	'N'),
(12878,	'2015-02-18',	'08:17:02',	1,	'kassensturz 32.17',	'',	'UMBUCH',	2.00,	'HORST',	'',	32.17,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:32:02',	1,	'N'),
(12879,	'2015-02-18',	'08:00:32',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12880,	'2015-02-17',	'07:45:13',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12881,	'2015-02-16',	'12:30:14',	0,	'Kaffee U Kuchen',	'',	'FAMILIE',	-8.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12882,	'2015-02-15',	'12:30:28',	0,	'kirchenspende',	'',	'SPENDE',	-4.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12883,	'2015-02-14',	'21:12:39',	0,	'kassensturz 46.66',	'',	'UMBUCH',	-2.00,	'HORST',	'',	46.66,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:19:59',	1,	'N'),
(12884,	'2015-02-14',	'19:14:38',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12885,	'2015-02-13',	'18:30:19',	9,	'kassensturz 54.64',	'',	'UMBUCH',	3.50,	'HORST',	'',	54.64,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:18:54',	1,	'N'),
(12886,	'2015-02-13',	'18:28:12',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-1.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12887,	'2015-02-13',	'18:27:38',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12888,	'2015-02-13',	'12:15:27',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-8.18,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12889,	'2015-02-13',	'07:45:56',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12890,	'2015-02-12',	'07:54:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12891,	'2015-02-10',	'08:20:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12892,	'2015-02-09',	'08:04:41',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12893,	'2015-02-08',	'11:40:09',	0,	'Kaffee U Kuchen',	'',	'FAMILIE',	-11.30,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12894,	'2015-02-06',	'11:08:06',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12895,	'2015-02-05',	'07:47:23',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12896,	'2015-02-04',	'12:47:15',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12897,	'2015-02-04',	'07:58:56',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12898,	'2015-02-03',	'12:33:42',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12899,	'2015-02-03',	'09:04:46',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12900,	'2015-02-02',	'12:34:07',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12901,	'2015-02-02',	'08:59:13',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12902,	'2015-02-01',	'13:26:45',	0,	'kassensturz 6.75',	'',	'UMBUCH',	-3.50,	'HORST',	'',	6.75,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:16:27',	1,	'N'),
(12903,	'2015-02-01',	'11:27:33',	0,	'kirchenspende',	'',	'SPENDE',	-3.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:15:03',	1,	'N'),
(12906,	'2015-02-21',	'12:35:42',	0,	'Kaffee U Kuchen',	'',	'FAMILIE',	-11.03,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:34:16',	1,	'N'),
(12907,	'2015-02-15',	'14:24:28',	0,	'Eis',	'',	'FAMILIE',	-10.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-03-03 06:34:16',	1,	'N'),
(12908,	'2015-02-14',	'21:07:55',	0,	'kassensturz 26.99',	'',	'SONSTIGES',	15.56,	'CHRIS',	'',	26.99,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:36:15',	1,	'N'),
(12909,	'2015-02-06',	'19:52:13',	0,	'Essen',	'',	'FAMILIE',	-28.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-03-03 06:34:46',	1,	'N'),
(12910,	'2015-03-21',	'00:00:00',	10,	'Aldi ',	'',	'LASTSCHRIFT',	31.72,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-03-23 06:08:39',	1,	'N'),
(12911,	'2015-03-21',	'00:00:00',	11,	'Aldi Einkauf',	'',	'HAUSHALT',	-3.10,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12912,	'2015-03-21',	'00:00:00',	12,	'Aldi Einkauf',	'',	'LEBEN',	-28.62,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12913,	'2015-03-21',	'00:00:00',	13,	'Kaufland ',	'',	'LASTSCHRIFT',	30.53,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-03-23 06:09:01',	1,	'N'),
(12914,	'2015-03-21',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'HAUSHALT',	-4.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12915,	'2015-03-21',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'KIND',	-1.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12916,	'2015-03-21',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'LEBEN',	-24.09,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12917,	'2015-03-21',	'00:00:00',	17,	'Alnatura ',	'',	'LASTSCHRIFT',	18.38,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-03-23 06:09:23',	1,	'N'),
(12918,	'2015-03-21',	'00:00:00',	18,	'Alnatura Einkauf',	'',	'LEBEN',	-6.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	1852,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12919,	'2015-03-21',	'00:00:00',	19,	'Alnatura Einkauf',	'',	'PFLEGE',	-11.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	1852,	'',	'',	'',	'2015-03-23 06:07:24',	1,	'N'),
(12920,	'2015-03-28',	'00:00:00',	10,	'Penny ',	'',	'LASTSCHRIFT',	9.61,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-03-30 05:33:10',	1,	'N'),
(12921,	'2015-03-28',	'00:00:00',	11,	'Penny Einkauf',	'',	'HAUSHALT',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'',	'',	'',	'2015-03-30 05:32:08',	1,	'N'),
(12922,	'2015-03-28',	'00:00:00',	12,	'Penny Einkauf',	'',	'LEBEN',	-8.61,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'',	'',	'',	'2015-03-30 05:32:08',	1,	'N'),
(12923,	'2015-03-28',	'00:00:00',	13,	'Kaufland ',	'',	'LASTSCHRIFT',	39.77,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-03-30 05:33:31',	1,	'N'),
(12924,	'2015-03-28',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'HAUSHALT',	-12.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-30 05:32:08',	1,	'N'),
(12925,	'2015-03-28',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'LEBEN',	-24.80,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-30 05:32:08',	1,	'N'),
(12926,	'2015-03-28',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'LEBEN_HORST',	-1.98,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-03-30 05:32:08',	1,	'N'),
(12942,	'2015-04-04',	'00:00:00',	10,	'Aldi Einkauf',	'',	'EINKAUF',	23.39,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-07 05:31:58',	1,	'N'),
(12943,	'2015-04-04',	'00:00:00',	11,	'Aldi Einkauf',	'',	'HAUSHALT',	-2.40,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-04-07 05:31:58',	1,	'N'),
(12944,	'2015-04-04',	'00:00:00',	12,	'Aldi Einkauf',	'',	'LEBEN',	-20.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-04-07 05:31:58',	1,	'N'),
(12945,	'2015-04-04',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'EINKAUF',	39.63,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-07 05:31:58',	1,	'N'),
(12946,	'2015-04-04',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'KIND',	-2.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-04-07 05:31:58',	1,	'N'),
(12947,	'2015-04-04',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'LEBEN',	-37.14,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-04-07 05:31:58',	1,	'N'),
(12948,	'2015-04-11',	'00:00:00',	10,	'Kaufland ',	'',	'LASTSCHRIFT',	76.10,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:10:45',	1,	'N'),
(12949,	'2015-04-11',	'00:00:00',	11,	'Kaufland Einkauf',	'',	'HAUSHALT',	-25.22,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	5,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:11:19',	1,	'N'),
(12950,	'2015-04-11',	'00:00:00',	12,	'Kaufland Einkauf',	'',	'KIND',	-20.69,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	5,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:11:36',	1,	'N'),
(12951,	'2015-04-11',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'LEBEN',	-30.19,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	5,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:11:50',	1,	'N'),
(12952,	'2015-04-11',	'00:00:00',	14,	'Aldi ',	'',	'LASTSCHRIFT',	30.20,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:12:45',	1,	'N'),
(12953,	'2015-04-11',	'00:00:00',	15,	'Aldi Einkauf',	'',	'HAUSHALT',	-2.74,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	3,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:12:58',	1,	'N'),
(12954,	'2015-04-11',	'00:00:00',	16,	'Aldi Einkauf',	'',	'KIND',	-0.49,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	3,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:13:25',	1,	'N'),
(12955,	'2015-04-11',	'00:00:00',	17,	'Aldi Einkauf',	'',	'LEBEN',	-26.97,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	3,	'EINKAUF',	'',	'horald-Easynote',	'2015-04-28 16:13:47',	1,	'N'),
(12957,	'2015-04-24',	'00:00:00',	0,	'Kassensturz',	'',	'SONSTIGES',	0.00,	'HORST',	'',	147.59,	'0000-00-00',	0.00,	'',	0,	'(ohne)',	'N',	0,	'',	'',	'',	'2015-04-24 15:39:13',	1,	'N'),
(12958,	'2015-04-25',	'00:00:00',	10,	'Aldi Einkauf',	'',	'EINKAUF',	50.92,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12959,	'2015-04-25',	'00:00:00',	11,	'Aldi Einkauf',	'',	'KIND',	-6.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12960,	'2015-04-25',	'00:00:00',	12,	'Aldi Einkauf',	'',	'LEBEN',	-43.93,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12961,	'2015-04-25',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'EINKAUF',	65.23,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12962,	'2015-04-25',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'HAUSHALT',	-10.29,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12963,	'2015-04-25',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'KIND',	-2.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12964,	'2015-04-25',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'LEBEN',	-49.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(12965,	'2015-04-25',	'00:00:00',	17,	'Kaufland Einkauf',	'',	'PFLEGE',	-2.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-04-27 05:28:04',	1,	'N'),
(13052,	'2015-02-02',	'00:00:00',	0,	'SEPA LASTSCHRIFT KOELNER VERKEHRS-BETRIEBE AG Kundenreferenz : AB33977505 144226108 Gläubiger-ID : DE74KVB00000041511 Mandatsreferenz : 33977505-1 Mandatsdatum : 2014-07-01',	'I',	'KIND',	-60.40,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(12967,	'2015-04-01',	'00:00:00',	0,	'',	'',	'GEHALTCHRIS',	1000.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'(ohne)',	'N',	0,	'',	'',	'',	'2015-04-28 05:32:14',	1,	'N'),
(12968,	'2015-03-31',	'00:00:00',	0,	'Endbestand',	'',	'UMBUCH',	-1170.52,	'Bank_Horst',	'',	62.27,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'FIX',	'',	'horald-Easynote',	'2015-04-28 19:31:54',	1,	'N'),
(13051,	'2015-02-02',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300005 BAD HOMBURGER INKASSO GMBH KONTO HELADEFFXXX / DE62500500000014700009 GESCHAEFTSZEICHEN 1683388',	'I',	'SCHULDEN',	-150.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13050,	'2015-04-07',	'00:00:00',	0,	'LOHN  GEHALT 2015040112585301000000006000001865Verdienstabrechnung 03.15/1 MAUSER CORPORATE GMBH',	'I',	'GEHALTHORST',	2026.36,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13049,	'2015-04-07',	'00:00:00',	0,	'DAUERAUFTRAG MIETE + NEBENKOSTEN HILDEGARD HELFF',	'I',	'MIETE',	-980.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13047,	'2015-04-08',	'00:00:00',	0,	'LADEVORGANG PREPAID - KARTE VOM 06.04.2015 23.33 UHRMOBILFUNKNR01602142358CONGSTAR GMBH HB-HANDY-LADEN, TAN 826982',	'I',	'TELEFON',	-30.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13048,	'2015-04-07',	'00:00:00',	0,	'DAUERAUFTRAG GARAGENMIETE HILDEGARD HELFF',	'I',	'MIETE',	-30.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13046,	'2015-04-10',	'00:00:00',	0,	'LADEVORGANG PREPAID - KARTE VOM 08.04.2015 23.10 UHRMOBILFUNKNR016096700923CONGSTAR GMBH HB-HANDY-LADEN, TAN 184461',	'I',	'TELEFON',	-15.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13043,	'2015-04-13',	'00:00:00',	0,	'ONLINE-UEBERWEISUNG KREF+P20150413023848KUNDENNR. 10412030 RECHNUNG 02 2015DATUM 12.04.2015, 17.01 UHR1.TAN 416437 NetCologne GmbH',	'I',	'TELEFON',	-46.62,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13044,	'2015-04-13',	'00:00:00',	0,	'ONLINE-UEBERWEISUNG KREF+P201504130229025299 5321 9002 3235DATUM 12.04.2015, 16.56 UHR1.TAN 208986 Kreissparkasse Köln',	'I',	'MASTERCARD',	-100.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-04-28 19:43:06',	1,	'N'),
(13045,	'2015-04-13',	'00:00:00',	0,	'ONLINE-UEBERWEISUNG KREF+P20150413022422Geschaeftszeichen 100181167 zweite RatenDATUM 12.04.2015, 16.54 UHR1.TAN 519188 Creditreform Darmstadt Skoruppa KG',	'I',	'SCHULDEN',	-100.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13042,	'2015-04-13',	'00:00:00',	0,	'ONLINE-UEBERWEISUNG KREF+P20150413070754KUNDENNR. 10412030 RECHNUNG 03 2015DATUM 12.04.2015, 17.03 UHR1.TAN 763105 NetCologne GmbH',	'I',	'TELEFON',	-59.55,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13041,	'2015-04-13',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65443405 110415142509OC1 ALDI SUED SAGT DANKE',	'I',	'LASTSCHRIFT',	-30.20,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13039,	'2015-04-13',	'00:00:00',	0,	'GELDAUTOMAT 13.04/12.14UHR 120  B.BNP GA NR00003715 BLZ37050299 1',	'I',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13040,	'2015-04-13',	'00:00:00',	0,	'LASTSCHRIFT ELV61302497 11.04 15.41 ME1 KAUFLAND SAGT DANKE',	'I',	'EINKAUF',	-76.10,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13036,	'2015-04-20',	'00:00:00',	0,	'LASTSCHRIFT ELV61302498 18.04 15.10 ME1 KAUFLAND SAGT DANKE',	'I',	'EINKAUF',	-40.35,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13037,	'2015-04-20',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65482547 180415130257OC1 MEDIA MARKT DANKT 65482547',	'I',	'EINKAUF',	-37.98,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13038,	'2015-04-15',	'00:00:00',	0,	'DAUERAUFTRAG SPAREINLAGE HORST MEYER',	'I',	'SPAREINLAGE',	-45.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13035,	'2015-04-20',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65443605 180415140612OC1 ALDI SUED SAGT DANKE',	'I',	'LASTSCHRIFT',	-33.26,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13033,	'2015-04-24',	'00:00:00',	0,	'GELDAUTOMAT 24.04/12.18UHR 120  B.BNP GA NR00003715 BLZ37050299 1',	'I',	'ABHEBUNG',	-150.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13034,	'2015-04-22',	'00:00:00',	0,	'FOLGELASTSCHRIFT 24016491504081MREF+240164900CRED+DE89SGR0000000215024016491504081 Ihre Flinkster-lokal-Rechnung vom08.04.15ABWA+Flinkster - lokal DB Rent GmbH',	'I',	'FLINKSTER',	-241.01,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13032,	'2015-04-28',	'00:00:00',	0,	'LADEVORGANG PREPAID - KARTE  HB-HANDY-LADEN, TAN 023071',	'I',	'TELEFON',	-15.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:25:52',	1,	'N'),
(13053,	'2015-02-02',	'00:00:00',	0,	'SEPA LASTSCHRIFT Musicfactory Musikschulgebuehr Febr 15 Kundenreferenz : iMikel1-T-0278-36673562649236 Gläubiger-ID : DE37MUF00000997239 Mandatsreferenz : 101961001 Mandatsdatum : 2013-11-01',	'I',	'KIND',	-28.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13054,	'2015-02-02',	'00:00:00',	0,	'GAA-AUSZAHLUNG 028589 1712 0495 GA NR00003173 BLZ37050198 030 01/09 01UHR MERKENICH EUR 20 00 00C3800004800001180028015 0FA50BA030C000000000000000 0000000F101501280100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'GEBUEHR',	-20.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13055,	'2015-02-02',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13056,	'2015-02-03',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 302-9425255-4065103 Amazon de 1054990769059465 Kundenreferenz : 1054990769059465 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-15.94,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13057,	'2015-02-03',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5057676 PENNY SAGT DANKE 33300582 020210410576760171256000213',	'I',	'EINKAUF',	-13.15,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13058,	'2015-02-03',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 302-9425255-4065103 Amazon de 1054985668544399 Kundenreferenz : 1054985668544399 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-7.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13059,	'2015-02-04',	'00:00:00',	0,	'POS MIT PIN F681936681936 00000 DM DROGERIEMARKT SAGT DANKEEC 65053856 020215194103OC0',	'I',	'EINKAUF',	-22.50,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13060,	'2015-02-04',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5057778 PENNY SAGT DANKE 33300582 030208030577780171256000213',	'I',	'EINKAUF',	-15.87,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13061,	'2015-02-05',	'00:00:00',	0,	'POS MIT PIN F057893057893 00000 PENNY SAGT DANKE 33300582 EC 56000213 040215083758OC0',	'I',	'EINKAUF',	-19.40,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13062,	'2015-02-06',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5058006 PENNY SAGT DANKE 33300582 050208310580060171256000213',	'I',	'EINKAUF',	-19.34,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13063,	'2015-02-06',	'00:00:00',	0,	'POS MIT PIN F058008058008 00000 PENNY SAGT DANKE 33300582 EC 56000213 050215083337OC0',	'I',	'EINKAUF',	-3.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13064,	'2015-02-09',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000301 1712 0495 GA NR00003173 BLZ37050198 006 02/14 47UHR MERKENICH EUR 50 00 00C7800004800001180028015 0FA50BA030C000000000000000 0000000F101502050100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'GEBUEHR',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13065,	'2015-02-09',	'00:00:00',	0,	'POS MIT PIN F010776010776 00000 CINEDOM KOELN EC 60519070 060215185945OC0',	'I',	'UMBUCH',	-21.80,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13066,	'2015-02-09',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5058115 PENNY SAGT DANKE 33300582 060208370581150171256000213',	'I',	'EINKAUF',	-6.49,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13067,	'2015-02-09',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13068,	'2015-02-10',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000892 1712 0495 GA NR00003173 BLZ37050198 009 02/17 07UHR MERKENICH EUR 30 00 00C9800004800001180028015 0FA50BA030C000000000000000 0000000F101502060100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'GEBUEHR',	-30.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13069,	'2015-02-10',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5058391 PENNY SAGT DANKE 33300582 090208280583910171256000213',	'I',	'EINKAUF',	-23.29,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13070,	'2015-02-10',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13071,	'2015-02-12',	'00:00:00',	0,	'GUTSCHRIFT Bundesagentur fuer Arbeit - Familienkasse KG357357FK149064 0215 28017715559/3000043609926 KUNDENREFERENZ : 28017715559',	'I',	'GUTSCHRIFT',	184.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13072,	'2015-02-12',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5216049 00000000 9728000000 ALNATURA DANKT ELV94312931 11 02 09 15 ME0',	'I',	'LEBEN',	-57.71,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13073,	'2015-02-12',	'00:00:00',	0,	'LASTSCHRIFT PFAUEN APOTHEKE KOELN 110208440048846171222898000ELV65228980 11 02 08 44 ME0',	'I',	'MED',	-11.70,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13074,	'2015-02-13',	'00:00:00',	0,	'SEPA LASTSCHRIFT DEVK Vertragskonto Z00006939535BELEG 598008097231DEVK-Grupp e sagt Danke Kundenreferenz : 598008097231 Gläubiger-ID : DE30ZZZ00000000884 Mandatsreferenz : INK0029510016 Mandatsdatum : 2013-10-12',	'I',	'VERSICHERUNG',	-41.21,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13075,	'2015-02-13',	'00:00:00',	0,	'GAA-AUSZAHLUNG 001521 1712 0495 GA NR00003173 BLZ37050198 012 02/12 49UHR MERKENICH EUR 30 00 00CB800004800001180028015 0FA50BA030C000000000000000 0000000F101502110100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'GEBUEHR',	-30.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13076,	'2015-02-13',	'00:00:00',	0,	'POS MIT PIN F580874580874 00000 DM DROGERIEMARKT SAGT DANKEEC 65132070 110215093258OC0',	'I',	'EINKAUF',	-14.70,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13077,	'2015-02-13',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13078,	'2015-02-16',	'00:00:00',	0,	'SEPA LASTSCHRIFT World Vision Deutschland e V PID 001667575 RLS3766839 SIE-187277-0333 JENEBA Kundenreferenz : WORLDVISION-4115-423220000 Gläubiger-ID : DE19ZZZ00000150171 Mandatsreferenz : 0016675750020 Mandatsdatum : 2014-07-31',	'I',	'SPENDE',	-30.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13079,	'2015-02-16',	'00:00:00',	0,	'POS MIT PIN F058895058895 00000 PENNY SAGT DANKE 33300582 EC 56000213 130215150252OC0',	'I',	'EINKAUF',	-30.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13080,	'2015-02-16',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5058889 PENNY SAGT DANKE 33300582 130214260588890171256000213',	'I',	'EINKAUF',	-27.12,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13081,	'2015-02-17',	'00:00:00',	0,	'ÜBERWEISUNG TARGOBANK TBOL AM 17 02 2015 UM 11 47 12 17/0 PATRICK SELLHORN KTO DE41200400000133362400 ARTIKELNUMMER 121571331266 EBAYKAUF',	'I',	'UMBUCH',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13082,	'2015-02-19',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5059257 PENNY SAGT DANKE 33300582 180208370592570171256000213',	'I',	'EINKAUF',	-25.01,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13083,	'2015-02-20',	'00:00:00',	0,	'POS MIT PIN F059398059398 00000 PENNY SAGT DANKE 33300582 EC 56000213 190215152100OC0',	'I',	'EINKAUF',	-24.97,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13084,	'2015-02-20',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5000814 00000000 9728000000 DEUTSCHE POST AG ELV94602838 19 02 15 14 ME0',	'I',	'UMBUCH',	-13.98,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13085,	'2015-02-20',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5059347 PENNY SAGT DANKE 33300582 190208590593470171256000213',	'I',	'EINKAUF',	-6.42,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13086,	'2015-02-23',	'00:00:00',	0,	'GAA-AUSZAHLUNG 003168 1712 0495 GA NR00003173 BLZ37050198 020 02/13 12UHR MERKENICH EUR 50 00 00CE800004800001180028015 0FA50BA030C000000000000000 0000000F101502190100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'GEBUEHR',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13087,	'2015-02-23',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5217879 00000000 9728000000 ALNATURA DANKT ELV94312931 20 02 08 37 ME0',	'I',	'LEBEN',	-40.51,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13088,	'2015-02-23',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-2296575-3953108 Amazon de 0219318531199259 Kundenreferenz : 0219318531199259 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-16.90,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13089,	'2015-02-23',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-7707048-9288328 Amazon de 0658423571983911 Kundenreferenz : 0658423571983911 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-8.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13090,	'2015-02-23',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13091,	'2015-02-25',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON PAYMENTS EUROPE S C A 305-1208511-0637942 Amazon Mktplce EU-DE 151674092594 1976 Kundenreferenz : 1516740925941976 Gläubiger-ID : DE94ZZZ00000561653 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-19.49,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13092,	'2015-02-26',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON PAYMENTS EUROPE S C A 305-0114827-5065967 Amazon Mktplce EU-DE 169772547323 9114 Kundenreferenz : 1697725473239114 Gläubiger-ID : DE94ZZZ00000561653 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-26.40,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13093,	'2015-02-26',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5059841 PENNY SAGT DANKE 33300582 250208260598410171256000213',	'I',	'EINKAUF',	-18.33,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13094,	'2015-02-27',	'00:00:00',	0,	'LOHN / GEHALT / RENTE Kliniken Lohn/Gehalt 09202800/201502',	'I',	'GEHALTCHRIS',	894.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13095,	'2015-02-27',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5059933 PENNY SAGT DANKE 33300582 260208330599330171256000213',	'I',	'EINKAUF',	-24.14,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 19:54:53',	1,	'N'),
(13096,	'2015-01-31',	'00:00:00',	0,	'Endbestand',	'',	'UMBUCH',	-671.33,	'Bank_Horst',	'',	561.46,	'0000-00-00',	0.00,	'',	0,	'(ohne)',	'N',	0,	'',	'',	'',	'2015-04-28 20:00:55',	1,	'N'),
(13097,	'2015-02-26',	'00:00:00',	0,	'SONSTIGER EINZUG EC 54046210 250215132916OC1 HAAR ATELIER',	'I',	'UMBUCH',	-16.50,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13098,	'2015-02-25',	'00:00:00',	0,	'FOLGELASTSCHRIFT 24016491502111MREF+240164900CRED+DE89SGR0000000215024016491502111 Ihre Flinkster-lokal-Rechnung vom11.02.15ABWA+Flinkster - lokal DB Rent GmbH',	'I',	'FLINKSTER',	-201.14,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13099,	'2015-02-24',	'00:00:00',	0,	'GELDAUTOMAT 24.02/12.16UHR 120  B.BNP GA NR00003456 BLZ37050299 1',	'I',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13100,	'2015-02-24',	'00:00:00',	0,	'SONSTIGER EINZUG EC 53505363 230215122048OC1 THALIA-BUCHHANDLUNG',	'I',	'BUECHER',	-9.99,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13101,	'2015-02-24',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65395921 210215142255OC1 DM DROGERIEMARKT SAGT DANKE',	'I',	'EINKAUF',	-18.55,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13102,	'2015-02-23',	'00:00:00',	0,	'LASTSCHRIFT ELV61302499 21.02 15.31 ME1 KAUFLAND SAGT DANKE',	'I',	'EINKAUF',	-35.03,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13103,	'2015-02-23',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65442179 210215140901OC1 ALDI SUED SAGT DANKE',	'I',	'LASTSCHRIFT',	-13.35,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13104,	'2015-02-17',	'00:00:00',	0,	'SONSTIGER EINZUG EC 54027710 160215105428OC1 LUDWIG 130303',	'I',	'UMBUCH',	-19.99,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13105,	'2015-02-17',	'00:00:00',	0,	'LASTSCHRIFT ELV61302501 14.02 19.44 ME1 KAUFLAND SAGT DANKE',	'I',	'EINKAUF',	-48.65,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13106,	'2015-02-16',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65443405 140215185922OC1 ALDI SUED SAGT DANKE',	'I',	'LASTSCHRIFT',	-39.42,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13107,	'2015-02-16',	'00:00:00',	0,	'DAUERAUFTRAG SPAREINLAGE HORST MEYER',	'I',	'SPAREINLAGE',	-45.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13108,	'2015-02-13',	'00:00:00',	0,	'GELDAUTOMAT 13.02/17.42UHR 120  B.BNP GA NR00003456 BLZ37050299 1',	'I',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13109,	'2015-02-12',	'00:00:00',	0,	'ONLINE-UEBERWEISUNG KREF+P20150213134455Anzahlung Ferienwhg 11.07. bis 25.07.2015DATUM 11.02.2015, 23.14 UHR1.TAN 789231 Pesch, Hilde',	'I',	'UMBUCH',	-150.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13110,	'2015-02-10',	'00:00:00',	0,	'FOLGELASTSCHRIFT 003906626211MREF+0020000119222CRED+DE74ZZZ00000045294KD-Nr. K5595059/ RG-Nr. 100017989006 1u1 Internet AG',	'I',	'UMBUCH',	-3.81,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13111,	'2015-02-09',	'00:00:00',	0,	'EINZAHLUNG  ',	'I',	'UMBUCH',	125.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13112,	'2015-02-09',	'00:00:00',	0,	'LASTSCHRIFT ELV61304468 07.02 14.41 ME1 KAUFLAND SAGT DANKE',	'I',	'EINKAUF',	-26.12,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13113,	'2015-02-09',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65443515 070215135534OC1 ALDI SUED SAGT DANKE',	'I',	'LASTSCHRIFT',	-18.80,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13114,	'2015-02-09',	'00:00:00',	0,	'SONSTIGER EINZUG EC 54066864 070215165327OC1 IKEA 102 KOELN',	'I',	'UMBUCH',	-115.97,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13115,	'2015-02-08',	'00:00:00',	0,	'GELDAUTOMAT 08.02/13.52UHR 159  WORRI GA NR00003613 BLZ37050299 1',	'I',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13116,	'2015-02-06',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65022185 040215122414OC1 DM DROGERIEMARKT SAGT DANKE',	'I',	'EINKAUF',	-30.95,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13117,	'2015-02-06',	'00:00:00',	0,	'DAUERAUFTRAG MIETE + NEBENKOSTEN HILDEGARD HELFF',	'I',	'MIETE',	-980.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13118,	'2015-02-06',	'00:00:00',	0,	'DAUERAUFTRAG GARAGENMIETE HILDEGARD HELFF',	'I',	'MIETE',	-30.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13119,	'2015-02-04',	'00:00:00',	0,	'GELDAUTOMAT 04.02/12.12UHR 120  B.BNP GA NR00003456 BLZ37050299 1',	'I',	'ABHEBUNG',	-50.00,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13120,	'2015-02-04',	'00:00:00',	0,	'LOHN  GEHALT 2015020313140301000000006000001859Verdienstabrechnung 01.15/1 MAUSER CORPORATE GMBH',	'I',	'GEHALTHORST',	2026.36,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13121,	'2015-02-03',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65395922 310115173733OC1 DM DROGERIEMARKT SAGT DANKE',	'I',	'EINKAUF',	-21.20,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13122,	'2015-02-03',	'00:00:00',	0,	'ONLINE-UEBERWEISUNG KREF+P20150207140812Geschaeftszeichen 100181167 in RatenDATUM 02.02.2015, 23.00 UHR1.TAN 562274 Creditreform Darmstadt Skoruppa KG',	'I',	'SCHULDEN',	-125.19,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13123,	'2015-02-02',	'00:00:00',	0,	'LASTSCHRIFT ELV61302502 31.01 19.59 ME1 KAUFLAND SAGT DANKE',	'I',	'EINKAUF',	-59.08,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13124,	'2015-02-02',	'00:00:00',	0,	'SONSTIGER EINZUG EC 65442254 310115172507OC1 ALDI SUED SAGT DANKE',	'I',	'LASTSCHRIFT',	-57.95,	'Bank_Horst',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-04-28 20:03:17',	1,	'N'),
(13125,	'2015-05-12',	'00:00:00',	0,	'Kontoeröffnung',	'',	'EINZAHLUNG',	50.00,	'Frieda_Sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-05-12 15:55:05',	1,	'N'),
(13127,	'2015-05-30',	'00:00:00',	10,	'Aldi Einkauf',	'',	'EINKAUF',	31.24,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13128,	'2015-05-30',	'00:00:00',	11,	'Aldi Einkauf',	'',	'HAUSHALT',	-3.13,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13129,	'2015-05-30',	'00:00:00',	12,	'Aldi Einkauf',	'',	'LEBEN',	-28.11,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13130,	'2015-05-30',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'EINKAUF',	49.68,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13131,	'2015-05-30',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'LEBEN',	-4.47,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	5,	'',	'',	'horald-Easynote',	'2015-06-01 16:19:38',	1,	'N'),
(13132,	'2015-05-30',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'HAUSHALT',	-4.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13133,	'2015-05-30',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'KIND',	-8.25,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13134,	'2015-05-30',	'00:00:00',	17,	'Kaufland Einkauf',	'',	'LEBEN',	-32.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13135,	'2015-05-30',	'00:00:00',	18,	'Kaufland Einkauf',	'',	'PFLEGE',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13136,	'2015-05-30',	'00:00:00',	19,	'Penny Einkauf',	'',	'EINKAUF',	7.84,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13137,	'2015-05-30',	'00:00:00',	20,	'Penny Einkauf',	'',	'HAUSHALT',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13138,	'2015-05-30',	'00:00:00',	21,	'Penny Einkauf',	'',	'LEBEN',	-5.34,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13139,	'2015-05-30',	'00:00:00',	22,	'Penny Einkauf',	'',	'PFAND',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'',	'',	'',	'2015-06-01 16:16:34',	1,	'N'),
(13157,	'2015-06-13',	'00:00:00',	17,	'Kaufland Einkauf',	'',	'PFLEG',	-4.45,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	5,	'',	'',	'horald-Easynote',	'2015-06-22 16:19:51',	1,	'N'),
(13156,	'2015-06-13',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'LEBEN',	-26.40,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-13 17:03:15',	1,	'N'),
(13155,	'2015-06-13',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'KIND',	-3.49,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-13 17:03:15',	1,	'N'),
(13154,	'2015-06-13',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'HAUSHALT',	-8.23,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-13 17:03:15',	1,	'N'),
(13153,	'2015-06-13',	'00:00:00',	13,	'Kaufland ',	'',	'LASTSCHRIFT',	42.57,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-13 17:04:13',	1,	'N'),
(13152,	'2015-06-13',	'00:00:00',	12,	'Aldi Einkauf',	'',	'LEBEN',	-31.87,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-13 17:03:15',	1,	'N'),
(13151,	'2015-06-13',	'00:00:00',	11,	'Aldi Einkauf',	'',	'KIND',	-0.29,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-13 17:03:15',	1,	'N'),
(13150,	'2015-06-13',	'00:00:00',	10,	'Aldi ',	'',	'LASTSCHRIFT',	32.16,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-13 17:03:45',	1,	'N'),
(13158,	'2015-05-31',	'16:07:50',	0,	'Tiere Zoo',	'',	'KIND',	-3.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13159,	'2015-05-30',	'16:47:18',	0,	'einkauf penny',	'',	'EINKAUF',	-7.84,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13160,	'2015-05-30',	'16:46:32',	0,	'Frieda Uhr',	'',	'KIND',	-4.90,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13161,	'2015-05-30',	'16:45:46',	0,	'einkauf kaufland',	'',	'EINKAUF',	-49.68,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13162,	'2015-05-30',	'13:56:16',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13163,	'2015-05-30',	'13:44:28',	0,	'Einkauf Aldi',	'',	'EINKAUF',	-31.24,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13164,	'2015-05-30',	'13:10:57',	0,	'geld von chris',	'',	'UMBUCH',	150.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13165,	'2015-05-29',	'07:58:47',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13166,	'2015-05-28',	'08:22:20',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13167,	'2015-05-27',	'22:13:48',	0,	'Einkauf',	'',	'EINKAUF',	-3.53,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13168,	'2015-05-27',	'12:12:16',	0,	'pfand',	'',	'UMBUCH',	0.54,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13169,	'2015-05-27',	'08:18:44',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13170,	'2015-05-26',	'12:31:59',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.03,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13171,	'2015-05-26',	'07:47:30',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13172,	'2015-05-25',	'16:48:44',	0,	'Klo',	'',	'FAMILIE',	-0.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13173,	'2015-05-25',	'16:47:48',	0,	'Schminken',	'',	'FAMILIE',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13174,	'2015-05-25',	'16:46:48',	0,	'Waffeln',	'',	'FAMILIE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13175,	'2015-05-25',	'16:10:03',	0,	'Wette',	'',	'FAMILIE',	-4.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13176,	'2015-05-25',	'16:09:21',	0,	'Waffeln',	'',	'FAMILIE',	-4.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13177,	'2015-05-25',	'16:09:02',	0,	'eintritt',	'',	'FAMILIE',	-14.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13178,	'2015-05-25',	'13:03:29',	0,	'kassensturz 33.53',	'',	'UMBUCH',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13179,	'2015-05-24',	'12:59:29',	0,	'kirchenspende',	'',	'SPENDE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13180,	'2015-05-23',	'12:06:32',	0,	'brezel',	'',	'FAMILIE',	-3.20,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13181,	'2015-05-23',	'08:55:31',	0,	'Geldgeschenk Schwiegereltern',	'',	'UMBUCH',	30.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13182,	'2015-05-23',	'08:54:57',	0,	'Fahrgeld Von Frieda',	'',	'UMBUCH',	2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13183,	'2015-05-22',	'12:22:00',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.24,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13184,	'2015-05-22',	'12:00:10',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13185,	'2015-05-21',	'08:07:40',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13186,	'2015-05-20',	'12:12:27',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-7.42,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13187,	'2015-05-19',	'12:22:37',	0,	'baumarkt',	'',	'HAUSHALT',	-19.96,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13188,	'2015-05-19',	'12:21:45',	0,	'Fr Langen Hochzeit',	'',	'GESCH',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13189,	'2015-05-19',	'07:54:24',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13190,	'2015-05-18',	'16:23:41',	0,	'bimmelbahn',	'',	'FAMILIE',	-10.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13191,	'2015-05-18',	'16:20:20',	0,	'Gockel',	'',	'FAMILIE',	-11.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13192,	'2015-05-18',	'15:05:03',	0,	'Bahn',	'',	'FAMILIE',	-6.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13193,	'2015-05-18',	'14:23:26',	0,	'fÃ¤hre',	'',	'FAMILIE',	-7.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13194,	'2015-05-18',	'13:48:51',	0,	'Abhebung',	'',	'ABHEBUNG',	75.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13195,	'2015-05-17',	'11:34:22',	0,	'kirchenspende',	'',	'SPENDE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13196,	'2015-05-16',	'16:24:37',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13197,	'2015-05-16',	'16:24:00',	0,	'Agavendicksafz',	'',	'LEBEN',	-5.30,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13198,	'2015-05-16',	'13:03:50',	0,	'kassensturz 10.85',	'',	'UMBUCH',	-25.08,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13199,	'2015-05-16',	'12:59:21',	0,	'Cappuccino U BrÃ¶tchrn',	'',	'LEBENHORST',	-4.60,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13200,	'2015-05-12',	'16:48:12',	0,	'Einkauf DM',	'',	'EINKAUF',	-3.65,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13201,	'2015-05-10',	'14:23:18',	0,	'kirchenspende',	'',	'SPENDE',	-1.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13202,	'2015-05-10',	'14:22:34',	0,	'Geld Von Frieda',	'',	'UMBUCH',	0.30,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13203,	'2015-05-08',	'08:19:37',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13204,	'2015-05-07',	'07:49:26',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13205,	'2015-05-07',	'07:08:41',	0,	'EinkaufsmÃ¼nze',	'',	'HAUSHALT',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13206,	'2015-05-06',	'19:06:15',	0,	'Brot',	'',	'LEBEN',	-1.29,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13207,	'2015-05-06',	'12:08:09',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.58,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13208,	'2015-05-06',	'12:04:47',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13209,	'2015-05-06',	'07:05:12',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13210,	'2015-05-06',	'07:03:14',	0,	'pfand',	'',	'UMBUCH',	1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13211,	'2015-05-05',	'12:26:46',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-2.34,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13212,	'2015-05-05',	'08:01:59',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13213,	'2015-05-04',	'18:27:24',	0,	'Essen Backwerk',	'',	'LEBENHORST',	-3.53,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13214,	'2015-05-04',	'12:19:11',	0,	'Einkauf Rewe',	'',	'EINKAUF',	-1.94,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13215,	'2015-05-04',	'08:10:58',	0,	'brÃ¶tchen',	'',	'LEBENHORST',	-0.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13216,	'2015-05-03',	'12:13:45',	0,	'kirchenspende',	'',	'SPENDE',	-2.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13217,	'2015-05-03',	'10:28:41',	0,	'pfand',	'',	'UMBUCH',	0.15,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13218,	'2015-05-02',	'19:26:25',	0,	'Einkauf Aldi',	'',	'EINKAUF',	-41.36,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13219,	'2015-05-02',	'19:25:21',	0,	'einkauf kaufland',	'',	'EINKAUF',	-47.31,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13220,	'2015-05-02',	'19:23:48',	0,	'Pass Tomaten',	'',	'LEBEN',	-1.56,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13221,	'2015-05-02',	'17:22:55',	0,	'Lose',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13222,	'2015-05-02',	'08:44:43',	0,	'toastbrÃ¶tchen',	'',	'LEBEN',	-1.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13223,	'2015-05-02',	'05:38:35',	0,	'Abhebung Chris',	'',	'ABHEBUNG',	100.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13224,	'2015-05-01',	'16:29:27',	0,	'schokolade',	'',	'FAMILIE',	-1.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13225,	'2015-05-01',	'16:28:51',	0,	'Schokomuseum',	'',	'FAMILIE',	-15.50,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'CSVIMPORT',	'',	'',	'2015-06-19 05:41:04',	1,	'N'),
(13226,	'2015-05-01',	'10:36:17',	0,	'kassensturz 22.88',	'',	'UMBUCH',	19.76,	'HORST',	'',	22.88,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'CSVIMPORT',	'',	'horald-Easynote',	'2015-06-19 06:02:08',	1,	'N'),
(13227,	'0000-00-00',	'00:00:00',	10,	'Aldi ',	'',	'',	52.91,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13228,	'0000-00-00',	'00:00:00',	11,	'Aldi Einkauf',	'',	'HAUSHALT',	-1.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13229,	'0000-00-00',	'00:00:00',	12,	'Aldi Einkauf',	'',	'KIND',	-1.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13230,	'0000-00-00',	'00:00:00',	13,	'Aldi Einkauf',	'',	'LEBEN',	-49.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13231,	'0000-00-00',	'00:00:00',	14,	'Kaufland ',	'',	'',	67.32,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13232,	'0000-00-00',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'HAUSHALT',	-3.55,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13233,	'0000-00-00',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'KIND',	-3.97,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13234,	'0000-00-00',	'00:00:00',	17,	'Kaufland Einkauf',	'',	'LEBEN',	-59.80,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13235,	'0000-00-00',	'00:00:00',	18,	'REWE ',	'',	'',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13236,	'0000-00-00',	'00:00:00',	19,	'REWE Einkauf',	'',	'LEBEN',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	403,	'',	'',	'',	'2015-06-19 05:50:43',	1,	'N'),
(13237,	'2015-05-23',	'00:00:00',	10,	'Aldi ',	'',	'LASTSCHRIFT',	52.91,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-19 05:56:45',	1,	'N'),
(13238,	'2015-05-23',	'00:00:00',	11,	'Aldi Einkauf',	'',	'HAUSHALT',	-1.95,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13239,	'2015-05-23',	'00:00:00',	12,	'Aldi Einkauf',	'',	'KIND',	-1.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13240,	'2015-05-23',	'00:00:00',	13,	'Aldi Einkauf',	'',	'LEBEN',	-49.48,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13241,	'2015-05-23',	'00:00:00',	14,	'Kaufland ',	'',	'LASTSCHRIFT',	67.32,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-19 05:57:20',	1,	'N'),
(13242,	'2015-05-23',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'HAUSHALT',	-3.55,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13243,	'2015-05-23',	'00:00:00',	16,	'Kaufland Einkauf',	'',	'KIND',	-3.97,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13244,	'2015-05-23',	'00:00:00',	17,	'Kaufland Einkauf',	'',	'LEBEN',	-59.80,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13245,	'2015-05-23',	'00:00:00',	18,	'REWE ',	'',	'LASTSCHRIFT',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-19 05:57:58',	1,	'N'),
(13246,	'2015-05-23',	'00:00:00',	19,	'REWE Einkauf',	'',	'LEBEN',	0.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	403,	'',	'',	'',	'2015-06-19 05:52:23',	1,	'N'),
(13247,	'2015-05-04',	'00:00:00',	0,	'AUSZAHLUNG GELDAUTOMAT - TARGOBANK KöLN 00508 AM 02 05 2015 UM 17 37 KARTE 12 17/0 TRANSAKTIONSNUMMER 095453 Wertstellung 02 05 2015',	'I',	'ABHEBUNG',	-100.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13248,	'2015-05-04',	'00:00:00',	0,	'AUSFÜHRUNG DAUERAUFTRAG AUFTRAGSNUMMER 0300005 BAD HOMBURGER INKASSO GMBH KONTO HELADEFFXXX / DE62500500000014700009 GESCHAEFTSZEICHEN 1683388',	'I',	'SCHULDEN',	-150.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13249,	'2015-05-04',	'00:00:00',	0,	'POS MIT PIN F177595177595 00000 SCHUHHAUS WERNER EC 69527495 300415151814OC0',	'I',	'KIND',	-112.80,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-20 14:50:58',	1,	'N'),
(13250,	'2015-05-04',	'00:00:00',	0,	'SEPA LASTSCHRIFT KOELNER VERKEHRS-BETRIEBE AG Kundenreferenz : AB33977505 145062255 Gläubiger-ID : DE74KVB00000041511 Mandatsreferenz : 33977505-1 Mandatsdatum : 2014-07-01',	'I',	'KIND',	-60.40,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13251,	'2015-05-04',	'00:00:00',	0,	'GAA-AUSZAHLUNG 000001 1712 0395 GA NR80870011 BLZ37160087 001 05/07 10UHR MERHEIM EUR 50 00 00E2800004800001180028015 0FA50BA030C000000000000000 0000000F101504300100000000 000000000000 A00000005945430100 020300604020143S4YRMVF 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-20 14:53:17',	1,	'N'),
(13252,	'2015-05-04',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5231784 00000000 9728000000 ALNATURA DANKT ELV94312931 30 04 16 24 ME0',	'I',	'LEBEN',	-26.68,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13253,	'2015-05-04',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5162230 REWE SAGT DANKE 43400019 300416421622300171256002132',	'I',	'EINKAUF',	-11.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13254,	'2015-05-04',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-0793870-2946711 Amazon de 0532414320275391 Kundenreferenz : 0532414320275391 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-5.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13255,	'2015-05-04',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-3.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13256,	'2015-05-05',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5065647 PENNY SAGT DANKE 33300582 040508260656470171256000213',	'I',	'EINKAUF',	-42.10,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13257,	'2015-05-05',	'00:00:00',	0,	'SEPA LASTSCHRIFT Musicfactory Musikschulgebuehr Mai 15 Kundenreferenz : iMikel1-T-1669-08973571756273 Gläubiger-ID : DE37MUF00000997239 Mandatsreferenz : 101961001 Mandatsdatum : 2013-11-01',	'I',	'KIND',	-28.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13258,	'2015-05-05',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-4681315-0277958 Amazon de 0654373995387285 Kundenreferenz : 0654373995387285 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-5.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13259,	'2015-05-06',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5065862 PENNY SAGT DANKE 33300582 050519580658620171256000213',	'I',	'EINKAUF',	-3.15,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13260,	'2015-05-07',	'00:00:00',	0,	'GAA-AUSZAHLUNG 009083 1712 0495 GA NR00003173 BLZ37050198 006 05/15 35UHR MERKENICH EUR 50 00 00E4800004800001180028015 0FA50BA030C000000000000000 0000000F101505020100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-20 14:53:32',	1,	'N'),
(13261,	'2015-05-07',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13262,	'2015-05-08',	'00:00:00',	0,	'POS MIT PIN F033765033765 00000 REWE SAGT DANKE 43655091 EC 56020629 070515210533OC0',	'I',	'EINKAUF',	-18.85,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13263,	'2015-05-08',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON SERVICES EUROPE S A R L 305-8869681-0668323 Amazon Services Europe SARL 071662 7375464171 Kundenreferenz : 0716627375464171 Gläubiger-ID : DE51ZZZ00000561651 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014',	'I',	'EINKAUF',	-3.90,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13264,	'2015-05-11',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON PAYMENTS EUROPE S C A 305-2739112-1086726 Amazon Mktplce EU-DE 107821809171 0512 Kundenreferenz : 1078218091710512 Gläubiger-ID : DE94ZZZ00000561653 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-39.90,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13265,	'2015-05-11',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-1640899-9629917 Amazon de 2397938156484101 Kundenreferenz : 2397938156484101 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-12.99,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13266,	'2015-05-12',	'00:00:00',	0,	'GUTSCHRIFT Bundesagentur fuer Arbeit - Familienkasse KG357357FK149064 0515 30018177797/3000043609926 KUNDENREFERENZ : 30018177797',	'I',	'GUTSCHRIFT',	184.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13267,	'2015-05-12',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5066384 PENNY SAGT DANKE 33300582 110508240663840171256000213',	'I',	'EINKAUF',	-13.22,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13268,	'2015-05-12',	'00:00:00',	0,	'POS MIT PIN F336392336392 00000 DM DROGERIEMARKT SAGT DANKEEC 65395922 090515183932OC0',	'I',	'EINKAUF',	-10.45,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13269,	'2015-05-13',	'00:00:00',	0,	'GAA-AUSZAHLUNG 010308 1712 0495 GA NR00003173 BLZ37050198 012 05/08 06UHR MERKENICH EUR 50 00 00E7800004800001180028015 0FA50BA030C000000000000000 0000000F101505090100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-20 14:53:47',	1,	'N'),
(13270,	'2015-05-13',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13271,	'2015-05-15',	'00:00:00',	0,	'AUSZAHLUNG GELDAUTOMAT - TARGOBANK KÖLN 01189 AM 15 05 2015 UM 13 37 KARTE 12 17/0 TRANSAKTIONSNUMMER 055131',	'I',	'ABHEBUNG',	-50.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13272,	'2015-05-15',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5072442 00000000 9728000000 ALNATURA DANKT ELV94312932 13 05 08 55 ME0',	'I',	'LEBEN',	-58.28,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13273,	'2015-05-15',	'00:00:00',	0,	'SEPA LASTSCHRIFT DEVK Vertragskonto Z00006939535BELEG 626008416608DEVK-Grupp e sagt Danke Kundenreferenz : 626008416608 Gläubiger-ID : DE30ZZZ00000000884 Mandatsreferenz : INK0029510016 Mandatsdatum : 2013-10-12',	'I',	'VERSICHERUNG',	-41.21,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13274,	'2015-05-15',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5045164 00000000 9728000000 060 MAYERSCHEBUCH ELV94338831 13 05 09 29 ME0',	'I',	'PRIVAT',	-35.42,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13275,	'2015-05-15',	'00:00:00',	0,	'SEPA LASTSCHRIFT World Vision Deutschland e V PID 001667575 RLS4119967 SIE-187277-0333 JENEBA Kundenreferenz : WORLDVISION-4205-422510000 Gläubiger-ID : DE19ZZZ00000150171 Mandatsreferenz : 0016675750020 Mandatsdatum : 2014-07-31',	'I',	'SPENDE',	-30.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13276,	'2015-05-18',	'00:00:00',	0,	'SEPA LASTSCHRIFT Heike Graf e K ALLES-VEGETARISCH DE - B-569562 KD- 179357 - Vielen Da nk Gläubiger-ID : DE57AV000000204583 Mandatsreferenz : KD-179357 Mandatsdatum : 2015-05-07',	'I',	'LEBEN',	-53.49,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-20 14:51:20',	1,	'N'),
(13277,	'2015-05-18',	'00:00:00',	0,	'GAA-AUSZAHLUNG 011570 1712 0495 GA NR00003173 BLZ37050198 018 05/05 55UHR MERKENICH EUR 30 00 00E9800004800001180028015 0FA50BA030C000000000000000 0000000F101505150100000000 000000000000 A00000005945430100 0203006040201400000000 0002',	'I',	'ABHEBUNG',	-30.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'HORST',	'N',	0,	'',	'',	'horald-Easynote',	'2015-06-20 14:54:06',	1,	'N'),
(13278,	'2015-05-18',	'00:00:00',	0,	'GEBÜHR FÜR GAA-AUSZAHLUNG',	'I',	'GEBUEHR',	-4.95,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13279,	'2015-05-19',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-5157884-1080315 Amazon de 1208795675995153 Kundenreferenz : 1208795675995153 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-31.17,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13280,	'2015-05-19',	'00:00:00',	0,	'RÜCKGABE SEPA LASTSCHRIFT MANGELS DECKUNG AMAZON EU S A R L 305-5157884-1080315 Amazon de 1208795675995153 Kundenreferenz : 1208795675995153 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	31.17,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13281,	'2015-05-21',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5067277 PENNY SAGT DANKE 33300582 200511040672770171256000213',	'I',	'EINKAUF',	-19.48,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13282,	'2015-05-21',	'00:00:00',	0,	'RüCKGABE POS MIT UNTERSCHR MANGELS DECKUNG PENNY SAGT DANKE 33300582 200511040672770171256000213',	'I',	'EINKAUF',	19.48,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13283,	'2015-05-22',	'00:00:00',	0,	'POS MIT UNTERSCHRIFT 5067370 PENNY SAGT DANKE 33300582 210508560673700171256000213',	'I',	'EINKAUF',	-6.72,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13284,	'2015-05-22',	'00:00:00',	0,	'RüCKGABE POS MIT UNTERSCHR MANGELS DECKUNG PENNY SAGT DANKE 33300582 210508560673700171256000213',	'I',	'EINKAUF',	6.72,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13285,	'2015-05-25',	'00:00:00',	0,	'SEPA LASTSCHRIFT AMAZON EU S A R L 305-7675308-3672328 Amazon de 1946518341972464 Kundenreferenz : 1946518341972464 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	-29.98,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13286,	'2015-05-25',	'00:00:00',	0,	'RÜCKGABE SEPA LASTSCHRIFT MANGELS DECKUNG AMAZON EU S A R L 305-7675308-3672328 Amazon de 1946518341972464 Kundenreferenz : 1946518341972464 Gläubiger-ID : DE24ZZZ00000561652 Mandatsreferenz : kCB?plCILNO(vCD)WToJCNIo?hB5?M Mandatsdatum : 2014-06-13',	'I',	'EINKAUF',	29.98,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13287,	'2015-05-29',	'00:00:00',	0,	'LOHN / GEHALT / RENTE Kliniken Lohn/Gehalt 09202800/201505',	'I',	'GEHALTCHRIS',	942.00,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13288,	'2015-05-29',	'00:00:00',	0,	'LASTSCHRIFT PENNY-MARKT GMBH DC KOELN 060000322625 33300582 PENNY SAGT DANKE 200511040672770171256000213KAUFB 19 48 EUR + GEBUEHR 8 50 EUR AUS LASTSCHRIFT',	'I',	'EINKAUF',	-27.98,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13289,	'2015-05-29',	'00:00:00',	0,	'LASTSCHRIFT PENNY-MARKT GMBH DC KOELN 060000322626 33300582 PENNY SAGT DANKE 210508560673700171256000213KAUFB 6 72 EUR + GEBUEHR 8 50 EUR AUS LASTSCHRIFT',	'I',	'EINKAUF',	-15.22,	'Bank_Chris',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-20 14:46:13',	1,	'N'),
(13290,	'2015-06-21',	'00:00:00',	0,	'Pfeile werfen',	'',	'KIND',	-3.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'(ohne)',	'N',	0,	'',	'',	'',	'2015-06-22 06:57:00',	1,	'N'),
(13291,	'2015-06-21',	'00:00:00',	0,	'Kinderkarussell',	'',	'KIND',	-5.00,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'(ohne)',	'N',	0,	'',	'',	'',	'2015-06-22 06:57:24',	1,	'N'),
(13314,	'2015-06-15',	'00:00:00',	1,	'Penny Einkauf',	'',	'HAUSHALT',	-5.99,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-24 05:49:34',	1,	'N'),
(13313,	'2015-06-18',	'00:00:00',	1,	'Penny Einkauf',	'',	'LEBEN',	-1.29,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-24 05:42:20',	1,	'N'),
(13312,	'2015-06-17',	'00:00:00',	1,	'Penny Einkauf',	'',	'LEBEN',	-4.06,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-24 05:26:00',	1,	'N'),
(13309,	'2015-06-19',	'00:00:00',	1,	'Penny Lastschrift',	'',	'LASTSCHRIFT',	7.41,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-23 19:05:28',	1,	'N'),
(13310,	'2015-06-19',	'00:00:00',	2,	'Penny Einkauf',	'',	'LEBEN',	-10.66,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-23 19:05:28',	1,	'N'),
(13311,	'2015-06-19',	'00:00:00',	3,	'Penny Einkauf',	'',	'PFAND',	3.25,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-23 19:05:28',	1,	'N'),
(13300,	'2015-06-20',	'00:00:00',	10,	'Aldi Lastschrift',	'',	'LASTSCHRIFT',	25.53,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-22 16:10:56',	1,	'N'),
(13301,	'2015-06-20',	'00:00:00',	11,	'Aldi Einkauf',	'',	'LEBEN',	-25.53,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-06-22 16:10:56',	1,	'N'),
(13302,	'2015-06-20',	'00:00:00',	12,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	77.55,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-06-22 16:10:56',	1,	'N'),
(13303,	'2015-06-20',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'GESCH',	-2.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-22 16:10:56',	1,	'N'),
(13304,	'2015-06-20',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'KIND',	-10.75,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-22 16:10:56',	1,	'N'),
(13305,	'2015-06-20',	'00:00:00',	15,	'Kaufland Einkauf',	'',	'LEBEN',	-63.81,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-06-22 16:10:56',	1,	'N'),
(13315,	'2015-06-15',	'00:00:00',	2,	'Penny Einkauf',	'',	'LEBEN',	-1.19,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-24 05:49:34',	1,	'N'),
(13316,	'2015-06-15',	'00:00:00',	3,	'Penny Einkauf',	'',	'PFAND',	4.75,	'CHRIS',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	7,	'BUCHEN',	'',	'',	'2015-06-24 05:49:34',	1,	'N'),
(13317,	'2015-08-08',	'00:00:00',	10,	'Kaufland Einkauf',	'',	'EINKAUF',	50.24,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13318,	'2015-08-08',	'00:00:00',	11,	'Kaufland Einkauf',	'',	'HAUSHALT',	-21.45,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13319,	'2015-08-08',	'00:00:00',	12,	'Kaufland Einkauf',	'',	'KIND',	-1.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13320,	'2015-08-08',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'LEBEN',	-32.15,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13321,	'2015-08-08',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'PFAND',	5.35,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13322,	'2015-08-08',	'00:00:00',	15,	'Aldi Einkauf',	'',	'EINKAUF',	51.26,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13323,	'2015-08-08',	'00:00:00',	16,	'Aldi Einkauf',	'',	'HAUSHALT',	-9.82,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13324,	'2015-08-08',	'00:00:00',	17,	'Aldi Einkauf',	'',	'LEBEN',	-41.44,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13325,	'2015-08-08',	'00:00:00',	18,	'Alnatura Einkauf',	'',	'EINKAUF',	16.81,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13326,	'2015-08-08',	'00:00:00',	19,	'Alnatura Einkauf',	'',	'LEBEN',	-16.81,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	1852,	'',	'',	'',	'2015-08-08 23:07:29',	1,	'N'),
(13330,	'2015-05-12',	'00:00:00',	0,	'ErÃ¶ffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-26 18:59:55',	1,	'N'),
(13342,	'2015-05-12',	'00:00:00',	0,	'ErÃ¶ffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-26 19:04:24',	1,	'N'),
(13409,	'2015-05-12',	'15:15:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-28 05:42:13',	1,	'N'),
(13354,	'2015-05-12',	'00:00:00',	0,	'ErÃ¶ffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-27 06:08:32',	1,	'N'),
(13393,	'2015-05-12',	'00:00:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-28 05:38:59',	1,	'N'),
(13366,	'2015-05-12',	'00:00:00',	0,	'ErÃ¶ffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-27 06:09:08',	1,	'N'),
(13377,	'2015-05-12',	'00:00:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-08-28 05:27:09',	1,	'N'),
(13635,	'2015-05-12',	'15:15:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:38:27',	1,	'N'),
(13467,	'2015-10-10',	'00:00:00',	10,	'Kaufland Lastschrift',	'',	'LASTSCHRIFT',	59.44,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13468,	'2015-10-10',	'00:00:00',	11,	'Kaufland Einkauf',	'',	'FAMILIE',	-2.00,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13469,	'2015-10-10',	'00:00:00',	12,	'Kaufland Einkauf',	'',	'HAUSHALT',	-17.87,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13470,	'2015-10-10',	'00:00:00',	13,	'Kaufland Einkauf',	'',	'KIND',	-3.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13471,	'2015-10-10',	'00:00:00',	14,	'Kaufland Einkauf',	'',	'LEBEN',	-35.58,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	5,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13472,	'2015-10-10',	'00:00:00',	15,	'Aldi Lastschrift',	'',	'LASTSCHRIFT',	42.88,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13473,	'2015-10-10',	'00:00:00',	16,	'Aldi Einkauf',	'',	'HAUSHALT',	-5.99,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13474,	'2015-10-10',	'00:00:00',	17,	'Aldi Einkauf',	'',	'LEBEN',	-36.89,	'HORST',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	3,	'',	'',	'',	'2015-10-20 05:12:27',	1,	'N'),
(13478,	'2015-05-12',	'15:15:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-16 21:17:13',	1,	'N'),
(14225,	'2015-10-19',	'12:30:00',	0,	'REWE Lebensmittel ',	'',	'EINKAUF',	-7.88,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14226,	'2015-10-19',	'18:27:00',	0,	'Backwerk essen',	'',	'LEBEN_HORST',	-3.63,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14227,	'2015-09-23',	'12:29:00',	0,	'REWE Lebensmittel ',	'',	'EINKAUF',	-6.29,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14228,	'2015-09-24',	'07:55:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	3.75,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14229,	'2015-09-24',	'12:15:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14230,	'2015-09-24',	'18:30:00',	0,	'vegane steaks',	'',	'LEBEN',	-7.98,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14235,	'2015-10-08',	'17:52:00',	0,	'test',	'',	'SONSTIGES',	11.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'horald-Easynote',	'2015-11-17 11:38:50',	1,	'J'),
(14232,	'2015-09-09',	'08:30:00',	0,	'alnatura',	'',	'LEBEN',	-11.19,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:44:40',	1,	'N'),
(14233,	'2015-09-13',	'12:42:00',	0,	'spende',	'',	'SPENDE',	-1.10,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:45:47',	1,	'N'),
(14234,	'2015-09-09',	'08:12:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:46:57',	1,	'N'),
(14218,	'2015-10-16',	'18:00:00',	0,	'parken',	'',	'FAMILIE',	-2.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14215,	'2015-10-14',	'14:52:00',	0,	'zeitung',	'',	'SPENDE',	-2.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14211,	'2015-10-13',	'08:40:00',	0,	'Penny Einkauf ',	'',	'EINKAUF',	-5.59,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14202,	'2015-10-08',	'08:03:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14203,	'2015-10-07',	'12:26:00',	0,	'REWE Lebensmittel ',	'',	'LEBEN_HORST',	-3.08,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14204,	'2015-10-08',	'12:20:00',	0,	'REWE Lebensmittel ',	'',	'LEBEN_HORST',	-2.90,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14205,	'2015-10-09',	'08:03:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14189,	'2015-09-30',	'12:25:00',	0,	'REWE Einkauf ',	'',	'EINKAUF',	-7.72,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14184,	'2015-09-30',	'08:27:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-1.20,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14185,	'2015-09-29',	'12:34:00',	0,	'REWE Lebensmittel ',	'',	'EINKAUF',	-14.87,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14177,	'2015-09-25',	'13:00:00',	0,	'buch',	'',	'GESCHENK',	-6.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14171,	'2015-09-23',	'08:00:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14168,	'2015-09-20',	'17:30:00',	0,	'geld von papa',	'',	'BARGUTSCHRIFT',	20.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14163,	'2015-09-21',	'18:48:00',	0,	'getränk',	'',	'LEBEN_HORST',	-1.49,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14160,	'2015-09-20',	'12:49:00',	0,	'spende ',	'',	'SPENDE',	-2.40,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14157,	'2015-09-16',	'12:28:00',	0,	'Einkauf baumarkt',	'',	'EINKAUF',	-14.72,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14153,	'2015-09-15',	'14:00:00',	0,	'Genesungswünsche',	'',	'GESCHENK',	-0.50,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14145,	'2015-09-10',	'08:21:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14146,	'2015-09-11',	'08:04:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	18.15,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14147,	'2015-09-10',	'12:29:00',	0,	'Einkauf rewe',	'',	'LEBEN_HORST',	-2.84,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14148,	'2015-09-13',	'12:43:00',	0,	'zooessen',	'',	'FAMILIE',	-17.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14149,	'2015-09-14',	'08:17:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14150,	'2015-09-15',	'08:17:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	38.35,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14127,	'2015-08-31',	'12:29:00',	0,	'Einkauf rewe',	'',	'LEBEN_HORST',	-5.87,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14126,	'2015-09-01',	'08:26:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14118,	'2015-08-29',	'18:54:00',	0,	'einkauf aldo',	'',	'EINKAUF',	-17.69,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14119,	'2015-08-29',	'19:00:00',	0,	'losgewinn',	'',	'LOSGEWINN',	5.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14120,	'2015-08-29',	'19:01:00',	0,	'lose',	'',	'FAMILIE',	-2.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14121,	'2015-08-29',	'19:02:00',	0,	'einkauf kaufland',	'',	'EINKAUF',	-16.87,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14122,	'2015-08-29',	'19:03:00',	0,	'einkauf rewe',	'',	'EINKAUF',	-4.42,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14123,	'2015-08-29',	'19:04:00',	0,	'geld an chris',	'',	'BARLASTSCHRIFT',	-20.00,	'horst_bargeld',	'',	16.03,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14124,	'2015-08-31',	'08:10:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	14.03,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14125,	'2015-08-30',	'08:10:00',	0,	'kirchenspende',	'',	'SPENDE',	-1.20,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(13968,	'2015-08-29',	'18:53:00',	0,	'geld von Horst ',	'',	'BARGUTSCHRIFT',	20.00,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13960,	'2015-08-27',	'10:26:00',	0,	'Einkauf penny',	'',	'LEBEN',	-1.38,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13965,	'2015-08-28',	'10:35:00',	0,	'Einkauf penny',	'',	'LEBEN',	-4.88,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13964,	'2015-08-28',	'08:14:00',	0,	'Einkauf penny',	'',	'EINKAUF',	-1.05,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14217,	'2015-10-16',	'16:01:00',	0,	'Kaffee ',	'',	'FAMILIE',	-2.20,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14214,	'2015-10-14',	'13:09:00',	0,	'geld von chris',	'',	'BARGUTSCHRIFT',	20.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14209,	'2015-10-14',	'11:14:00',	0,	'Kassensturz 2.31',	'',	'SONSTIGES',	0.00,	'horst_bargeld',	'',	2.31,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14210,	'2015-10-12',	'17:44:00',	0,	'Penny Einkauf ',	'',	'EINKAUF',	0.39,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14198,	'2015-10-06',	'08:44:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14199,	'2015-10-06',	'18:39:00',	0,	'einkauf dm',	'',	'EINKAUF',	-3.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14200,	'2015-10-06',	'12:25:00',	0,	'REWE Einkauf ',	'',	'EINKAUF',	-9.16,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14201,	'2015-10-07',	'08:29:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	35.90,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14188,	'2015-09-30',	'18:30:00',	0,	'REWE Lebensmittel ',	'',	'LEBEN_HORST',	-4.98,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14181,	'2015-09-28',	'08:24:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14182,	'2015-09-29',	'07:12:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14183,	'2015-09-29',	'07:59:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	0.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14176,	'2015-09-27',	'11:14:00',	0,	'frühstück',	'',	'FAMILIE',	-6.18,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14173,	'2015-09-27',	'10:59:00',	0,	'spende',	'',	'SPENDE',	-1.40,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14170,	'2015-09-22',	'12:17:00',	0,	'REWE Lebensmittel ',	'',	'LEBEN_HORST',	-4.08,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14165,	'2015-09-09',	'08:27:00',	0,	'rewe',	'',	'LEBEN',	-6.03,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14162,	'2015-09-21',	'08:21:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	21.64,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14159,	'2015-09-18',	'12:18:00',	0,	'Einkauf baumarkt',	'',	'EINKAUF',	-7.12,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14156,	'2015-09-18',	'09:00:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14152,	'2015-09-12',	'08:41:00',	0,	'pfand wagen',	'',	'PFAND',	-1.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14140,	'2015-09-13',	'12:41:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14141,	'2015-09-21',	'18:38:00',	0,	'essen backwerk',	'',	'LEBEN_HORST',	-3.63,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14142,	'2015-09-09',	'08:29:00',	0,	'ct',	'',	'HAUSHALT',	-4.50,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14143,	'2015-09-09',	'08:32:00',	0,	'laugenstange',	'',	'LEBEN_HORST',	-0.55,	'horst_bargeld',	'',	27.27,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14144,	'2015-09-09',	'12:25:00',	0,	'REWE Lebensmittel ',	'',	'EINKAUF',	-4.68,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14117,	'2015-08-29',	'15:29:00',	0,	'geld von chris',	'',	'ABHEBUNG',	70.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14109,	'2015-08-25',	'12:18:00',	0,	'REWE Lebensmittel ',	'',	'LEBEN_HORST',	-2.04,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14110,	'2015-08-26',	'08:11:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	7.14,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14111,	'2015-08-26',	'12:29:00',	0,	'sirup',	'',	'LEBEN_HORST',	-1.35,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14112,	'2015-08-26',	'12:30:00',	0,	'leergut',	'',	'PFANDGUTSCHRIFT',	1.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14113,	'2015-08-26',	'18:04:00',	0,	'backwerk pizza',	'',	'LEBEN_HORST',	-1.99,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14114,	'2015-08-27',	'08:00:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14115,	'2015-08-27',	'10:14:00',	0,	'Brot',	'',	'LEBEN',	-1.19,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14116,	'2015-08-28',	'08:08:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	2.01,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(13792,	'2015-05-12',	'15:15:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:38:54',	1,	'N'),
(13977,	'2015-08-30',	'10:30:00',	0,	'kirchenspende',	'',	'SPENDE',	-3.10,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13966,	'2015-08-29',	'14:45:00',	0,	'Eis',	'',	'KIND',	-2.60,	'chris_bargeld',	'',	5.33,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13961,	'2015-08-27',	'15:00:00',	0,	'kratzeis',	'',	'KIND',	-1.00,	'chris_bargeld',	'',	13.86,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13958,	'2015-08-27',	'07:00:00',	0,	'Kassensturz 16,24',	'',	'ANFANGSBESTAND',	16.24,	'chris_bargeld',	'',	16.24,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14216,	'2015-10-14',	'13:15:00',	0,	'penny einkauf',	'',	'EINKAUF',	-3.17,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14213,	'2015-10-13',	'16:21:00',	0,	'Drache',	'',	'KIND',	-1.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14208,	'2015-10-10',	'16:00:00',	0,	'lose',	'',	'FAMILIE',	-4.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14194,	'2015-10-04',	'11:00:00',	0,	'kirchenspende',	'',	'SPENDE',	-2.10,	'horst_bargeld',	'',	4.89,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14195,	'2015-10-05',	'07:47:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14196,	'2015-10-05',	'18:51:00',	0,	'backwerk',	'',	'LEBEN_HORST',	-3.63,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14197,	'2015-10-06',	'07:10:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14179,	'2015-09-27',	'15:58:00',	0,	'fähre',	'',	'FAMILIE',	-7.50,	'horst_bargeld',	'',	0.06,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14180,	'2015-09-28',	'08:15:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14175,	'2015-09-26',	'16:00:00',	0,	'lose',	'',	'FAMILIE',	-4.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14172,	'2015-09-25',	'08:10:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14167,	'2015-09-19',	'15:00:00',	0,	'einkaufswagen',	'',	'LEBEN',	-1.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14164,	'2015-09-08',	'08:11:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14161,	'2015-09-20',	'12:50:00',	0,	'lotto',	'',	'FAMILIE',	-2.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14155,	'2015-09-16',	'08:59:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14151,	'2015-09-11',	'12:31:00',	0,	'REWE Lebensmittel ',	'',	'EINKAUF',	-5.76,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14133,	'2015-09-03',	'12:19:00',	0,	'Einkauf rewe',	'',	'LEBEN_HORST',	-3.44,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14134,	'2015-09-04',	'08:30:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14135,	'2015-09-04',	'18:00:00',	0,	'Sonnenblume',	'',	'SONSTIGES',	-1.95,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14136,	'2015-09-07',	'08:00:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14137,	'2015-09-06',	'10:30:00',	0,	'spende',	'',	'SPENDE',	-0.70,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14138,	'2015-09-05',	'17:34:00',	0,	'lose',	'',	'FAMILIE',	-2.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14108,	'2015-08-25',	'07:58:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14107,	'2015-08-24',	'22:41:00',	0,	'Kassensturz 10,78',	'',	'SONSTIGES',	-87.67,	'horst_bargeld',	'',	10.78,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14106,	'2015-08-24',	'08:08:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(13949,	'2015-05-12',	'15:15:00',	0,	'Eröffnung',	'',	'SONSTIGES',	0.00,	'Frieda_sparkonto',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14219,	'2015-10-17',	'16:01:00',	0,	'lose',	'',	'FAMILIE',	-4.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14220,	'2015-10-18',	'10:30:00',	0,	'kirchenspende',	'',	'SPENDE',	-1.20,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14221,	'2015-10-18',	'11:24:00',	0,	'klo',	'',	'KIND',	-0.50,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14222,	'2015-10-18',	'11:31:00',	0,	'Abhebung',	'',	'ABHEBUNG',	100.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14223,	'2015-10-18',	'15:09:00',	0,	'essen burger',	'',	'FAMILIE',	-48.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14224,	'2015-10-19',	'07:57:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	58.44,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(13983,	'2015-09-01',	'10:00:00',	0,	'Abhebung',	'',	'ABHEBUNG',	50.00,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13984,	'2015-09-03',	'07:19:00',	0,	'geld an horst',	'',	'BARLASTSCHRIFT',	-10.00,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13986,	'2015-09-01',	'11:00:00',	0,	'Einkauf',	'',	'EINKAUF',	-7.04,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13987,	'2015-09-02',	'10:00:00',	0,	'Einkauf',	'',	'EINKAUF',	-4.98,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13988,	'2015-09-02',	'11:00:00',	0,	'Einkauf',	'',	'EINKAUF',	-1.49,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13989,	'2015-09-03',	'07:26:00',	0,	'Schulgeld Bücher',	'',	'KIND',	-17.60,	'chris_bargeld',	'',	31.12,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(13992,	'2015-09-04',	'06:59:00',	0,	'summe einkäufe',	'',	'EINKAUF',	-27.79,	'chris_bargeld',	'',	3.33,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14212,	'2015-10-11',	'16:00:00',	0,	'Folktanz',	'',	'FAMILIE',	-7.70,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14206,	'2015-10-09',	'12:20:00',	0,	'REWE Einkauf ',	'',	'EINKAUF',	-5.91,	'horst_bargeld',	'',	22.41,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14207,	'2015-10-11',	'11:15:00',	0,	'kirchenspende',	'',	'SPENDE',	-2.20,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14190,	'2015-10-01',	'12:05:00',	0,	'birne rückgabe',	'',	'SONSTIGES',	2.49,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14191,	'2015-10-02',	'09:06:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14192,	'2015-10-01',	'12:27:00',	0,	'lakritz',	'',	'LEBEN_HORST',	-1.29,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14193,	'2015-10-02',	'12:23:00',	0,	'REWE Einkauf ',	'',	'EINKAUF',	-6.30,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14187,	'2015-10-01',	'09:01:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	12.89,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14178,	'2015-09-25',	'12:50:00',	0,	'netto',	'',	'LEBEN_HORST',	-2.83,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14077,	'2015-10-14',	'14:53:00',	0,	'blumen',	'',	'GESCHENK',	-10.00,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14186,	'2015-09-29',	'12:30:00',	0,	'kopien',	'',	'SONSTIGES',	-6.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14174,	'2015-09-25',	'12:30:00',	0,	'frisöt',	'',	'PFLEGE',	-17.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14169,	'2015-09-22',	'08:15:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14166,	'2015-09-14',	'12:17:00',	0,	'REWE Lebensmittel ',	'',	'EINKAUF',	-3.34,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14158,	'2015-09-17',	'18:53:00',	0,	'einkauf penny',	'',	'EINKAUF',	-5.77,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14154,	'2015-09-17',	'08:58:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14128,	'2015-09-01',	'12:29:00',	0,	'REWE Einkauf ',	'',	'EINKAUF',	-3.04,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14129,	'2015-09-02',	'08:32:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14130,	'2015-09-02',	'12:21:00',	0,	'Einkauf rewê',	'',	'LEBEN_HORST',	-2.64,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14131,	'2015-09-03',	'07:20:00',	0,	'geld von chris',	'',	'BARGUTSCHRIFT',	10.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14132,	'2015-09-03',	'07:40:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.85,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14094,	'2015-10-26',	'20:42:00',	0,	'REWE Einkauf',	'',	'EINKAUF',	10.52,	'chris_bargeld',	'',	3.85,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14236,	'2015-11-07',	'00:00:00',	0,	'Agavendicksaft',	'',	'[_____________]',	-2.65,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:52:04',	1,	'N'),
(14104,	'2014-12-31',	'18:11:00',	0,	'Endbestand',	'',	'(ohne)',	100.00,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14103,	'2015-02-17',	'07:41:00',	0,	'Käsebrötchen',	'',	'LEBEN_HORST',	-0.75,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 10:42:02',	1,	'N'),
(14098,	'2015-11-07',	'15:00:00',	0,	'Alsan',	'',	'[_____________]',	-0.75,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14099,	'2015-11-07',	'15:00:00',	0,	'Kalkstopppulver',	'',	'[_____________]',	-2.55,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14100,	'2015-11-07',	'15:00:00',	0,	'Alsan',	'',	'[_____________]',	-0.75,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14101,	'2015-11-07',	'15:00:00',	0,	'Kalkstopppulver',	'',	'[_____________]',	-2.55,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14102,	'2015-11-07',	'15:00:00',	0,	'Einkauf',	'',	'EINKAUF',	3.30,	'chris_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'',	'2015-11-17 06:39:17',	1,	'N'),
(14241,	'2015-12-31',	'13:30:00',	0,	'Kassensturz 96,63',	'',	'SONSTIGES',	96.08,	'chris_bargeld',	'',	96.63,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'horald-Easynote',	'2015-12-31 13:28:33',	1,	'N'),
(14251,	'2015-12-31',	'13:30:00',	0,	'Kassensturz 134,32',	'',	'SONSTIGES',	90.04,	'horst_bargeld',	'',	134.32,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'horald-Easynote',	'2015-12-31 13:24:21',	1,	'N'),
(14271,	'2016-01-04',	'08:00:00',	0,	'Brötchen',	'',	'LEBEN_HORST',	-0.80,	'horst_bargeld',	'',	0.00,	'0000-00-00',	0.00,	'',	0,	'',	'N',	0,	'',	'',	'horald-Easynote',	'2016-01-04 17:53:07',	1,	'N');

CREATE TABLE `tblktotyp` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldTyp` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldBez` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktotyp` (`fldIndex`, `fldTyp`, `fldBez`) VALUES
(24,	'CSV-IMPORT',	'CSV-Import'),
(25,	'XML-IMPORT',	'Einkaufsliste'),
(26,	'SQL-IMPORT',	'SQL-Import'),
(27,	'SQLITE-IMPORT',	'Sqlite-Import'),
(3,	'KSK-IMPORT',	'KSK-Import'),
(23,	'TARGO-IMPORT',	'Targobank-Import');

CREATE TABLE `tblktozuord` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldKurz` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldSuch` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblktozuord` (`fldIndex`, `fldKurz`, `fldSuch`) VALUES
(294,	'EINKAUF',	'EINKAUF'),
(295,	'PRIVAT',	'CHRIS_PRIVAT'),
(3,	'MIETE',	'MIETE'),
(13,	'GEHALTHORST',	'VERDIENST'),
(23,	'LASTSCHRIFT',	'ALDI'),
(33,	'EINKAUF',	'KAUFLAND'),
(43,	'EINKAUF',	'PENNY'),
(53,	'STROM',	'GENO'),
(63,	'AUTO',	'ADAC'),
(73,	'EINKAUF',	'REWE'),
(83,	'EINKAUF',	'MEDIA'),
(93,	'AUTO',	'ARAL'),
(103,	'TELEFON',	'CONGSTAR'),
(113,	'FLINKSTER',	'FLINKSTER'),
(123,	'BEKL',	'C&'),
(133,	'KIND',	'REGENBOGEN'),
(143,	'TELEFON',	'NETCOLOGNE'),
(153,	'HOMEPAGE',	'1&'),
(163,	'GEBUEHR',	'KREISSPARKASSE'),
(173,	'ABHEBUNG',	'GA NR'),
(183,	'GEHALTCHRIS',	'LOHN / GEHALT'),
(193,	'KIND',	'MUSIKSCHULGEB'),
(203,	'EINKAUF',	'AMAZON'),
(213,	'GEBUEHR',	'GAA-AUSZAHLUNG'),
(223,	'SCHULDEN',	'INKASSO'),
(233,	'KIND',	'ELTERNBEITRAG'),
(243,	'KINDERGELD',	'FAMILIENKASSE'),
(253,	'EINKAUF',	'DROGERIEMARKT'),
(263,	'VERSICHERUNG',	'DEVK'),
(273,	'RUNDFUNK',	'ARD ZDF'),
(283,	'GUTSCHRIFT',	'GUTSCHRIFT'),
(293,	'MED',	'APOTHEKE'),
(303,	'ABHEBUNG',	'AUSZAHLUNG GELDAUTOMAT'),
(313,	'MIETE',	'GARAGENMIETE'),
(323,	'AUTO',	'ESSO'),
(383,	'AUSFLUG',	'CALEVORNIA'),
(343,	'EINKAUF',	'KAUFHOF'),
(353,	'BEKL',	'DEICHMANN'),
(363,	'LASTSCHRIFT',	'REAL'),
(373,	'GEBUEHR',	'VERBR.NORDRHEIN'),
(393,	'GEBUEHR',	'Abschluss Abrechnung'),
(403,	'GEBUEHR',	'GRUNDGEB'),
(413,	'SPAREINLAGE',	'SPAREINLAGE'),
(423,	'MIETE',	'HILDEGARD HELFF'),
(433,	'LEBENHORST',	'LEBENSMITTEL_HORST'),
(443,	'AUTO',	'JET-TANK'),
(453,	'ZOO',	'ZOO'),
(463,	'MUSICSCHULE',	'Musicfactory'),
(473,	'AUTO',	'SB TANK'),
(483,	'BUECHER',	'THALIA'),
(493,	'SCHWIMMKURS',	'PROPHYSIO'),
(503,	'AUTO',	'SHELL'),
(513,	'KIND',	'ERNSTINGS'),
(522,	'LEBEN',	'ALNATURA'),
(532,	'KIND',	'KOELNER VERKEHR'),
(542,	'PRIVAT',	'MAYERSCHE'),
(552,	'SPENDE',	'WORLDVISION'),
(562,	'PFLEG',	'HAIRSHOP'),
(563,	'SCHULDEN',	'CREDITREFORM'),
(564,	'TELEFON',	'PREPAID');

CREATE TABLE `tbllanguage` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldkurz` varchar(4) COLLATE utf8_bin NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblmengein` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldkurz` varchar(50) NOT NULL,
  `fldbez` varchar(200) NOT NULL,
  `fldid_grundeinheit` bigint(20) NOT NULL,
  `fldcalc` varchar(1) NOT NULL,
  `fldfaktor` varchar(10) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblmengein` (`fldindex`, `fldkurz`, `fldbez`, `fldid_grundeinheit`, `fldcalc`, `fldfaktor`) VALUES
(2,	'STK',	'Stück',	1,	'',	''),
(3,	'L',	'Liter',	2,	'',	''),
(4,	'PK',	'Packung(en)',	1,	'',	'');

CREATE TABLE `tblmenu_liste` (
  `fldMenu` char(250) CHARACTER SET latin1 DEFAULT '0',
  `fldIndex` double NOT NULL AUTO_INCREMENT,
  `fldtblwebadr` char(250) CHARACTER SET latin1 DEFAULT NULL,
  `fldSort` char(5) CHARACTER SET latin1 DEFAULT NULL,
  `fldGroup` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `fldview` varchar(1) CHARACTER SET latin1 NOT NULL DEFAULT 'J',
  `fldid_modul` int(11) NOT NULL,
  `fldparent` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldversion` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '0303',
  `fldTyp` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldName` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldid_publictyp` bigint(20) NOT NULL,
  `fldhelplink` varchar(500) COLLATE utf8_bin NOT NULL,
  `fldtarget` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldid_menuprojekt` bigint(20) NOT NULL,
  `fldart` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblmenu_liste` (`fldMenu`, `fldIndex`, `fldtblwebadr`, `fldSort`, `fldGroup`, `fldview`, `fldid_modul`, `fldparent`, `fldversion`, `fldTyp`, `fldName`, `fldtimestamp`, `fldid_publictyp`, `fldhelplink`, `fldtarget`, `fldid_menuprojekt`, `fldart`) VALUES
('Gruppen bearbeiten',	93,	NULL,	'00000',	NULL,	'J',	93,	'18',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Adressliste',	83,	'\"http://localhost/webportal/adressliste/index.php\"',	'00008',	NULL,	'J',	73,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Addressliste-neu',	73,	'\"sites/views/wp_adress/index.php\"',	'00007',	'MAIN',	'N',	3,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Notizen',	63,	'\"http://localhost/webportal/zwiegespraech/index.php\"',	'00003',	NULL,	'J',	33,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Erledigungen',	53,	'\"http://localhost/webportal/erledigung/index.php\"',	'00002',	NULL,	'J',	13,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Geburtstage',	43,	'\"http://localhost/webportal/geburtstage/index.php\"',	'00006',	NULL,	'J',	63,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Konto',	33,	'\"http://localhost/webportal/konto/ktosal.php\"',	'00003',	NULL,	'J',	23,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Geschenkeliste',	23,	'\"http://localhost/webportal/geschenke/index.php\"',	'00006',	NULL,	'J',	53,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Administration',	13,	'\"admin/index.php\"',	'00100',	'MAIN',	'J',	3,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Einkaufsliste',	3,	'\"sites/views/wp_shopping/index.php\"',	'00010',	'MAIN',	'J',	43,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Status bearbeiten',	103,	NULL,	'00000',	NULL,	'J',	13,	'Erledigungen',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Vorrat',	113,	NULL,	'00004',	NULL,	'J',	93,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Reiseliste',	123,	NULL,	'00005',	NULL,	'J',	93,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Docman',	133,	NULL,	'00006',	NULL,	'J',	93,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Elternstunden',	143,	NULL,	'00009',	NULL,	'J',	113,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Home',	153,	NULL,	'00001',	NULL,	'J',	83,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Verbesserung',	163,	NULL,	'00011',	NULL,	'J',	93,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Essensplan',	173,	NULL,	'00012',	NULL,	'J',	93,	'0',	'0302',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Einkaufsliste',	183,	'',	'00010',	'MAIN',	'J',	173,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Administration',	193,	'',	'00100',	'MAIN',	'J',	133,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Geschenke',	203,	'',	'00006',	NULL,	'J',	183,	'1095',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Konto',	213,	'',	'00004',	NULL,	'J',	153,	'1034',	'0303',	'MODUL',	'ACCOUNT',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Geburtstage',	223,	'',	'00006',	NULL,	'J',	193,	'1095',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Erledigungen',	233,	'',	'00003',	NULL,	'J',	143,	'1034',	'0303',	'MODUL',	'TASK',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Notizen',	243,	'',	'00003',	NULL,	'N',	163,	'0',	'0303',	'MODUL',	'NOTICE',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Prior',	393,	NULL,	'',	NULL,	'J',	303,	'233',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Adressliste',	263,	'',	'00008',	NULL,	'J',	203,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Status bearbeiten',	283,	NULL,	'00013',	NULL,	'J',	273,	'233',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Vorrat',	293,	NULL,	'00004',	NULL,	'N',	243,	'0',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Checkliste',	303,	NULL,	'00005',	NULL,	'N',	253,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Docman',	313,	NULL,	'00006',	NULL,	'N',	263,	'0',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Elternstunden',	323,	'',	'00009',	NULL,	'J',	233,	'1095',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Home',	333,	NULL,	'00001',	NULL,	'J',	213,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Verbesserung',	343,	NULL,	'00011',	NULL,	'N',	223,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Essensplan',	353,	NULL,	'00012',	NULL,	'N',	223,	'0',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Fahrtenbuch',	363,	NULL,	'00013',	NULL,	'N',	283,	'0',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Kaufort',	373,	NULL,	'00014',	NULL,	'J',	293,	'183',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Status bearbeiten',	383,	NULL,	NULL,	NULL,	'J',	273,	'183',	'0303',	'',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Benutzer',	403,	NULL,	'',	NULL,	'J',	323,	'233',	'0303',	'MODUL',	'USER',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Kategorie',	413,	NULL,	'',	NULL,	'J',	313,	'233',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Terminkalender',	423,	NULL,	'00015',	NULL,	'N',	333,	'0',	'0303',	'PLUGIN',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Stammdaten',	433,	NULL,	'',	NULL,	'J',	343,	'183',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Kontengruppe',	443,	NULL,	'',	NULL,	'J',	363,	'213',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Module',	453,	NULL,	'',	NULL,	'J',	353,	'193',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Konten',	463,	NULL,	'',	NULL,	'J',	373,	'213',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Kontenzuordnung',	473,	'',	'',	NULL,	'J',	383,	'463',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Sync-Computer',	483,	'',	'',	NULL,	'J',	393,	'193',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('dbsync',	493,	'',	'',	NULL,	'J',	403,	'483',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Trigger',	503,	'',	'',	NULL,	'J',	413,	'483',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Erledigungsgruppe',	513,	NULL,	'',	NULL,	'J',	423,	'233',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Programmupdate',	523,	'',	'00090',	NULL,	'J',	433,	'193',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Funktionen',	533,	NULL,	'',	NULL,	'J',	443,	'193',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Oberkonten',	543,	'',	'',	NULL,	'J',	453,	'463',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Abteilungen',	553,	NULL,	'',	NULL,	'J',	463,	'183',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Adressgruppe',	563,	NULL,	'',	NULL,	'J',	473,	'263',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Kontenart',	573,	NULL,	'',	NULL,	'J',	483,	'183',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Adresszuordnung',	583,	NULL,	'',	NULL,	'J',	493,	'263',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Reiseliste',	613,	'',	'00016',	NULL,	'J',	513,	'1095',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Bilder',	603,	NULL,	'',	NULL,	'J',	503,	'293',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Reisegrund',	623,	NULL,	'',	NULL,	'J',	523,	'613',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Gepaeckliste',	633,	NULL,	'',	NULL,	'J',	533,	'613',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Gepaeckstueck',	643,	NULL,	'',	NULL,	'J',	543,	'613',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Briefverkehr',	653,	NULL,	'',	NULL,	'J',	553,	'313',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Zimmer',	663,	NULL,	'',	NULL,	'J',	563,	'293',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Moebel',	673,	NULL,	'',	NULL,	'J',	573,	'293',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Faecher',	683,	NULL,	'',	NULL,	'J',	583,	'293',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('RechDatum',	693,	NULL,	'',	NULL,	'J',	593,	'363',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Wiki',	703,	NULL,	'00091',	NULL,	'N',	613,	'0',	'0303',	'PLUGIN',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Sprache',	713,	NULL,	'',	NULL,	'J',	603,	'193',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Dauerauftrag',	723,	NULL,	'',	NULL,	'J',	623,	'233',	'0303',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Kontotyp',	733,	'',	'',	'',	'J',	633,	'463',	'0312',	'MODUL',	'',	'0000-00-00 00:00:00',	0,	'',	'',	13,	''),
('Notizen',	734,	NULL,	'00003',	NULL,	'J',	163,	'0',	'0303',	'MODUL',	'',	'2013-08-29 17:22:44',	0,	'',	'',	13,	''),
('Gruppe',	744,	NULL,	'',	NULL,	'J',	423,	'734',	'0303',	'MODUL',	'',	'2013-08-30 16:26:12',	0,	'',	'',	13,	''),
('Aufgabenplan',	754,	'',	'00080',	NULL,	'J',	644,	'1095',	'0312',	'MODUL',	'',	'2014-01-16 20:47:43',	0,	'',	'',	13,	''),
('Benutzerwechsel',	764,	NULL,	'',	NULL,	'J',	654,	'754',	'0303',	'MODUL',	'',	'2014-01-16 21:48:32',	0,	'',	'',	13,	''),
('Termine',	973,	'',	'00009',	'',	'J',	843,	'0',	'0303',	'MODUL',	'DATES',	'2013-08-27 17:43:06',	3,	'Joorgportal/Termine',	'',	13,	''),
('Statusgruppe',	974,	'',	'',	NULL,	'N',	0,	'263',	'0312',	'MODUL',	'',	'2014-04-08 21:12:47',	0,	'',	'',	13,	''),
('Aufgabenuser',	984,	'',	'',	NULL,	'J',	674,	'754',	'0312',	'MODUL',	'',	'2014-04-28 19:13:56',	0,	'',	'',	13,	''),
('Essensplan',	994,	'',	'00011',	NULL,	'J',	684,	'1095',	'0312',	'MODUL',	'',	'2014-07-26 08:57:26',	0,	'',	'',	13,	''),
('Stundenplan',	1004,	NULL,	'',	NULL,	'J',	1013,	'973',	'0303',	'MODUL',	'',	'2014-08-22 16:15:28',	0,	'',	'',	13,	''),
('Zeiten',	1014,	NULL,	'',	NULL,	'J',	1344,	'1004',	'0303',	'MODUL',	'',	'2014-08-22 16:18:12',	0,	'',	'',	13,	''),
('Wotag',	1024,	NULL,	'',	NULL,	'J',	1345,	'1004',	'0303',	'MODUL',	'',	'2014-08-22 16:19:44',	0,	'',	'',	13,	''),
('Privat',	1034,	NULL,	'00002',	NULL,	'J',	783,	'0',	'0303',	'MODUL',	'',	'2014-08-22 17:58:12',	0,	'',	'',	13,	''),
('Heizung',	1044,	NULL,	'',	NULL,	'J',	803,	'1034',	'0303',	'MODUL',	'',	'2014-08-22 18:01:51',	0,	'',	'',	13,	''),
('Blutdruck',	1054,	NULL,	'',	NULL,	'J',	973,	'1034',	'0303',	'MODUL',	'',	'2014-08-22 18:02:53',	0,	'',	'',	13,	''),
('Umfragen',	1064,	NULL,	'',	NULL,	'J',	1073,	'1034',	'0303',	'MODUL',	'',	'2014-08-22 18:04:17',	0,	'',	'',	13,	''),
('Tabletten',	1074,	NULL,	'',	NULL,	'J',	1153,	'1034',	'0303',	'MODUL',	'',	'2014-08-22 20:44:58',	0,	'',	'',	13,	''),
('Bildverz',	1084,	NULL,	'',	NULL,	'J',	1233,	'1034',	'0303',	'MODUL',	'',	'2014-08-22 20:57:12',	0,	'',	'',	13,	''),
('Vorrat',	1094,	NULL,	'00005',	NULL,	'J',	123,	'1034',	'0303',	'MODUL',	'',	'2014-08-22 20:59:20',	0,	'',	'',	13,	''),
('Familie',	1095,	'',	'00003',	NULL,	'J',	0,	'0',	'0312',	'MODUL',	'',	'2014-11-03 06:31:39',	0,	'',	'',	0,	''),
('Rezepte',	1096,	'',	'',	NULL,	'J',	703,	'994',	'0312',	'MODUL',	'',	'2014-11-03 06:42:22',	0,	'',	'',	0,	''),
('Docman',	1097,	'',	'00004',	NULL,	'J',	0,	'0',	'0312',	'MODUL',	'',	'2014-11-03 06:44:23',	0,	'',	'',	0,	''),
('Briefverkehr',	1098,	'',	'',	NULL,	'J',	553,	'1097',	'0312',	'MODUL',	'',	'2014-11-03 06:45:33',	0,	'',	'',	0,	''),
('Test',	1099,	'app/index.php?r=site/index',	'',	NULL,	'N',	0,	'0',	'0312',	'WEBLINK',	'',	'2014-11-03 17:19:44',	0,	'',	'',	0,	''),
('Importtyp',	1100,	'',	'',	NULL,	'J',	1043,	'213',	'0312',	'MODUL',	'',	'2014-11-05 17:36:02',	0,	'',	'',	0,	''),
('Jahr',	1101,	'',	'',	NULL,	'J',	1023,	'1044',	'0312',	'MODUL',	'',	'2014-11-14 17:21:02',	0,	'',	'',	0,	''),
('Geraet',	1102,	'',	'',	NULL,	'J',	1033,	'1044',	'0312',	'MODUL',	'',	'2014-11-14 17:24:15',	0,	'',	'',	0,	''),
('Zimmer',	1103,	'',	'',	NULL,	'J',	563,	'1094',	'0312',	'MODUL',	'',	'2014-11-19 17:38:29',	0,	'',	'',	0,	''),
('Moebel',	1104,	'',	'',	NULL,	'J',	573,	'1094',	'0312',	'MODUL',	'',	'2014-11-19 17:47:37',	0,	'',	'',	0,	''),
('Faecher',	1105,	'',	'',	NULL,	'J',	583,	'1094',	'0312',	'MODUL',	'',	'2014-11-20 06:14:27',	0,	'',	'',	0,	''),
('Status',	1106,	'',	'',	NULL,	'J',	273,	'1094',	'0312',	'MODUL',	'',	'2014-11-20 06:46:16',	0,	'',	'',	0,	''),
('Statusgrp',	1107,	'',	'',	NULL,	'J',	664,	'1106',	'0312',	'MODUL',	'',	'2014-11-20 06:47:38',	0,	'',	'',	0,	''),
('Statuszuord',	1108,	'',	'',	NULL,	'J',	1323,	'1106',	'0312',	'MODUL',	'',	'2014-11-20 06:49:09',	0,	'',	'',	0,	''),
('Bilder',	1109,	'',	'',	NULL,	'J',	503,	'1094',	'0312',	'MODUL',	'',	'2014-11-20 16:55:47',	0,	'',	'',	0,	''),
('Fahrtenbuch',	1110,	'',	'',	NULL,	'J',	283,	'1034',	'0312',	'MODUL',	'',	'2014-11-21 07:00:22',	0,	'',	'',	0,	''),
('RechDatum',	1111,	'',	'',	NULL,	'J',	593,	'1110',	'0312',	'MODUL',	'',	'2014-11-21 17:05:47',	0,	'',	'',	0,	''),
('sqlite',	1112,	'',	'',	NULL,	'J',	1346,	'1110',	'0312',	'MODUL',	'',	'2014-11-21 17:35:53',	0,	'',	'',	0,	''),
('mynetmon',	1113,	'',	'',	NULL,	'J',	1347,	'483',	'0312',	'MODUL',	'',	'2014-12-31 15:57:01',	0,	'',	'',	0,	''),
('Inhabergruppe',	1115,	'',	'',	NULL,	'J',	1133,	'443',	'0312',	'MODUL',	'',	'2015-01-05 21:14:49',	0,	'',	'',	0,	''),
('Inhaberzuordnung',	1116,	'',	'',	NULL,	'J',	1143,	'443',	'0312',	'MODUL',	'',	'2015-01-05 21:17:54',	0,	'',	'',	0,	''),
('Konten&uumlbersicht',	1117,	'',	'',	NULL,	'J',	893,	'213',	'0312',	'MODUL',	'',	'2015-01-05 21:38:48',	0,	'',	'',	0,	''),
('Versionen',	1118,	'',	'',	NULL,	'J',	863,	'193',	'0312',	'MODUL',	'',	'2015-01-06 06:09:05',	0,	'',	'',	0,	''),
('Benutzer',	1119,	'',	'',	NULL,	'J',	323,	'1004',	'0312',	'MODUL',	'',	'2015-02-02 06:03:43',	0,	'',	'',	0,	''),
('Adressstatus',	1444,	'',	'',	'',	'J',	1353,	'263',	'0312',	'MODUL',	'',	'2015-03-17 16:54:43',	0,	'',	'',	0,	''),
('Statusgruppe',	1445,	'',	'',	'',	'J',	963,	'1444',	'0312',	'MODUL',	'',	'2015-03-17 17:01:04',	0,	'',	'',	0,	''),
('Statuszuord',	1446,	'',	'',	'',	'J',	1323,	'1444',	'0312',	'MODUL',	'',	'2015-03-17 17:02:15',	0,	'',	'',	0,	''),
('Statusgruppe',	1447,	'',	'',	NULL,	'J',	963,	'283',	'0312',	'MODUL',	'',	'2015-04-20 05:21:08',	0,	'',	'',	0,	''),
('Statuszuord',	1448,	'',	'',	NULL,	'J',	1323,	'283',	'0312',	'MODUL',	'',	'2015-04-20 05:22:18',	0,	'',	'',	0,	''),
('Verbrauch',	1449,	'',	'',	NULL,	'J',	1354,	'1034',	'0315',	'MODUL',	'',	'2015-04-22 05:13:29',	0,	'',	'',	0,	''),
('Zeitpunkt',	1452,	'',	'',	NULL,	'J',	983,	'1054',	'0315',	'MODUL',	'',	'2015-04-30 15:22:31',	0,	'',	'',	0,	''),
('Reports',	1451,	'',	'',	NULL,	'J',	1356,	'213',	'0315',	'MODUL',	'',	'2015-04-23 16:07:02',	0,	'',	'',	0,	''),
('Oberkategorie',	1453,	'',	'',	NULL,	'J',	1357,	'1094',	'0315',	'MODUL',	'',	'2015-05-04 05:49:30',	0,	'',	'',	0,	''),
('Grundeinheit',	1454,	'',	'',	NULL,	'J',	713,	'1094',	'0315',	'MODUL',	'',	'2015-05-04 05:51:45',	0,	'',	'',	0,	''),
('Mengeneinheit',	1455,	'',	'',	NULL,	'J',	723,	'1094',	'0315',	'MODUL',	'',	'2015-05-04 05:53:25',	0,	'',	'',	0,	''),
('Kosten',	1456,	'',	'',	NULL,	'J',	1293,	'213',	'0315',	'MODUL',	'',	'2015-05-08 16:04:08',	0,	'',	'',	0,	''),
('Dauerauftragtyp',	1457,	'',	'',	NULL,	'J',	1313,	'1456',	'0315',	'MODUL',	'',	'2015-05-08 16:11:13',	0,	'',	'',	0,	''),
('Termingruppen',	1458,	'',	'',	NULL,	'J',	1263,	'973',	'0315',	'MODUL',	'',	'2015-05-11 17:10:57',	0,	'',	'',	0,	''),
('Teminserie',	1459,	'',	'',	NULL,	'J',	1283,	'973',	'0315',	'MODUL',	'',	'2015-05-11 17:14:53',	0,	'',	'',	0,	''),
('Kalender',	1460,	'classes/calendar.php',	'',	NULL,	'J',	0,	'973',	'0315',	'WEBLINK',	'',	'2015-05-11 17:18:38',	0,	'',	'',	0,	''),
('Aufgabenliste',	1461,	'',	'',	NULL,	'J',	1358,	'754',	'0315',	'MODUL',	'',	'2015-05-11 19:24:05',	0,	'',	'',	0,	''),
('Etagen',	1462,	'',	'',	NULL,	'J',	1123,	'1094',	'0312',	'MODUL',	'',	'2015-06-27 19:14:32',	0,	'',	'',	0,	''),
('Hilfe',	1463,	'',	'',	NULL,	'J',	1359,	'1521',	'0312',	'MODUL',	'',	'2015-07-01 15:59:41',	0,	'',	'',	0,	''),
('Häufigkeit',	1464,	'',	'',	NULL,	'J',	1360,	'1461',	'0312',	'MODUL',	'',	'2015-08-09 12:02:13',	0,	'',	'',	0,	''),
('Treegrid',	1465,	'',	'',	NULL,	'J',	753,	'1097',	'0312',	'MODUL',	'',	'2015-08-18 15:59:23',	0,	'',	'',	0,	''),
('Make Sql-Struc',	1466,	'classes/mksqlstruc.php',	'',	NULL,	'J',	0,	'483',	'0312',	'WEBLINK',	'',	'2015-08-21 05:13:51',	0,	'',	'',	0,	''),
('Tools',	1467,	'sites/html/tools.php?idwert=1467',	'00099',	NULL,	'J',	0,	'0',	'0312',	'WEBLINK',	'',	'2015-09-15 05:32:01',	0,	'',	'',	0,	''),
('Joorgsqlite',	1468,	'http://localhost/android/own/joorgsqlite/index.php',	'',	NULL,	'J',	0,	'1467',	'0312',	'WEBLINK',	'',	'2015-09-15 05:36:24',	0,	'',	'_blank',	0,	''),
('Benutzer',	1469,	'',	'',	NULL,	'J',	323,	'984',	'0312',	'MODUL',	'',	'2015-09-19 11:19:46',	0,	'',	'',	0,	''),
('Rechnungen',	1470,	'',	'',	NULL,	'J',	883,	'1110',	'0312',	'MODUL',	'',	'2015-10-02 16:15:24',	0,	'',	'',	0,	''),
('Rechnungen',	1471,	'',	'',	NULL,	'J',	883,	'1097',	'0312',	'MODUL',	'',	'2015-10-02 16:20:32',	0,	'',	'',	0,	''),
('Computer',	1481,	'',	'',	NULL,	'J',	1361,	'193',	'0312',	'MODUL',	'',	'2015-12-31 13:43:46',	0,	'',	'',	0,	''),
('Tables',	1491,	'',	'',	NULL,	'J',	1303,	'193',	'0312',	'MODUL',	'',	'2015-12-31 14:17:58',	0,	'',	'',	0,	''),
('Filly',	1501,	'',	'',	NULL,	'J',	1371,	'1511',	'0312',	'MODUL',	'',	'2016-01-06 17:03:10',	0,	'',	'',	0,	''),
('Fillys',	1511,	'',	'',	NULL,	'J',	1381,	'1034',	'0312',	'MODUL',	'',	'2016-01-07 07:02:58',	0,	'',	'',	0,	''),
('Hilfe',	1521,	'',	'',	NULL,	'J',	1391,	'193',	'0312',	'MODUL',	'',	'2016-01-07 17:05:59',	0,	'',	'',	0,	''),
('Hilfeindex',	1531,	'',	'',	NULL,	'J',	1401,	'1521',	'0312',	'MODUL',	'',	'2016-01-07 17:09:27',	0,	'',	'',	0,	''),
('Fillyart',	1541,	'',	'',	NULL,	'J',	1411,	'1511',	'0312',	'MODUL',	'',	'2016-01-11 07:04:08',	0,	'',	'',	0,	''),
('Bilder',	1551,	'',	'',	NULL,	'J',	503,	'1511',	'0312',	'MODUL',	'',	'2016-01-11 07:23:59',	0,	'',	'',	0,	''),
('Bildart',	1561,	'',	'',	NULL,	'J',	1421,	'1094',	'0312',	'MODUL',	'',	'2016-01-11 07:33:15',	0,	'',	'',	0,	''),
('FengOffice',	1571,	'http://localhost/app/fengoffice',	'',	NULL,	'J',	0,	'1097',	'0312',	'WEBLINK',	'',	'2016-01-12 16:50:59',	0,	'',	'_blank',	0,	'');

CREATE TABLE `tblmenu_modul` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldwebadr` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldlang` varchar(4) COLLATE utf8_bin NOT NULL,
  `fldversion` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldsource` varchar(2048) COLLATE utf8_bin NOT NULL,
  `fldid_publictyp` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblmenu_modul` (`fldindex`, `fldbez`, `fldwebadr`, `fldlang`, `fldversion`, `fldtimestamp`, `fldsource`, `fldid_publictyp`) VALUES
(73,	'Adressliste',	'sites/views/wp_adress/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(63,	'Geburtstage',	'sites/views/wp_birthday/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(53,	'Geschenkliste',	'sites/views/wp_present/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(43,	'Einkaufsliste',	'sites/views/wp_shopping/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(33,	'Notizen',	'sites/views/wp_notice/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(23,	'Konto',	'sites/views/wp_account/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(13,	'Erledigungen',	'sites/views/wp_tasks/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(3,	'Administration',	'admin/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(83,	'Home',	'welcome.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(93,	'Dummy',	'sites/views/wp_dummy/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(113,	'Elternstunden',	'sites/views/wp_parenthours/index.php',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(123,	'Vorrat',	'classes/showtab.php?menu=stock',	'de',	'0302',	'0000-00-00 00:00:00',	'',	0),
(133,	'Administration',	'classes/showtab.php?menu=admin',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(143,	'Erledigungen',	'classes/showtab.php?menu=tasks',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(153,	'Konto',	'classes/showtab.php?menu=account',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(163,	'Notizen',	'classes/showtab.php?menu=notice',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(173,	'Einkaufsliste',	'classes/showtab.php?menu=shopping',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(183,	'Geschenkliste',	'classes/showtab.php?menu=present',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(193,	'Geburtstage',	'classes/showtab.php?menu=birthday',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(203,	'Adressliste',	'classes/showtab.php?menu=address',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(213,	'Home',	'welcome.php',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(223,	'Dummy',	'classes/showtab.php?menu=dummy',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(233,	'Elternstunden',	'classes/showtab.php?menu=hours',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(243,	'Vorrat',	'classes/showtab.php?menu=stock',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(253,	'Checkliste',	'classes/showtab.php?menu=checklist',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(263,	'Docman',	'classes/showtab.php?menu=docman',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(273,	'Status',	'classes/showtab.php?menu=status',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(283,	'Fahrtenbuch',	'classes/showtab.php?menu=drive',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(293,	'Kaufort',	'classes/showtab.php?menu=station',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(643,	'Menutyp',	'classes/showtab.php?menu=menutyp',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(303,	'Prior',	'classes/showtab.php?menu=prior',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(313,	'Kategoire',	'classes/showtab.php?menu=category',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(323,	'User',	'classes/showtab.php?menu=user',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(333,	'Terminkalender',	'http://localhost/luxcal/',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(343,	'Stammdaten',	'classes/showtab.php?menu=stamm',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(353,	'Modul',	'classes/showtab.php?menu=modul',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(363,	'Kontengruppe',	'classes/showtab.php?menu=kontengruppe',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(373,	'Konten',	'classes/showtab.php?menu=konten',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(383,	'Kontozuordnung',	'classes/showtab.php?menu=ktozuord',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(393,	'SyncComputer',	'classes/showtab.php?menu=synccomp',	'de',	'0312',	'0000-00-00 00:00:00',	'',	0),
(403,	'dbsync',	'classes/showtab.php?menu=dbsync',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(413,	'Trigger',	'classes/showtab.php?menu=trigger',	'de',	'0308',	'0000-00-00 00:00:00',	'',	0),
(423,	'Erledigungsgruppe',	'classes/showtab.php?menu=erlgrp',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(433,	'Programmupdate',	'classes/showtab.php?menu=prgupdate',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(443,	'Funktion',	'classes/showtab.php?menu=func',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(453,	'Oberkonten',	'classes/showtab.php?menu=upperaccount',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(463,	'Abteilungen',	'classes/showtab.php?menu=abteilung',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(473,	'Adressgruppe',	'classes/showtab.php?menu=adrgrp',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(483,	'Kontenart',	'classes/showtab.php?menu=ktoart',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(493,	'Adresszuordnung',	'classes/showtab.php?menu=adrzuordnung',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(503,	'Bilder',	'classes/showtab.php?menu=images',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(513,	'Reise',	'classes/showtab.php?menu=travel',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(523,	'Reisegrund',	'classes/showtab.php?menu=tc_reason',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(533,	'GepÃ¤ckliste',	'classes/showtab.php?menu=tc_gepaeck',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(543,	'Gepaeckstueck',	'classes/showtab.php?menu=tc_gepaeckstueck',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(553,	'Briefverkehr',	'classes/showtab.php?menu=brfverkehr',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(563,	'Zimmer',	'classes/showtab.php?menu=rooms',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(573,	'MÃ¶bel',	'classes/showtab.php?menu=moebel',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(583,	'Faecher',	'classes/showtab.php?menu=faecher',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(593,	'RechDatum',	'classes/showtab.php?menu=rechdat',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(603,	'Sprache',	'classes/showtab.php?menu=translate',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(613,	'Wiki',	'http://localhost/tools/mediawiki/index.php',	'de',	'0309',	'0000-00-00 00:00:00',	'',	0),
(623,	'Dauerauftrag',	'classes/showtab.php?menu=dauerauftrag',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(633,	'ktoeatyp',	'classes/showtab.php?menu=ktoeatyp',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(644,	'Aufgabenplan',	'classes/showtab.php?menu=aufgabenplan',	'de',	'0303',	'2014-01-16 20:46:36',	'',	0),
(654,	'Benutzerwechsel',	'classes/showtab.php?menu=userrotate',	'de',	'0303',	'2014-01-16 21:48:07',	'',	0),
(1353,	'Adressstatus',	'classes/showtab.php?menu=adrstatus',	'de',	'0312',	'2015-03-17 16:55:30',	'',	0),
(674,	'Aufgabenbenutzer',	'classes/showtab.php?menu=aufgabenbenutzer',	'de',	'0311',	'2014-04-28 19:13:09',	'',	0),
(684,	'Essensplan',	'classes/showtab.php?menu=essensplan',	'de',	'0312',	'2014-07-26 08:56:18',	'',	0),
(653,	'Kategorie (AufrÃ¤umen)',	'classes/showtab.php?menu=vo_category',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(663,	'Unterkategorie',	'classes/showtab.php?menu=undercategory',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(673,	'Userkategory',	'classes/showtab.php?menu=usercategory',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(693,	'Essensplan',	'classes/showtab.php?menu=essensplan',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(703,	'Rezepte',	'classes/showtab.php?menu=rezepte',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(713,	'Grundeinheit',	'classes/showtab.php?menu=grundeinheit',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(723,	'Mengeneinheit',	'classes/showtab.php?menu=mengein',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(733,	'Zutaten',	'classes/showtab.php?menu=zutaten',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(743,	'Grundartikel',	'classes/showtab.php?menu=grundartikel',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(753,	'treegrid',	'classes/showtab.php?menu=treegrid',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(763,	'Beschenkte',	'classes/showtab.php?menu=beschenkte',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(773,	'Familie',	'classes/submenushow.php?menu=family',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(783,	'Privat',	'classes/submenushow.php?menu=privat',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(793,	'Reisekosten',	'classes/showtab.php?menu=reisekosten',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(803,	'Heizung',	'classes/showtab.php?menu=heizung',	'de',	'0303',	'0000-00-00 00:00:00',	'',	0),
(813,	'Barcode',	'classes/showtab.php?menu=barcode',	'de',	'0303',	'2013-07-26 05:27:46',	'',	0),
(823,	'Update erzeugen',	'classes/updateerzeugen.php?idwert=953',	'de',	'0309',	'2013-08-16 17:30:25',	'',	0),
(833,	'gcal',	'classes/plugin/google/calendar.php?menu=gcal',	'de',	'0307',	'2013-08-27 17:38:10',	'<iframe src=\"https://www.google.com/calendar/embed?height=500&wkst=1&bgcolor=%23FFFFFF&src=meh8bg5v4qo65dfl4v6as701fs%40group.calendar.google.com&color=%23B1365F&src=7lie3jn3a26mct92vlnifu0mmo%40group.calendar.google.com&color=%2328754E&src=bu0hs6s4bkprpkr24bqt113fbo%40group.calendar.google.com&color=%235229A3&src=de.german%23holiday%40group.v.calendar.google.com&color=%23875509&ctz=Europe%2FBerlin\" style=\" border-width:0 \" width=\"800\" height=\"500\" frameborder=\"0\" scrolling=\"no\"></iframe>',	13),
(843,	'Termine',	'classes/showtab.php?menu=termine',	'de',	'0307',	'2013-08-28 05:34:10',	'',	0),
(853,	'(ohne)',	'',	'de',	'0308',	'2013-08-29 05:25:44',	'',	0),
(863,	'Version',	'classes/showtab.php?menu=version',	'de',	'0308',	'2013-08-30 14:10:16',	'',	0),
(873,	'Prgtyp',	'classes/showtab.php?menu=prgtyp',	'de',	'0308',	'2013-08-30 14:36:59',	'',	0),
(883,	'Rechnung',	'classes/showtab.php?menu=rechnung',	'de',	'0308',	'2013-08-30 18:31:41',	'',	0),
(893,	'KontenÃ¼bersicht',	'classes/overviewaccount.php',	'de',	'0308',	'2013-09-04 15:15:19',	'',	0),
(903,	'Stammdatentyp',	'classes/showtab.php?menu=stammtyp',	'de',	'0308',	'2013-09-07 19:16:56',	'',	0),
(913,	'synctyp',	'classes/showtab.php?menu=synctyp',	'de',	'0308',	'2013-09-10 05:07:44',	'',	0),
(923,	'dbsync-Remote',	'classes/showtab.php?menu=dbsyncremote',	'de',	'0308',	'2013-09-11 05:07:57',	'',	0),
(933,	'Funktion-Remote',	'classes/showtab.php?menu=funcremote',	'de',	'0308',	'2013-09-11 18:27:21',	'',	0),
(943,	'Erledigung-Remote',	'classes/showtab.php?menu=tasksremote',	'de',	'0308',	'2013-09-11 17:20:29',	'',	0),
(953,	'Publictyp',	'classes/showtab.php?menu=publictyp',	'de',	'0309',	'2013-10-06 13:55:44',	'',	0),
(963,	'Statusgruppe',	'classes/showtab.php?menu=statusgrp',	'de',	'0309',	'2013-10-06 14:16:53',	'',	0),
(973,	'Blutdruck',	'classes/showtab.php?menu=blutdruck',	'de',	'0309',	'2013-10-25 13:18:25',	'',	0),
(983,	'Zeitpunkt',	'classes/showtab.php?menu=zeitpunkt',	'de',	'0309',	'2013-10-25 13:30:00',	'',	0),
(993,	'Kitajahr',	'classes/showtab.php?menu=kitajahr',	'de',	'0309',	'2013-10-25 19:41:06',	'',	0),
(1003,	'Kitauser',	'classes/showtab.php?menu=kitauser',	'de',	'0309',	'2013-10-25 20:17:05',	'',	0),
(1013,	'Stundenplan',	'classes/showtab.php?menu=stdplan',	'de',	'0309',	'2013-10-26 06:37:41',	'',	0),
(1023,	'Jahr',	'classes/showtab.php?menu=jahr',	'de',	'0310',	'2013-11-09 22:41:49',	'',	0),
(1033,	'GerÃ¤te',	'classes/showtab.php?menu=geraet',	'de',	'0310',	'2013-12-01 14:44:10',	'',	0),
(1043,	'Kontotyp',	'classes/showtab.php?menu=ktotyp',	'de',	'0310',	'2013-12-05 06:20:02',	'',	0),
(1053,	'Kontengruppe',	'classes/showtab.php?menu=ktogrp',	'de',	'0310',	'2013-12-12 06:21:57',	'',	0),
(1063,	'Kontenzuordnung',	'classes/showtab.php?menu=ktogrpzuord',	'de',	'0310',	'2013-12-12 06:40:07',	'',	0),
(1073,	'Umfragen',	'classes/showtab.php?menu=poll_umfragen',	'de',	'0310',	'2013-12-12 21:52:40',	'',	0),
(1083,	'Antworten',	'classes/showtab.php?menu=poll_antworten',	'de',	'0310',	'2013-12-12 22:01:40',	'',	0),
(1093,	'Login',	'includes/SimpleMember/inc/login.php',	'de',	'0310',	'2013-12-13 16:57:46',	'',	0),
(1103,	'Installerzeugen',	'classes/installerzeugen.php',	'de',	'0310',	'2013-12-17 17:43:04',	'',	0),
(1113,	'logout',	'includes/SimpleMember/logout.php',	'de',	'0310',	'2013-12-20 21:14:13',	'',	0),
(1123,	'Etagen',	'classes/showtab.php?menu=etagen',	'de',	'0310',	'2014-01-02 20:05:25',	'',	0),
(1133,	'Kontoinhabergruppe',	'classes/showtab.php?menu=ktoinhgrp',	'de',	'0310',	'2014-01-07 07:13:58',	'',	0),
(1143,	'Inhaberzuord',	'classes/showtab.php?menu=ktoinhgrpzuord',	'de',	'0310',	'2014-01-07 07:22:26',	'',	0),
(1153,	'Tabletten',	'classes/showtab.php?menu=tabletten',	'de',	'0310',	'2014-01-08 07:10:01',	'',	0),
(1163,	'Mysqldumper',	'http://localhost/mysqldumper',	'de',	'0310',	'2014-01-08 17:07:55',	'',	0),
(1173,	'Settrigger',	'classes/showtab.php?menu=settrigger',	'de',	'0310',	'2014-01-13 07:49:52',	'',	0),
(1183,	'Resyncalltyp',	'classes/showtab.php?menu=resyncalltyp',	'de',	'0310',	'2014-01-13 17:00:56',	'',	0),
(1203,	'Aufgabenplan',	'classes/showtab.php?menu=aufgabenplan',	'de',	'0310',	'2014-01-15 06:23:50',	'',	0),
(1223,	'Benutzerwechsel',	'classes/showtab.php?menu=userrotate',	'de',	'0310',	'2014-01-16 21:28:47',	'',	0),
(1233,	'Bildverz',	'classes/showtab.php?menu=bildverz',	'de',	'0310',	'2014-01-27 06:33:43',	'',	0),
(309,	'Raum',	'classes/showtab.php?menu=raum',	'de',	'0309',	'2014-02-06 17:43:40',	'',	0),
(1253,	'Aufgabenbenutzer',	'classes/showtab.php?menu=aufgabenbenutzer',	'de',	'0311',	'2014-02-18 17:13:21',	'',	0),
(1263,	'Termingruppen',	'classes/showtab.php?menu=terminegrp',	'de',	'0311',	'2014-02-24 06:32:18',	'',	0),
(1273,	'Musik',	'classes/showtab.php?menu=music',	'de',	'0311',	'2014-03-06 21:39:55',	'',	0),
(1283,	'Terminserie',	'classes/showtab.php?menu=terminserie',	'de',	'0311',	'2014-03-07 06:33:53',	'',	0),
(1293,	'Dauerauftragkto',	'classes/showtab.php?menu=ktodauerauftrag',	'de',	'0312',	'2014-03-31 16:20:34',	'',	0),
(1303,	'Tables',	'classes/showtab.php?menu=tables',	'de',	'0312',	'2014-05-05 05:24:34',	'',	0),
(1313,	'Dauerauftragtyp',	'classes/showtab.php?menu=dauerauftragtyp',	'de',	'0312',	'2014-05-08 05:52:07',	'',	0),
(1323,	'Statuszuord',	'classes/showtab.php?menu=statuszuord',	'de',	'0312',	'2014-06-20 08:51:38',	'',	3),
(1333,	'Etiketten',	'classes/showtab.php?menu=etiketten',	'de',	'0312',	'2014-06-24 15:54:26',	'',	0),
(1343,	'Artikelnr',	'classes/showtab.php?menu=artikelnr',	'de',	'0312',	'2014-06-26 05:51:31',	'',	0),
(1344,	'Zeiten',	'classes/showtab.php?menu=stdzeit',	'de',	'0312',	'2014-08-22 09:34:51',	'',	0),
(1345,	'Wotag',	'classes/showtab.php?menu=stdwotag',	'de',	'0312',	'2014-08-22 09:38:36',	'',	0),
(1346,	'showsqlite',	'classes/showsqlite.php',	'de',	'0312',	'2014-11-21 17:34:55',	'',	0),
(1347,	'netmon',	'../mynetmon/index.php',	'de',	'0312',	'2014-12-31 15:56:23',	'',	0),
(1354,	'verbrauch',	'classes/verbrauch.php',	'de',	'0315',	'2015-04-22 05:12:39',	'',	0),
(1355,	'datapass',	'http://datapass.de/',	'de',	'0315',	'2015-04-23 15:52:46',	'',	0),
(1356,	'report',	'classes/showtab.php?menu=report',	'de',	'0315',	'2015-04-23 16:05:57',	'',	0),
(1357,	'Oberkategorie',	'classes/showtab.php?menu=vo_category',	'de',	'0315',	'2015-05-04 05:48:43',	'',	0),
(1358,	'Aufgabenliste',	'classes/showtab.php?menu=aufgabenliste',	'de',	'0315',	'2015-05-11 18:21:45',	'',	0),
(1359,	'help',	'classes/showtab.php?menu=help',	'de',	'0312',	'2015-07-01 15:58:56',	'',	0),
(1360,	'Häufigkeit',	'classes/showtab.php?menu=haeufigkeit',	'de',	'0312',	'2015-08-09 12:02:50',	'',	0),
(1361,	'Computer',	'classes/showtab.php?menu=computer',	'de',	'0312',	'2015-12-31 13:42:52',	'',	0),
(1371,	'Filly',	'classes/showtab.php?menu=filly',	'de',	'0312',	'2016-01-06 17:02:32',	'',	0),
(1381,	'FillySubmenu',	'	classes/submenushow.php?menu=fillys',	'de',	'0312',	'2016-01-07 07:02:27',	'',	0),
(1391,	'HilfeSubmenu',	'	classes/submenushow.php?menu=hilfe',	'de',	'0312',	'2016-01-07 17:05:06',	'',	0),
(1401,	'Hilfeindex',	'classes/showtab.php?menu=helpindex',	'de',	'0312',	'2016-01-07 17:08:55',	'',	0),
(1411,	'Fillyart',	'classes/showtab.php?menu=fillyart',	'de',	'0312',	'2016-01-11 07:03:18',	'',	0),
(1421,	'Bildart',	'classes/showtab.php?menu=bildart',	'de',	'0312',	'2016-01-11 07:32:10',	'',	0);

CREATE TABLE `tblmenu_projekt` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldaktiv` varchar(1) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblmenu_projekt` (`fldindex`, `fldbez`, `fldaktiv`) VALUES
(13,	'Joorgportal',	'J');

CREATE TABLE `tblmenu_typ` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblmenu_typ` (`fldIndex`, `fldBez`) VALUES
(3,	'MODUL'),
(13,	'PLUGIN'),
(23,	'WEBLINK'),
(24,	'YIIMODUL');

CREATE TABLE `tblnotiz` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddatum` datetime NOT NULL,
  `fldbez` varchar(500) COLLATE utf8_bin NOT NULL,
  `fldbemerk` varchar(500) COLLATE utf8_bin NOT NULL,
  `fldarchivdat` date NOT NULL,
  `fldstatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldart` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldbenutzer` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldid_gruppe` bigint(20) NOT NULL,
  `fldlink` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldTarget` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldfilename` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldid_status` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblnotiz` (`fldindex`, `flddatum`, `fldbez`, `fldbemerk`, `fldarchivdat`, `fldstatus`, `fldart`, `fldbenutzer`, `fldid_gruppe`, `fldlink`, `fldTarget`, `fldfilename`, `fldid_status`) VALUES
(1,	'2011-09-23 07:55:00',	'Ich brauche Zeit fÃ¼r mich, die habe ich letzte Woche zu wenig bekommen. Dies steht auch in dem Buch. Ich kann bestimmte Sachen nur alleine machen, dass ist nichts gegen Dich, aber ich bin so.',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(3,	'2011-09-23 07:50:00',	'Da ich nicht so spontan bin, habe ich mir jetzt angewÃ¶hnt, alles was zum ZwiegesprÃ¤ch beitragen kann, aufzuschreiben.',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(4,	'2011-09-23 18:05:00',	'Heute wurde angekÃ¼ndigt, dass bei Mauser eine Mitarbeiterzufriedenheitsbefragung durchgefÃ¼hrt wird. Da ich mit vielen Dingen sehr unzufrieden bin, eine gute Gelegenheit dies mitzuteilen.',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(5,	'2011-09-26 22:11:00',	'Finanzberater-Ausdruck nicht ausdrucken, da ich mich jetzt als Versager fÃ¼hle',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(6,	'2011-09-26 22:13:00',	'Zahnschmerzen machen mir zu schaffen',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(7,	'2011-09-26 22:13:00',	'Geburtstagsparty war schÃ¶n. Aber nicht mein Fall.',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(8,	'2011-09-27 07:10:00',	'Finde es gut, dass wir in dem Buch lesen, schade dass wir es nicht schaffen, jeden Abend darin zu lesen. Ich finde es sehr hilfreich.',	'',	'2011-09-27',	'',	'',	'',	0,	'',	'',	'',	0),
(10,	'2011-09-28 08:27:00',	'Habe mich gefreut, dass du mir Ã¼ber deinen Gewinn berichtet hast. (Geldregen)',	'',	'2011-10-04',	'',	'',	'',	0,	'',	'',	'',	0),
(11,	'2011-10-01 11:33:00',	'Ich bin glÃ¼cklich, dass Du Ruth das Geld zurÃ¼ckzahlen willst. Mir war das auch wichtig und wuÃŸte nicht wie es Dir sagen sollte. Deshalb bin ich froh, dass Du es mir selbst gesagt hast.',	'',	'2011-10-04',	'',	'',	'',	0,	'',	'',	'',	0),
(12,	'2011-10-06 08:27:00',	'Ein GesprÃ¤chsabend Ã¼ber WÃ¤sche waschen wÃ¼rde ich mir wÃ¼nschen. Jeder erklÃ¤rt seinen Vorgehensweise. Stichwort: Hose nicht gefunden.',	'',	'2011-10-11',	'',	'',	'',	0,	'',	'',	'',	0),
(13,	'2011-10-08 12:01:00',	'Habe mich Ã¼ber das Giraffenposter geÃ¤rgert. Und bin froh, dass ich meinen Frust erst mal fÃ¼r mich behalten habe.',	'',	'2011-10-11',	'',	'',	'',	0,	'',	'',	'',	0),
(14,	'2011-10-08 13:10:00',	'Ich bin sehr verÃ¤rgert, dass du meiner mehrfachen Bitte nicht nachkommst und meinen Schreibtisch NICHT als ablageplatz nutz. Wie soll ich ordnung schaffen, wenn es immer wieder zu nichte gemacht wird',	'',	'2011-10-11',	'',	'',	'',	0,	'',	'',	'',	0),
(15,	'2011-10-10 07:09:00',	'Das Wochendenende war nicht so schÃ¶n. Ich habe mir geÃ¤rgert, dass die Meinung deiner Mutter wichtiger ist als meine.',	'',	'2011-10-11',	'',	'',	'',	0,	'',	'',	'',	0),
(16,	'2011-10-06 07:12:00',	'Ich finde es gut, dass wir uns schnell versÃ¶hnen kÃ¶nnen.',	'',	'2011-10-11',	'',	'',	'',	0,	'',	'',	'',	0),
(17,	'2011-10-14 07:58:00',	'Bin frustriert Ã¼ber das letzte ZweigesprÃ¤ch, es war unfair, weil Christiane sich nicht an die Regeln gehalten hat und es einfach ausdehnen wollte!',	'',	'2011-10-19',	'',	'',	'',	0,	'',	'',	'',	0),
(18,	'2011-10-14 07:10:00',	'ich habe mich sehr gefreut dass Chris mich gefragt hat, wie ich mir das WE wÃ¼nsche. Das hat mir ein gutes GefÃ¼hl gegeben.',	'',	'2011-10-19',	'',	'',	'',	0,	'',	'',	'',	0),
(19,	'2011-10-16 07:11:00',	'Ich fand es sehr schade dass ich sonntagabend nichts mehr gemacht habe, aber ich war sehr mÃ¼de. Trotzdem habe ich mich gefreut das Chris dran gedacht hat und selbst schon was fÃ¼r sich machen wollte ',	'',	'2011-10-19',	'',	'',	'',	0,	'',	'',	'',	0),
(20,	'2011-10-17 07:12:00',	'Ich fand es sehr stressig dass wir am Montag verschlafen haben, zumal ich noch die Abrechnung laufen hatte die ich montag morgen noch schnell fertig machen wollte, bevor die Kollegen kommen.',	'',	'2011-10-19',	'',	'',	'',	0,	'',	'',	'',	0),
(21,	'2011-10-17 18:17:00',	'Mauser Mitarbeiterzufriedenheitsabfrage wurde durchgefÃ¼hrt, war aber sehr unbefriedigend. Man konnte nur multiple-choice antworten geben, zufrieden nicht zufrieden, nur am schluss konnte man noch kur',	'',	'2011-10-19',	'',	'',	'',	0,	'',	'',	'',	0),
(22,	'2011-10-18 07:00:00',	'Mich stÃ¶rt, dass wir keinen orgatermin haben. Darum habe ich mir Ã¼berlegt dies am Samstag nach dem FrÃ¼hstÃ¼ck zusammmen mit der Einkaufsliste zu machen. Frieda soll auch dabei sein.',	'',	'2011-10-19',	'',	'',	'',	0,	'',	'',	'',	0),
(23,	'2011-10-20 08:18:00',	'ich wÃ¼rde gerne unseren Urlaub noch dieses Jahr festmachen. Vor Weihnachten. Evtl. sogar im Mai.',	'',	'2011-10-25',	'',	'',	'',	0,	'',	'',	'',	0),
(24,	'2011-10-25 18:09:00',	'ich fand es gut das Du nochmal mit deiner Mutter Ã¼ber das Problem von Ostern gesprochen hast. Mich hatte es etwas gestÃ¶rt, dass ich nicht wusste wo ich dran war',	'',	'2011-10-25',	'',	'',	'',	0,	'',	'',	'',	0),
(25,	'2011-10-25 18:11:00',	'Lerche und Nachteule. Was machen wir da? Wie gehts mir?',	'',	'2011-10-25',	'',	'',	'',	0,	'',	'',	'',	0),
(26,	'2011-10-27 18:05:00',	'absprachen, wie tisch abrÃ¤umen, ohne vorwurfsvollen ton. dafÃ¼r rÃ¤umst du aber den tisch ab...',	'',	'2011-11-01',	'',	'',	'',	0,	'',	'',	'',	0),
(27,	'2011-10-28 13:19:00',	'das drÃ¤ngeln wann wir die Einkaufsliste machen, fand ich als sehr anstrengen. Dinge immer dann tun zu mÃ¼ssen, wann Du es mÃ¶chtes, finde ich sehr anstrengen, statt auf meine BedÃ¼rfnisse zu achten. ',	'',	'2011-11-01',	'',	'',	'',	0,	'',	'',	'',	0),
(28,	'2011-10-28 23:31:00',	'ich war froh das wir das streiten am freitag noch schlichten konnten nur wenn so einem doofen babyfon.\r\nthema lerche u. nachteule',	'',	'2011-11-01',	'',	'',	'',	0,	'',	'',	'',	0),
(29,	'2011-11-03 08:42:00',	'ich habe mich Ã¼ber die ordentliche Voratskammer gefreut.',	'',	'2011-11-25',	'',	'',	'',	0,	'',	'',	'',	0),
(30,	'2011-11-25 07:14:00',	'ich find es nicht schÃ¶n, wenn wir Briefe und Papiere in der KÃ¼che habe, dann kÃ¶nnen daran fettflecken kommen. ich suche nach einer besseren lÃ¶sung',	'',	'2011-12-21',	'',	'',	'',	0,	'',	'',	'',	0),
(31,	'2011-11-26 20:04:00',	'das du dich in meine erziehung einmischt finde ich ganz schlecht. das hat mich sehr geÃ¤rgert. das schadet uns allen. ich finde, es muss mÃ¶glich sein, dass ich mit Frieda etwas mache ohne dass sie uns ausspielen kann.',	'',	'2011-12-21',	'',	'',	'',	0,	'',	'',	'',	0),
(32,	'2011-11-28 18:29:00',	'am meisten hat mich geÃ¤rgert das du mir deine meinung aufzwingen wolltest. Frieda muss kaffee trinken damit sie wach wird. keine andere meinung ist zulÃ¤ssig!',	'',	'2011-12-21',	'',	'',	'',	0,	'',	'',	'',	0),
(33,	'2011-12-01 18:26:00',	'warum belÃ¼gt mich Christiane. Sie hat nachweislich Televoting gemacht und das hat uns fast 200 Euro gekostet!',	'',	'2011-12-21',	'',	'',	'',	0,	'',	'',	'',	0),
(34,	'2012-03-01 07:58:00',	'Fruchtfliegen haben mich gestÃ¶rt und das ich das gefÃ¼hl hatte du unternimmst nichts dagegen.\r\nBiomÃ¼ll wird weiter in der SpÃ¼le stundenlang liegen gelassen.',	'',	'2012-04-17',	'negativ',	'',	'',	0,	'',	'',	'',	0),
(35,	'2012-03-01 07:59:00',	'Das Pflaster im Bad wird nicht an der gleiche Stelle zurÃ¼ckgestellt, so dass ich erst suchen muss und aus verzweiflung kinderpflaster nehme.',	'',	'2012-04-17',	'',	'',	'',	0,	'',	'',	'',	0),
(36,	'2012-03-01 08:00:00',	'Obwohl ich dich gebeten habe mir die Telekom-Rechnung zu geben, muss ich erst lange danach suchen und sie ist schon lÃ¤ngst Ã¼berfÃ¤llig und kosten uns hohe MahngebÃ¼hren.',	'',	'2012-04-17',	'',	'',	'',	0,	'',	'',	'',	0),
(37,	'2012-03-01 08:01:00',	'Das Kabel vom Kassettenrekorder wird nicht ordentlich auf den Boden gelegt, so dass ich nicht mehr vernÃ¼nftig ins Kinderzimmer komme.',	'',	'2012-04-17',	'',	'',	'',	0,	'',	'',	'',	0),
(38,	'2012-03-01 08:02:00',	'ich werde mit den Worten begrÃ¼ÃŸt \"Frieda, aber jetzt nicht wach werden\". oh Schreck, der Papa ist da. Das hat mich sehr wÃ¼tend gemacht.',	'',	'2012-04-17',	'',	'',	'',	0,	'',	'',	'',	0),
(39,	'2012-03-01 07:58:00',	'Du rÃ¤umst regelmÃ¤ssig die SpÃ¼lmaschine ein u. aus.',	'',	'2012-04-17',	'positiv',	'',	'',	0,	'',	'',	'',	0),
(40,	'2012-03-01 07:59:00',	'Du wÃ¤scht und bÃ¼gelst fleissig meine WÃ¤sche',	'',	'2012-04-17',	'positiv',	'',	'',	0,	'',	'',	'',	0),
(333,	'2013-08-30 00:00:00',	'Wahlomat',	'',	'0000-00-00',	'',	'',	'',	143,	'http://www.wahl-o-mat.de/bundestagswahl2013/main_app.php',	'_blank',	'',	0),
(343,	'2013-08-30 00:00:00',	'Abgeordnetencheck',	'',	'0000-00-00',	'',	'',	'',	143,	'http://kandidatencheck.abgeordnetenwatch.de/',	'_blank',	'',	0),
(344,	'2014-01-02 00:00:00',	'Schriften der Welt',	'',	'0000-00-00',	'',	'',	'',	144,	'http://de.wikipedia.org/wiki/Datei:WritingSystemsOfTheWorld-de.png',	'_blank',	'',	0),
(354,	'2014-04-29 00:00:00',	'Planung Geburtagsfeier',	'',	'0000-00-00',	'',	'',	'',	154,	'http://192.168.0.104/daten/doc/Geburtstagsfeierplanung.html',	'',	'',	0),
(355,	'2015-08-20 00:00:00',	'x2go server',	'',	'0000-00-00',	'',	'',	'',	156,	'http://ubuntuhandbook.org/index.php/2015/01/remotely-access-graphical-desktop-of-ubuntu-14-04-server/',	'_blank',	'',	0),
(356,	'2015-08-20 00:00:00',	'Joomla Sprache installieren',	'',	'0000-00-00',	'',	'',	'',	157,	'http://go-lux.de/go-lux-stellt-sich-vor/webtec/41-joomla-3x-mehrsprachig',	'_blank',	'',	0),
(357,	'2015-08-26 00:00:00',	'Joomla Sprache installiert',	'',	'0000-00-00',	'',	'',	'',	158,	'',	'',	'',	0),
(358,	'2015-10-09 00:00:00',	'Aufgabenliste verteilen',	'Aufgabenplan nochmal abstimmen',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	3),
(359,	'2015-10-09 00:00:00',	'Urlaubsaktivitäten planen',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	24),
(360,	'2015-10-09 00:00:00',	'Eheseminar klären',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	2),
(361,	'2015-10-09 00:00:00',	'Mein Sparbuch als vermisst erklären',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	4),
(362,	'2015-10-19 00:00:00',	'Unterstützung für Joorgportal',	'Ich bitte um mehr Unterstützung beim Joorgportal. Was ist gut, was kann verbessert werden.',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	3),
(363,	'2015-10-31 00:00:00',	'Nach Kamen fahren',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	2),
(364,	'2015-10-31 00:00:00',	'joorgportal am raspberry pi zeigen (geschenke eintragen zeigen / Wunschliste)',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	2),
(365,	'2015-10-31 00:00:00',	'adventskalender basteln',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	2),
(366,	'2015-10-31 00:00:00',	'ordnung wie können wir das gemeinsam hinkriegen',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	2),
(367,	'2015-10-31 00:00:00',	'dienstplan christiane im kalender',	'',	'0000-00-00',	'',	'',	'',	159,	'',	'',	'',	2);

CREATE TABLE `tblorte` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldKurz` varchar(30) CHARACTER SET latin1 NOT NULL,
  `fldBez` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fldo01typ` text CHARACTER SET latin1 NOT NULL,
  `fldo01pos` int(11) NOT NULL,
  `fldo01parent` bigint(20) NOT NULL,
  `fldzimmer` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldetage` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldsort` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldmoebel` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldstatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldproz` int(11) NOT NULL DEFAULT '0',
  `fldind_zimmer` bigint(20) NOT NULL,
  `fldind_moebel` bigint(20) NOT NULL,
  `fldbildid` bigint(20) NOT NULL,
  `fldnummer` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldmaxanz` int(11) NOT NULL,
  `fldid_etagen` bigint(20) NOT NULL,
  `fldid_benutzer` bigint(20) NOT NULL,
  `fldprior` int(11) NOT NULL,
  `fldid_status` bigint(20) NOT NULL,
  `fldbemerk` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblorte` (`fldIndex`, `fldKurz`, `fldBez`, `fldo01typ`, `fldo01pos`, `fldo01parent`, `fldzimmer`, `fldetage`, `fldsort`, `fldmoebel`, `fldstatus`, `fldproz`, `fldind_zimmer`, `fldind_moebel`, `fldbildid`, `fldnummer`, `fldmaxanz`, `fldid_etagen`, `fldid_benutzer`, `fldprior`, `fldid_status`, `fldbemerk`) VALUES
(73,	'',	'Garage',	'ZIMMER',	0,	0,	'Garage',	'0.EG',	'002',	'',	'',	0,	0,	0,	0,	'R01',	0,	13,	1,	4,	2,	''),
(46,	'',	'Weinkeller',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.UG',	'101',	'',	'',	0,	0,	0,	0,	'R02',	2,	3,	2,	0,	2,	''),
(48,	'',	'Tresorkeller',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.UG',	'103',	'',	'',	0,	0,	0,	0,	'R04',	0,	3,	1,	3,	2,	''),
(49,	'',	'Stromkeller',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.UG',	'104',	'',	'',	0,	0,	0,	0,	'R05',	0,	3,	1,	3,	2,	''),
(23,	'',	'Vorkeller',	'ZIMMER',	0,	0,	'Vorkeller',	'0.EG',	'202',	'',	'',	0,	0,	0,	0,	'R07',	0,	13,	1,	4,	2,	''),
(31,	'',	'Arbeitszimmer',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.ZG',	'301',	'',	'',	0,	0,	0,	0,	'R08',	11,	23,	1,	5,	2,	''),
(12,	'',	'Vorratskammer',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.ZG',	'302',	'',	'',	0,	0,	0,	0,	'R09',	0,	23,	1,	4,	7,	''),
(50,	'',	'Wohnflur',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.OG',	'401',	'',	'',	0,	0,	0,	0,	'R10',	2,	23,	1,	2,	7,	'Verant. Christiane'),
(19,	'',	'Küche',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.OG',	'403',	'',	'',	0,	0,	0,	0,	'R12',	0,	23,	2,	1,	7,	'Verant. Christiane'),
(52,	'',	'Esszimmer',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.OG',	'404',	'',	'',	0,	0,	0,	0,	'R13',	6,	23,	1,	0,	2,	'Verant. Christiane'),
(39,	'',	'Abstellkammer',	'ZIMMER',	0,	0,	'Vorratskammer',	'2.ZG',	'502',	'',	'',	0,	0,	0,	0,	'R16',	0,	33,	1,	4,	2,	''),
(83,	'',	'Oberer Flur',	'ZIMMER',	0,	0,	'Oberer Flur',	'2.OG',	'604',	'',	'',	0,	0,	0,	0,	'R20',	0,	33,	1,	4,	2,	''),
(63,	'',	'Dachboden',	'ZIMMER',	0,	0,	'Dachboden',	'3.DG',	'701',	'',	'',	0,	0,	0,	0,	'R21',	1,	43,	2,	0,	2,	''),
(47,	'',	'Waschkeller',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.UG',	'102',	'',	'',	0,	0,	0,	0,	'R03',	0,	3,	2,	0,	2,	''),
(41,	'',	'Hausflur',	'ZIMMER',	0,	0,	'Hausflur',	'0.EG',	'201',	'',	'',	0,	0,	0,	0,	'R06',	0,	13,	2,	0,	2,	''),
(51,	'',	'Badezimmer unten',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.OG',	'402',	'',	'',	0,	0,	0,	0,	'R11',	0,	23,	2,	0,	0,	''),
(53,	'',	'Wohnzimmer',	'ZIMMER',	0,	0,	'Vorratskammer',	'1.OG',	'405',	'',	'',	0,	0,	0,	0,	'R14',	0,	23,	2,	2,	2,	''),
(54,	'',	'Terasse',	'ZIMMER',	0,	0,	'Vorratskammer',	'2.ZG',	'501',	'',	'',	0,	0,	0,	0,	'R15',	0,	33,	2,	0,	0,	''),
(55,	'',	'Badezimmer oben',	'ZIMMER',	0,	0,	'Vorratskammer',	'2.OG',	'601',	'',	'',	0,	0,	0,	0,	'R17',	0,	33,	2,	0,	0,	''),
(56,	'',	'Schlafzimmer',	'ZIMMER',	0,	0,	'Vorratskammer',	'2.OG',	'602',	'',	'',	0,	0,	0,	0,	'R18',	0,	33,	2,	5,	7,	''),
(21,	'',	'Kinderzimmer',	'ZIMMER',	0,	0,	'Vorratskammer',	'2.OG',	'603',	'',	'',	0,	0,	0,	0,	'R19',	0,	33,	3,	0,	0,	''),
(36,	'',	'Schreibtisch',	'MOEBEL',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	31,	0,	0,	'S09',	0,	0,	0,	0,	0,	''),
(713,	'',	'Wandregal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	31,	0,	0,	'S10',	0,	0,	0,	0,	0,	''),
(723,	'',	'Decke',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	31,	0,	0,	'S11',	0,	0,	0,	0,	0,	''),
(233,	'',	'Decke',	'MOEBEL',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	51,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(243,	'',	'Computertisch',	'MOEBEL',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	31,	0,	0,	'S12',	0,	0,	0,	0,	0,	''),
(253,	'',	'Arbeitsplatte',	'MOEBEL',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	31,	0,	0,	'S13',	0,	0,	0,	0,	0,	''),
(343,	'',	'Kommode links',	'MOEBEL',	0,	0,	'Wohnzimmer',	'',	'',	'',	'',	0,	53,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(353,	'',	'Kommode rechts',	'MOEBEL',	0,	0,	'Wohnzimmer',	'',	'',	'',	'',	0,	53,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(363,	'',	'Decke',	'MOEBEL',	0,	0,	'Badezimmer unten',	'',	'',	'',	'',	0,	21,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(383,	'',	'Spiegelschrank',	'MOEBEL',	0,	0,	'Badezimmer unten',	'',	'',	'',	'',	0,	51,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(443,	'',	'Wickeltisch',	'MOEBEL',	0,	0,	'Kinderzimmer',	'',	'',	'',	'',	0,	21,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(513,	'',	'Regalschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	41,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(523,	'',	'Schuhschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	41,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(743,	'',	'Schuhregal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	41,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(753,	'',	'Boden',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	41,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(763,	'',	'SchirmstÃ¤nder',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	41,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(813,	'',	'schwarzes Regal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	31,	0,	0,	'S08',	0,	0,	0,	0,	0,	''),
(1783,	'',	'DVD-Boxen',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S07',	0,	0,	0,	0,	0,	''),
(1253,	'',	'Boden',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	46,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1153,	'',	'Boden',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	73,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(44,	'',	'Boden (R08/S01)',	'MOEBEL',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	31,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1043,	'',	'Boden (R12/S01)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	19,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1103,	'',	'Boden (R09/S01)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	12,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1263,	'',	'Boden',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1363,	'',	'Boden',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	49,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1403,	'',	'Boden',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	23,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1733,	'',	'Erker',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1813,	'',	'Wandregal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	50,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(93,	'',	'Wand',	'MOEBEL',	0,	0,	'Vorkeller',	'',	'',	'',	'',	0,	23,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(263,	'',	'Einbauschrank (R12/S02)',	'MOEBEL',	0,	0,	'KÃ¼che',	'',	'',	'',	'',	0,	19,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(293,	'',	'Regal01 (R08/S02)',	'MOEBEL',	0,	0,	'Vorkeller',	'',	'',	'',	'',	0,	31,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(563,	'',	'Regal01',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	12,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(1273,	'',	'Wandregal links',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(1373,	'',	'Schacht',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	49,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(1743,	'',	'Vitrine',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(783,	'',	'Geschirrschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(553,	'',	'Regal001',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	23,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(11,	'',	'Kühlschrank',	'MOEBEL',	0,	0,	'KÃ¼che',	'',	'001',	'',	'',	0,	19,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(303,	'',	'Regal02 (R08/S03)',	'MOEBEL',	0,	0,	'Vorkeller',	'',	'',	'',	'',	0,	31,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(1193,	'',	'Wandregal (R09/S03)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	12,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(1283,	'',	'Kühlschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(1293,	'',	'Regal 02',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(1383,	'',	'Schrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	49,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(573,	'',	'Regal002',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	23,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(43,	'',	'Gefrierschrank',	'MOEBEL',	0,	0,	'KÃ¼che',	'',	'',	'',	'',	0,	19,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(313,	'',	'Regal03 (R08/S04)',	'MOEBEL',	0,	0,	'Vorkeller',	'',	'',	'',	'',	0,	31,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(1203,	'',	'Fensterbank (R09/S04)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	12,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(1303,	'',	'Regal 03',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(1393,	'',	'Rollwagen',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	49,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(1753,	'',	'Kommode',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(583,	'',	'Regal003',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	23,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(543,	'',	'Regal04 (R08/S05)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	31,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(1023,	'',	'Wand (R12/S05)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	19,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(1213,	'',	'Wand (R09/S05)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	12,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(1313,	'',	'Schacht',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(1763,	'',	'DVD-Regal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(273,	'',	'Küchenschrank',	'MOEBEL',	0,	0,	'KÃ¼che',	'',	'',	'',	'',	0,	19,	0,	0,	'S06',	0,	0,	0,	0,	0,	''),
(1323,	'',	'Regal 04',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	48,	0,	0,	'S06',	0,	0,	0,	0,	0,	''),
(1773,	'',	'Regal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S06',	0,	0,	0,	0,	0,	''),
(1033,	'',	'Fensterbank (R12/S07)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	19,	0,	0,	'S07',	0,	0,	0,	0,	0,	''),
(1013,	'',	'Wandregal (R12/S08)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	19,	0,	0,	'S08',	0,	0,	0,	0,	0,	''),
(1793,	'',	'Beistelltisch',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	52,	0,	0,	'S08',	0,	0,	0,	0,	0,	''),
(1053,	'',	'Decke (R12/S09)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	19,	0,	0,	'S09',	0,	0,	0,	0,	0,	''),
(1453,	'',	'Fach01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1463,	'',	'Fach02',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1473,	'',	'Fach03',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F03',	0,	0,	0,	0,	0,	''),
(1483,	'',	'Fach04',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F04',	0,	0,	0,	0,	0,	''),
(1493,	'',	'Fach05',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F05',	0,	0,	0,	0,	0,	''),
(1503,	'',	'Fach06',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F06',	0,	0,	0,	0,	0,	''),
(1513,	'',	'Fach07',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	11,	0,	'F07',	0,	0,	0,	0,	0,	''),
(1533,	'',	'Fach01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	19,	43,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1543,	'',	'Fach02',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	43,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1553,	'',	'Fach03',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	43,	0,	'F03',	0,	0,	0,	0,	0,	''),
(1563,	'',	'Fach01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1573,	'',	'Fach02',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1583,	'',	'Fach03',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F03',	0,	0,	0,	0,	0,	''),
(1593,	'',	'Fach04',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F04',	0,	0,	0,	0,	0,	''),
(1603,	'',	'Fach05',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F05',	0,	0,	0,	0,	0,	''),
(1613,	'',	'Fach06',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F06',	0,	0,	0,	0,	0,	''),
(1623,	'',	'Fach07',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F07',	0,	0,	0,	0,	0,	''),
(1633,	'',	'Fach08',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	19,	273,	0,	'F08',	0,	0,	0,	0,	0,	''),
(1643,	'',	'Fach09',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	19,	273,	0,	'F09',	0,	0,	0,	0,	0,	''),
(1423,	'',	'Fach01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	12,	563,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1433,	'',	'Fach02',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	12,	563,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1443,	'',	'Fach03',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	12,	563,	0,	'F03',	0,	0,	0,	0,	0,	''),
(1523,	'',	'Fach04',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	12,	563,	0,	'F04',	0,	0,	0,	0,	0,	''),
(1653,	'',	'Fach01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1663,	'',	'Fach02',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1673,	'',	'Schublade01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F03',	0,	0,	0,	0,	0,	''),
(1683,	'',	'Schublade02',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F04',	0,	0,	0,	0,	0,	''),
(1693,	'',	'Arbeitsplatte (R13/S03/F05)',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	52,	783,	0,	'F05',	0,	0,	0,	0,	0,	''),
(1703,	'',	'Fach06',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F06',	0,	0,	0,	0,	0,	''),
(1713,	'',	'Fach07',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F07',	0,	0,	0,	0,	0,	''),
(1723,	'',	'Oben',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	52,	783,	0,	'F08',	0,	0,	0,	0,	0,	''),
(1413,	'',	'Boden',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	12,	1103,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1333,	'',	'Unter Lichtschalter',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	48,	1263,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1343,	'',	'Links neben Regal',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	48,	1263,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1353,	'',	'Hinter TÃ¼r',	'FACH',	0,	0,	'',	'',	'',	'',	'',	10,	48,	1263,	0,	'F03',	0,	0,	0,	0,	0,	''),
(1803,	'',	'Reihe01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	52,	1783,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1833,	'',	'Fach01',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	50,	1813,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1834,	'',	'Regal05',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	31,	0,	0,	'S06',	0,	0,	0,	0,	0,	''),
(1835,	'',	'Regal006',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	31,	0,	0,	'S07',	0,	0,	0,	0,	0,	''),
(473,	'',	'(ohne)',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(3,	'ALDI',	'Aldi',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1243,	'',	'Amazon',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1173,	'',	'Apotheke',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(823,	'',	'ATU',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(24,	'BAUMARKT',	'Baumarkt',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(493,	'',	'cafe',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(42,	'',	'Deiters',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(6,	'DM',	'DM',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1123,	'',	'Ernstings_Family',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(423,	'',	'Kaufhof',	'FREMD',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(5,	'KAUFLAND',	'Kaufland',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(463,	'',	'Kaufland Ehrenfeld',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1143,	'',	'McPaper',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(7,	'PENNY',	'Penny',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1133,	'',	'Post_Chorweiler',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(4,	'REAL',	'REAL',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(413,	'',	'Reformhaus',	'FREMD',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(403,	'',	'REWE',	'FREMD',	0,	0,	'Arbeitszimmer',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(483,	'',	'rewe',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1113,	'',	'Rewe_Bruehl',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(8,	'SCHLECKER',	'Schlecker',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(833,	'',	'zuhause',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1836,	'',	'Grosses Bett',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1837,	'',	'Wandregal',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S02',	0,	0,	0,	0,	0,	''),
(1838,	'',	'Kleiderschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S03',	0,	0,	0,	0,	0,	''),
(1839,	'',	'Bueroschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S04',	0,	0,	0,	0,	0,	''),
(1840,	'',	'Grosser Kleiderschrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S05',	0,	0,	0,	0,	0,	''),
(1841,	'',	'Kommode',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S06',	0,	0,	0,	0,	0,	''),
(1842,	'',	'Schreibtisch',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S07',	0,	0,	0,	0,	0,	''),
(1843,	'',	'Wuerfelregale',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S08',	0,	0,	0,	0,	0,	''),
(1844,	'',	'Buecherregale',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S09',	0,	0,	0,	0,	0,	''),
(1845,	'',	'Einfacher Schrank',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S10',	0,	0,	0,	0,	0,	''),
(1846,	'',	'Nachtkommode',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S11',	0,	0,	0,	0,	0,	''),
(1847,	'',	'Nachttisch',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S12',	0,	0,	0,	0,	0,	''),
(1848,	'',	'Auf dem Bett',	'FACH',	0,	0,	'',	'',	'',	'',	'',	100,	56,	1836,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1849,	'',	'Unterm Bett',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	56,	1836,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1850,	'',	'Boden',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	56,	1838,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1851,	'',	'Kistenstapel',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	56,	0,	0,	'S13',	0,	0,	0,	0,	0,	''),
(1852,	'',	'Alnatura',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1853,	'',	'Schublade (R12/S02/F02)',	'FACH',	0,	0,	'',	'',	'',	'',	'',	1,	19,	263,	0,	'F02',	0,	0,	0,	0,	0,	''),
(1854,	'',	'Schublade (R12/S02/F01)',	'FACH',	0,	0,	'',	'',	'',	'',	'',	1,	19,	263,	0,	'F01',	0,	0,	0,	0,	0,	''),
(1855,	'',	'Kiosk',	'FREMD',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1856,	'',	'(leer)',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	''),
(1857,	'',	'Regal001',	'MOEBEL',	0,	0,	'',	'',	'',	'',	'',	0,	47,	0,	0,	'S01',	0,	0,	0,	0,	0,	''),
(1858,	'',	'Fach001',	'FACH',	0,	0,	'',	'',	'',	'',	'',	0,	47,	1857,	0,	'F01',	0,	0,	0,	0,	0,	'');

CREATE TABLE `tblorttyp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblorttyp` (`fldindex`, `fldbez`) VALUES
(1,	'ZIMMER'),
(2,	'FREMD'),
(3,	'FACH'),
(4,	'MOEBEL');

CREATE TABLE `tblpoll_umfragen` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldkurz` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldbez` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblprgupdate` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(500) COLLATE utf8_bin NOT NULL,
  `fldVersion` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldStatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldLang` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldModul` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldDatum` date NOT NULL,
  `fldErldatum` date NOT NULL,
  `fldBemerkung` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblprgupdate` (`fldIndex`, `fldBez`, `fldVersion`, `fldStatus`, `fldLang`, `fldModul`, `fldDatum`, `fldErldatum`, `fldBemerkung`) VALUES
(3,	'Sprache per Auswahlbox ermÃ¶glicht',	'0305',	'offen',	'de',	'Home',	'2013-03-04',	'0000-00-00',	''),
(13,	'Erledigungsdatum hinzugefÃ¼gt',	'0305',	'erledigt',	'de',	'Erledigungen',	'2013-03-04',	'2013-04-25',	''),
(23,	'logdateien durch config-Eintrag langshort nach sprachen unterschieden',	'0305',	'erledigt',	'de',	'(keins)',	'2013-03-04',	'2013-05-03',	''),
(33,	'Datumseingabe durch datepicker verbessert',	'0305',	'erledigt',	'de',	'',	'2013-03-04',	'2013-03-04',	''),
(43,	'showtab.inc.php sprachabhÃ¤ngig machen',	'0305',	'erledigt',	'de',	'',	'2013-03-04',	'2013-05-02',	'durch eintrag \"name\" aus translate-func Ã¼bersetzt'),
(53,	'Programmupdate-Modul eingebaut',	'0305',	'erledigt',	'de',	'Programmupdate',	'2013-03-04',	'2013-03-04',	''),
(63,	'update funktion in home einbauen',	'0305',	'offen',	'de',	'Home',	'2013-03-26',	'0000-00-00',	''),
(73,	'PDF-Datei anzeigen',	'0305',	'erledigt',	'de',	'Briefverkehr',	'2013-04-25',	'2013-04-25',	''),
(83,	'Dauerauftrag einbauen',	'0305',	'erledigt',	'de',	'Erledigungen',	'2013-04-25',	'2013-05-03',	''),
(93,	'Zimmer einbauen',	'0305',	'erledigt',	'de',	'Docman',	'2013-04-25',	'2013-05-03',	''),
(103,	'Essensplan einbauen',	'0305',	'offen',	'de',	'Essensplan',	'2013-04-25',	'0000-00-00',	''),
(113,	'Monatsbericht mit Oberkonten',	'0305',	'erledigt',	'de',	'Konto',	'2013-04-25',	'2013-05-07',	''),
(123,	'Internetlink einbauen',	'0305',	'erledigt',	'de',	'Geschenkeliste',	'2013-04-25',	'2013-05-03',	''),
(153,	'Schemasync der Datenbank',	'0305',	'offen',	'de',	'',	'2013-05-13',	'0000-00-00',	''),
(143,	'Remotesync des Programmes',	'0305',	'offen',	'de',	'',	'2013-05-13',	'0000-00-00',	''),
(163,	'Rezepte verlinken',	'0305',	'offen',	'',	'Essensplan',	'2013-05-21',	'0000-00-00',	''),
(173,	'aktuelles Datum vorbelegen kÃ¶nnen',	'0305',	'offen',	'',	'',	'2013-05-21',	'0000-00-00',	'');

CREATE TABLE `tblprior` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldprior` int(11) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblprior` (`fldindex`, `fldprior`) VALUES
(54,	0),
(64,	1),
(74,	2),
(84,	3),
(94,	4),
(104,	5);

CREATE TABLE `tblpublictyp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblpublictyp` (`fldindex`, `fldbez`) VALUES
(3,	'PUBLIC'),
(13,	'PRIVATE'),
(23,	'HOSTLIST');

CREATE TABLE `tblrechdat` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldLink` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldBemerkung` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblrechdat` (`fldIndex`, `fldBez`, `fldLink`, `fldBemerkung`) VALUES
(43,	'2013-01-23',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-01-23.pdf',	'Flinkster'),
(53,	'2013-02-20',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-02-20.pdf',	'Flinkster'),
(63,	'2013-03-20',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-03-20.pdf',	'Flinkster'),
(73,	'2013-04-17',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-04-17.pdf',	'Flinkster'),
(83,	'2013-05-15',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-05-15.pdf',	'Flinkster'),
(93,	'2013-06-12',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-06-12.pdf',	'Flinkster'),
(33,	'2013-07-10',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-07-10.pdf',	'Flinkster'),
(113,	'2013-08-21',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-08-21.pdf',	'Flinkster'),
(123,	'2013-09-25',	'http://localhost/wp/joorgportal30/sites/pdf/Rechnungen/Flinkster/Rechnung2013-09-25.pdf',	'Flinkster'),
(133,	'2013-11-20',	'',	'Flinkster'),
(143,	'2014-01-22',	'',	'Flinkster'),
(153,	'2014-04-23',	'',	'Flinkster'),
(163,	'2014-06-04',	'',	'Flinkster'),
(173,	'2014-07-02',	'',	'Flinkster'),
(174,	'2014-07-30',	'http://localhost/daten/Rechnungen/Flinkster/2014/Rechnung2014-07-30.pdf',	'Flinkster'),
(175,	'2014-10-22',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2014/Rechnung2014-10-22.pdf',	'Flinkster');

CREATE TABLE `tblrechnungen` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  `fldfilename` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldid_adr` bigint(20) NOT NULL,
  `fldbetrag` decimal(10,2) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblrechnungen` (`fldindex`, `fldbez`, `flddatum`, `fldfilename`, `fldid_adr`, `fldbetrag`) VALUES
(2,	'REWE',	'2014-08-25',	'http://localhost/daten/Bilder/IMG_20140825_205700.jpg',	972,	10.57),
(3,	'Rechnung2014-10-22',	'2014-10-22',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2014/Rechnung2014-10-22.pdf',	1011,	233.71),
(4,	'Rechnung2015-01-14',	'2015-01-14',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2015/Rechnung2015-01-14.pdf',	1011,	194.56),
(5,	'Rechnung2015-02-11',	'2015-02-11',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2015/Rechnung2015-02-11.pdf',	1011,	201.14),
(6,	'Rechnung2015-03-11',	'2015-03-11',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2015/Rechnung2015-03-11.pdf',	1011,	270.26),
(7,	'Rechnung2015-04-08',	'2015-04-08',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2015/Rechnung2015-04-08.pdf',	1011,	241.01),
(8,	'Rechnung2015-05-06',	'2015-05-06',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2015/Rechnung2015-05-06.pdf',	1011,	251.64),
(9,	'Rechnung2015-09-23',	'2015-09-23',	'http://localhost/daten/pdf/Rechnungen/Flinkster/2015/Rechnung2015-09-23.pdf',	1011,	168.87),
(10,	'Rechnung2015-01-10',	'2015-01-10',	'http://localhost/daten/pdf/Rechnungen/Otto/2015/Rechnung2015-01-10.pdf',	1016,	369.94);

CREATE TABLE `tblreisegrp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblreports` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldkurz` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblreports` (`fldindex`, `fldbez`, `fldkurz`) VALUES
(1,	'Monatsbericht',	'MONRPT'),
(2,	'Anwenderreport',	'USRRPT');

CREATE TABLE `tblresyncalltyp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblresyncalltyp` (`fldindex`, `fldbez`) VALUES
(3,	'ALL'),
(13,	'ACT');

CREATE TABLE `tblrezepte` (
  `fldIndex` int(11) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) NOT NULL,
  `fldLink` varchar(250) NOT NULL,
  `fldid_status` bigint(20) NOT NULL,
  `fldfilename` varchar(250) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblrezepte` (`fldIndex`, `fldBez`, `fldLink`, `fldid_status`, `fldfilename`) VALUES
(1,	'Falafel',	'',	0,	'http://localhost/daten/pdf/Rezepte/vegane_falafel.pdf');

CREATE TABLE `tblsel` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblstamm_typ` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldTyp` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblstatus` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldtyp` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblstatus` (`fldindex`, `fldbez`, `fldtyp`) VALUES
(1,	'(ohne)',	''),
(2,	'offen',	''),
(3,	'erledigt',	''),
(4,	'zurueckges',	''),
(6,	'klaeren',	''),
(7,	'in Arbeit',	''),
(8,	'spaeter',	''),
(9,	'Aufgabe',	''),
(14,	'zugesagt',	''),
(24,	'OK',	''),
(25,	'geantwortet',	''),
(26,	'Retour',	''),
(27,	'Neu',	'');

CREATE TABLE `tblstat_grp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbezgrp` varchar(250) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblstat_grp` (`fldindex`, `fldbezgrp`) VALUES
(3,	'Erledigungen'),
(13,	'Prgupdate'),
(33,	'Stundenplan'),
(43,	'Zimmer'),
(53,	'Adressliste'),
(54,	'(ohne)');

CREATE TABLE `tblstat_zuord` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_grp` bigint(20) NOT NULL,
  `fldid_status` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblstat_zuord` (`fldindex`, `fldid_grp`, `fldid_status`) VALUES
(1,	53,	2),
(2,	53,	25),
(3,	43,	7),
(4,	53,	26),
(5,	3,	2),
(6,	3,	4),
(8,	53,	27),
(11,	3,	7);

CREATE TABLE `tblstdplan` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_std` bigint(20) NOT NULL,
  `fldid_wotag` bigint(20) NOT NULL,
  `fldbez` varchar(250) NOT NULL,
  `fldid_user` bigint(20) NOT NULL,
  `fldnr` varchar(3) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblstdplan` (`fldindex`, `fldid_std`, `fldid_wotag`, `fldbez`, `fldid_user`, `fldnr`) VALUES
(42,	2,	12,	'Physik',	1,	''),
(43,	13,	22,	'Tanzen',	3,	'999'),
(63,	33,	12,	'Basis-Unterricht',	3,	'001'),
(73,	33,	22,	'Basis/Unterricht',	3,	'002'),
(83,	33,	32,	'Unterricht',	3,	'004'),
(103,	33,	52,	'Unterricht',	3,	'006'),
(104,	43,	12,	'Basis-Unterricht',	3,	'002'),
(105,	53,	12,	'Basis-Unterricht',	3,	'003'),
(106,	33,	22,	'Basis-Unterricht',	3,	'004'),
(107,	43,	22,	'Basis-Unterricht (F&oumlrderunterricht)',	3,	'005'),
(108,	53,	22,	'Basis-Unterricht',	3,	'006'),
(109,	33,	32,	'Basis-Unterricht',	3,	'007'),
(110,	43,	32,	'Basis-Unterricht',	3,	'008'),
(111,	53,	32,	'Basis-Unterricht',	3,	'009'),
(112,	33,	42,	'Sport',	3,	'010'),
(113,	43,	42,	'Sport',	3,	'011'),
(114,	53,	42,	'Basis-Unterricht',	3,	'012'),
(115,	43,	52,	'Basis-Unterricht',	3,	'013'),
(116,	53,	52,	'Basis-Unterricht',	3,	'014'),
(117,	55,	12,	'Musik',	3,	''),
(118,	55,	22,	'Basis-Unterricht',	3,	''),
(119,	57,	22,	'Englisch',	3,	''),
(120,	55,	32,	'Basis-Unterricht',	3,	''),
(121,	57,	32,	'Englisch',	3,	''),
(122,	55,	42,	'Basis-Unterricht',	3,	''),
(123,	55,	52,	'Basis-Unterricht',	3,	''),
(124,	57,	52,	'Religion',	3,	'');

CREATE TABLE `tblstdwotag` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldspalte` varchar(5) NOT NULL,
  `fldbez` varchar(250) NOT NULL,
  `fldfarbe` varchar(8) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblstdwotag` (`fldindex`, `fldspalte`, `fldbez`, `fldfarbe`) VALUES
(2,	'0',	'Uhrzeit',	''),
(12,	'1',	'Montag',	'#aaaaff'),
(22,	'2',	'Dienstag',	'#aaaaff'),
(32,	'3',	'Mittwoch',	'#aaaaff'),
(42,	'4',	'Donnerstag',	'#aaaaff'),
(52,	'5',	'Freitag',	'#aaaaff');

CREATE TABLE `tblstdzeit` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblstdzeit` (`fldindex`, `fldbez`) VALUES
(13,	'16:45 - 17:30'),
(23,	'15:30 - 16:15'),
(33,	'08:15 - 09:00'),
(43,	'09:15 - 10:00'),
(53,	'10:15 - 11:00'),
(55,	'11:00 - 11:45'),
(56,	'11:45 - 12:00'),
(57,	'12:00 - 12:45'),
(58,	'12:45 - 13:30');

CREATE TABLE `tblsynccomp` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldHost` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldIPAddr` varchar(15) COLLATE utf8_bin NOT NULL,
  `fldSyncart` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldaktiv` varchar(1) COLLATE utf8_bin NOT NULL,
  `flddbname` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldusername` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldpassword` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldcloud` varchar(1) COLLATE utf8_bin NOT NULL,
  `fldlocal` varchar(1) COLLATE utf8_bin NOT NULL,
  `fldremotepfad` varchar(250) COLLATE utf8_bin NOT NULL,
  `flddbtyp` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblsynccomp` (`fldIndex`, `fldHost`, `fldIPAddr`, `fldSyncart`, `fldaktiv`, `flddbname`, `fldusername`, `fldpassword`, `fldcloud`, `fldlocal`, `fldremotepfad`, `flddbtyp`) VALUES
(34,	'horst-laptop',	'192.168.0.133',	'auto',	'J',	'dbWebportal',	'',	'',	'N',	'N',	'',	''),
(44,	'horst',	'192.168.0.104',	'auto',	'J',	'dbWebportal',	'root',	'mysql',	'N',	'N',	'',	''),
(54,	'horald-joorgportal',	'192.168.0.133',	'auto',	'J',	'dbjoorgportal',	'root',	'mysql',	'N',	'N',	'',	''),
(55,	'dbjoorgportal312',	'localhost',	'auto',	'J',	'dbjoorgportal312',	'root',	'mysql',	'N',	'N',	'',	''),
(56,	'dbsqlite',	'localhost',	'auto',	'J',	'joorgsqlite.db',	'',	'',	'N',	'N',	'',	'sqlite');

CREATE TABLE `tblsynctyp` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblsynctyp` (`fldIndex`, `fldBez`) VALUES
(3,	'(ohne)'),
(13,	'NEW'),
(23,	'OK');

CREATE TABLE `tbltables` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbltables` (`fldindex`, `fldbez`) VALUES
(1,	'tblktosal');

CREATE TABLE `tbltabletten` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldvondatum` date NOT NULL,
  `fldanztage` int(11) NOT NULL,
  `fldbisdatum` date NOT NULL,
  `fldAnztab` int(11) NOT NULL,
  `fldDosierung` decimal(10,2) NOT NULL,
  `flddosmorgens` decimal(10,2) NOT NULL,
  `flddosmittags` decimal(10,2) NOT NULL,
  `flddosabends` decimal(10,2) NOT NULL,
  `flddosnachts` decimal(10,2) NOT NULL,
  `fldid_user` bigint(20) NOT NULL,
  `fldme` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbltabletten` (`fldindex`, `fldbez`, `fldvondatum`, `fldanztage`, `fldbisdatum`, `fldAnztab`, `fldDosierung`, `flddosmorgens`, `flddosmittags`, `flddosabends`, `flddosnachts`, `fldid_user`, `fldme`) VALUES
(3,	'Ramipril 2,5 mg',	'2014-04-08',	0,	'0000-00-00',	130,	2.00,	1.00,	0.00,	1.00,	0.00,	1,	''),
(13,	'Metoprololsuccinat 47,5 mg',	'2015-03-02',	0,	'0000-00-00',	74,	0.50,	0.50,	0.00,	0.00,	0.00,	1,	''),
(14,	'Novaminsulfon - 1A 500mg pro ml',	'0000-00-00',	0,	'0000-00-00',	0,	90.00,	30.00,	30.00,	30.00,	0.00,	50008,	'Tropfen'),
(15,	'Tilidin AL comp. 50mg / 4mg',	'0000-00-00',	0,	'0000-00-00',	0,	2.00,	1.00,	0.00,	1.00,	0.00,	50008,	'Tab.'),
(16,	'Dolormin 400mg Ibuprofen',	'0000-00-00',	0,	'0000-00-00',	0,	0.00,	0.00,	0.00,	0.00,	0.00,	50008,	'bei Bedarf');

CREATE TABLE `tbltc_gepaeck` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbltc_grund` (
  `fldIndex` int(11) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbltc_grund` (`fldIndex`, `fldBez`) VALUES
(3,	'Schulung'),
(13,	'Urlaub'),
(23,	'50. Geburtstag');

CREATE TABLE `tbltc_kosten` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_reise` bigint(20) NOT NULL,
  `fldBez` varchar(250) NOT NULL,
  `fldPreis` decimal(18,2) NOT NULL,
  `fldLink` varchar(250) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tbltc_liste` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldVondatum` date NOT NULL,
  `fldBisdatum` date NOT NULL,
  `fldid_grund` bigint(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbltc_liste` (`fldIndex`, `fldBez`, `fldVondatum`, `fldBisdatum`, `fldid_grund`) VALUES
(13,	'Tagesausflug Holland',	'2013-07-20',	'0000-00-00',	13),
(23,	'Pariswochenende',	'2014-04-19',	'0000-00-00',	23),
(24,	'Eifelurlaub',	'2015-07-11',	'2015-07-25',	13);

CREATE TABLE `tbltc_reiseliste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(255) COLLATE utf8_bin NOT NULL,
  `fldgepaeck` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldreisegrp` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldstatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldid_benutzer` bigint(20) NOT NULL,
  `fldid_gepaeck` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbltc_status` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbltermine_grp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbltermine_grp` (`fldindex`, `fldbez`, `fldfarbe`) VALUES
(3,	'Geburtstag',	'#378006'),
(13,	'Jahresurlaub Horst',	''),
(23,	'Krankheit',	''),
(33,	'Feier',	''),
(43,	'Freizeit',	''),
(53,	'Kita',	''),
(63,	'Müllabfuhr',	''),
(73,	'Feiertag',	'#CD0000'),
(83,	'beweglicher Ferientag',	''),
(84,	'Urlaub Christiane',	'');

CREATE TABLE `tbltermine_liste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldkurz` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldvondatum` date NOT NULL,
  `fldvonuhrzeit` time NOT NULL,
  `fldbisdatum` date NOT NULL,
  `fldbisuhrzeit` time NOT NULL,
  `fldid_terminegrp` bigint(20) NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldid_terminserie` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbltermine_liste` (`fldindex`, `fldbez`, `fldkurz`, `fldvondatum`, `fldvonuhrzeit`, `fldbisdatum`, `fldbisuhrzeit`, `fldid_terminegrp`, `fldfarbe`, `fldid_terminserie`) VALUES
(73,	'Geburtstag Iris Burgmeister',	'Iris',	'2014-01-04',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(83,	'Geburtstag Manfred Losse',	'Manfred',	'2014-01-16',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(93,	'Geburtstag Rachel Gessat',	'Rachel',	'2014-01-19',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(103,	'Geburtstag Sabine  Dreger',	'Sabine',	'2014-01-25',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(113,	'Geburtstag Ruth Krabbe',	'Ruth',	'2014-01-29',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(123,	'Geburtstag Phoebe Grau',	'Phoebe',	'2014-02-26',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(133,	'Geburtstag Dagmar LiÃŸke',	'Dagmar',	'2014-03-04',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(143,	'Geburtstag Orell Schulte',	'Orell',	'2014-03-15',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(153,	'Geburtstag Heinz Meyer',	'Opa Heinz',	'2014-05-05',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(163,	'Geburtstag Horst Meyer',	'Horst',	'2014-05-18',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(173,	'Geburtstag Edgar Meyer',	'Edgar',	'2014-05-24',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(183,	'Geburtstag Brigitte  Schulte',	'Oma Brigitte',	'2014-05-26',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(193,	'Geburtstag Erna Meyer',	'Oma Erna',	'2014-06-11',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(203,	'Geburtstag Ralf Beckers',	'Ralf',	'2014-06-15',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(213,	'Geburtstag Frieda Lina Meyer',	'Frieda',	'2014-07-09',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(223,	'Geburtstag Damaris Dreger',	'Damaris',	'2014-08-01',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(233,	'Geburtstag Sylvia Schulte',	'Sylvia',	'2014-08-30',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(243,	'Geburtstag Antonia Dreger',	'Antonia',	'2014-09-10',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(253,	'Geburtstag Louis Dreger',	'Louis',	'2014-09-14',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(263,	'Geburtstag Christiane Meyer',	'Christiane',	'2014-09-20',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(273,	'Geburtstag Andrea Dahmann',	'Andrea',	'2014-09-30',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(283,	'Geburtstag Gerrit Schulte',	'Gerrit',	'2014-10-23',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(293,	'Geburtstag Hartmut Schulte',	'Opa Hartmut',	'2014-11-21',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(303,	'Geburtstag Angelika Weber',	'Angelika',	'2014-12-01',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(313,	'Geburtstag Miriam Grau',	'Miriam',	'2014-12-11',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(323,	'Geburtstag Sigrid PlÃ¼ckhahn',	'Sigrid',	'2014-12-24',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(343,	'Goldhochzeit meine Eltern',	'',	'2014-01-25',	'00:00:00',	'0000-00-00',	'00:00:00',	33,	'',	0),
(353,	'Urlaub',	'',	'2014-05-19',	'00:00:00',	'0000-00-00',	'00:00:00',	13,	'',	63),
(363,	'AuffÃ¼hrung Kita',	'',	'2014-03-19',	'00:00:00',	'0000-00-00',	'00:00:00',	53,	'',	53),
(373,	'Geburtstag Iris Burgmeister',	'',	'2015-01-04',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(383,	'Geburtstag Manfred Losse',	'',	'2015-01-16',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(393,	'Geburtstag Rachel Gessat',	'',	'2015-01-19',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(403,	'Geburtstag Sabine  Dreger',	'',	'2015-01-25',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(413,	'Geburtstag Ruth Krabbe',	'',	'2015-01-29',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(423,	'Geburtstag Phoebe Grau',	'',	'2015-02-26',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(433,	'Geburtstag Lewin Gessat',	'',	'2015-03-02',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(443,	'Geburtstag Dagmar LiÃŸke',	'',	'2015-03-04',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(453,	'Geburtstag Orell Schulte',	'',	'2015-03-15',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(473,	'Geburtstag Horst Meyer',	'',	'2015-05-18',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(513,	'Geburtstag Ralf Beckers',	'',	'2015-06-15',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(523,	'Geburtstag Frieda Lina Meyer',	'',	'2015-07-09',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(533,	'Geburtstag Damaris Dreger',	'',	'2015-08-01',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(543,	'Geburtstag Sylvia Schulte',	'',	'2015-08-30',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(553,	'Geburtstag Antonia Dreger',	'',	'2015-09-10',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(563,	'Geburtstag Louis Dreger',	'',	'2015-09-14',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(573,	'Geburtstag Christiane Meyer',	'',	'2015-09-20',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(583,	'Geburtstag Andrea Dahmann',	'',	'2015-09-30',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(593,	'Geburtstag Gerrit Schulte',	'',	'2015-10-23',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(603,	'Geburtstag Hartmut Schulte',	'',	'2015-11-21',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(613,	'Geburtstag Angelika Weber',	'',	'2015-12-01',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(623,	'Geburtstag Miriam Grau',	'',	'2015-12-11',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(633,	'Geburtstag Sigrid PlÃ¼ckhahn',	'',	'2015-12-24',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(643,	'graue Tonne',	'',	'2014-03-06',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(723,	'graue Tonne',	'',	'2014-03-12',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(733,	'graue Tonne',	'',	'2014-03-19',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(743,	'graue Tonne',	'',	'2014-03-26',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(753,	'Rosenmontag',	'',	'2014-03-03',	'00:00:00',	'0000-00-00',	'00:00:00',	73,	'',	0),
(763,	'graue Tonne',	'',	'2014-04-02',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(773,	'graue Tonne',	'',	'2014-04-09',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(783,	'graue Tonne',	'',	'2014-04-15',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(793,	'graue Tonne',	'',	'2014-04-24',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(803,	'graue Tonne',	'',	'2014-04-30',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(813,	'graue Tonne',	'',	'2014-05-07',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(823,	'graue Tonne',	'',	'2014-05-14',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(833,	'graue Tonne',	'',	'2014-05-21',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(843,	'graue Tonne',	'',	'2014-05-28',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(853,	'graue Tonne',	'',	'2014-06-04',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(863,	'graue Tonne',	'',	'2014-06-12',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(873,	'graue Tonne',	'',	'2014-06-18',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(883,	'graue Tonne',	'',	'2014-06-25',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(893,	'graue Tonne',	'',	'2014-07-02',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(903,	'graue Tonne',	'',	'2014-07-09',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(913,	'graue Tonne',	'',	'2014-07-16',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(923,	'graue Tonne',	'',	'2014-07-23',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(933,	'graue Tonne',	'',	'2014-07-30',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(943,	'graue Tonne',	'',	'2014-08-06',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(953,	'graue Tonne',	'',	'2014-08-13',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(963,	'graue Tonne',	'',	'2014-08-20',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(973,	'graue Tonne',	'',	'2014-08-27',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(983,	'graue Tonne',	'',	'2014-09-03',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(993,	'graue Tonne',	'',	'2014-09-10',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1003,	'graue Tonne',	'',	'2014-09-17',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1013,	'graue Tonne',	'',	'2014-09-24',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1023,	'graue Tonne',	'',	'2014-09-30',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1033,	'graue Tonne',	'',	'2014-10-08',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1043,	'graue Tonne',	'',	'2014-10-15',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1053,	'graue Tonne',	'',	'2014-10-22',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1063,	'graue Tonne',	'',	'2014-10-29',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1163,	'graue Tonne',	'',	'2014-01-02',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1173,	'graue Tonne',	'',	'2014-01-08',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1183,	'graue Tonne',	'',	'2014-01-15',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1193,	'graue Tonne',	'',	'2014-01-22',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1203,	'graue Tonne',	'',	'2014-01-29',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1213,	'graue Tonne',	'',	'2014-02-05',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1223,	'graue Tonne',	'',	'2014-02-12',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1233,	'graue Tonne',	'',	'2014-02-19',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1243,	'graue Tonne',	'',	'2014-02-26',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1253,	'gelbe Tonne',	'',	'2014-01-02',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1263,	'gelbe Tonne',	'',	'2014-01-16',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1273,	'gelbe Tonne',	'',	'2014-01-30',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1283,	'gelbe Tonne',	'',	'2014-02-13',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1293,	'gelbe Tonne',	'',	'2014-02-27',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1303,	'gelbe Tonne',	'',	'2014-03-13',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1313,	'gelbe Tonne',	'',	'2014-03-27',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1323,	'gelbe Tonne',	'',	'2014-04-10',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1333,	'gelbe Tonne',	'',	'2014-04-25',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1343,	'gelbe Tonne',	'',	'2014-05-08',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1353,	'gelbe Tonne',	'',	'2014-05-22',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1363,	'gelbe Tonne',	'',	'2014-06-05',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1373,	'gelbe Tonne',	'',	'2014-06-20',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1383,	'gelbe Tonne',	'',	'2014-07-03',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1393,	'gelbe Tonne',	'',	'2014-07-17',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1403,	'gelbe Tonne',	'',	'2014-07-31',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1413,	'gelbe Tonne',	'',	'2014-08-14',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1423,	'gelbe Tonne',	'',	'2014-08-28',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1433,	'gelbe Tonne',	'',	'2014-09-11',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1443,	'gelbe Tonne',	'',	'2014-09-25',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1453,	'gelbe Tonne',	'',	'2014-10-09',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1463,	'gelbe Tonne',	'',	'2014-10-23',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1473,	'gelbe Tonne',	'',	'2014-11-06',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1483,	'gelbe Tonne',	'',	'2014-11-20',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1493,	'gelbe Tonne',	'',	'2014-12-04',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1503,	'gelbe Tonne',	'',	'2014-12-18',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	3),
(1513,	'graue Tonne',	'',	'2014-11-05',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1523,	'graue Tonne',	'',	'2014-11-12',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1533,	'graue Tonne',	'',	'2014-11-19',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1543,	'graue Tonne',	'',	'2014-11-26',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1553,	'graue Tonne',	'',	'2014-12-03',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1563,	'graue Tonne',	'',	'2014-12-10',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1573,	'graue Tonne',	'',	'2014-12-17',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1583,	'graue Tonne',	'',	'2014-12-23',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1593,	'graue Tonne',	'',	'2014-12-31',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	13),
(1603,	'blaue Tonne',	'',	'2014-01-08',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1613,	'blaue Tonne',	'',	'2014-01-22',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1623,	'blaue Tonne',	'',	'2014-02-05',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1633,	'blaue Tonne',	'',	'2014-02-19',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1643,	'blaue Tonne',	'',	'2014-03-06',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1653,	'blaue Tonne',	'',	'2014-03-19',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1663,	'blaue Tonne',	'',	'2014-04-02',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1673,	'blaue Tonne',	'',	'2014-04-15',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1683,	'blaue Tonne',	'',	'2014-04-30',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1693,	'blaue Tonne',	'',	'2014-05-14',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1703,	'blaue Tonne',	'',	'2014-05-28',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1713,	'blaue Tonne',	'',	'2014-06-12',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1723,	'blaue Tonne',	'',	'2014-06-25',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1733,	'blaue Tonne',	'',	'2014-07-09',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1743,	'blaue Tonne',	'',	'2014-07-23',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1753,	'blaue Tonne',	'',	'2014-08-06',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1763,	'blaue Tonne',	'',	'2014-08-20',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1773,	'blaue Tonne',	'',	'2014-09-03',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1783,	'blaue Tonne',	'',	'2014-09-17',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1793,	'blaue Tonne',	'',	'2014-09-30',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1803,	'blaue Tonne',	'',	'2014-10-15',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1813,	'blaue Tonne',	'',	'2014-10-29',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1823,	'blaue Tonne',	'',	'2014-11-12',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1833,	'blaue Tonne',	'',	'2014-11-26',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1843,	'blaue Tonne',	'',	'2014-12-10',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1853,	'blaue Tonne',	'',	'2014-12-23',	'00:00:00',	'0000-00-00',	'00:00:00',	63,	'',	23),
(1863,	'Arzttermin Langzeit EKG anlegen lassen',	'',	'2014-03-20',	'00:00:00',	'0000-00-00',	'00:00:00',	23,	'',	43),
(1873,	'Arzttermin Langzeit EKG abnhemen lassen',	'',	'2014-03-21',	'00:00:00',	'0000-00-00',	'00:00:00',	23,	'',	43),
(1883,	'07:30 Dr. Mortsiefer NachgesprÃ¤ch',	'',	'2014-03-27',	'00:00:00',	'0000-00-00',	'00:00:00',	23,	'',	43),
(1893,	'Geburtstag Iris Burgmeister',	'',	'2015-01-04',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(1903,	'Geburtstag Manfred Losse',	'',	'2015-01-16',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1913,	'Geburtstag Rachel Gessat',	'',	'2015-01-19',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1923,	'Geburtstag Sabine  Dreger',	'',	'2015-01-25',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1933,	'Geburtstag Ruth Krabbe',	'',	'2015-01-29',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1943,	'Geburtstag Phoebe Grau',	'',	'2015-02-26',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1953,	'Geburtstag Lewin Gessat',	'',	'2015-03-02',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1963,	'Geburtstag Dagmar LiÃŸke',	'',	'2015-03-04',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1973,	'Geburtstag Orell Schulte',	'',	'2015-03-15',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(1983,	'Geburtstag Heinz Meyer',	'',	'2015-05-05',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(2003,	'Geburtstag Edgar Meyer',	'',	'2015-05-24',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(2013,	'Geburtstag Brigitte  Schulte',	'',	'2015-05-26',	'00:00:00',	'0000-00-00',	'00:00:00',	3,	'',	33),
(2023,	'Geburtstag Erna Meyer',	'',	'2015-06-11',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2043,	'Geburtstag Frieda Lina Meyer',	'',	'2015-07-09',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2053,	'Geburtstag Damaris Dreger',	'',	'2015-08-01',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2063,	'Geburtstag Sylvia Schulte',	'',	'2015-08-30',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2073,	'Geburtstag Antonia Dreger',	'',	'2015-09-10',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2083,	'Geburtstag Louis Dreger',	'',	'2015-09-14',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2093,	'Geburtstag Christiane Meyer',	'',	'2015-09-20',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2103,	'Geburtstag Andrea Dahmann',	'',	'2015-09-30',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2113,	'Geburtstag Gerrit Schulte',	'',	'2015-10-23',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2123,	'Geburtstag Hartmut Schulte',	'',	'2015-11-21',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2133,	'Geburtstag Angelika Weber',	'',	'2015-12-01',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2143,	'Geburtstag Miriam Grau',	'',	'2015-12-11',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2153,	'Geburtstag Sigrid PlÃ¼ckhahn',	'',	'2015-12-24',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2163,	'beweglicher Ferientag',	'Ferien',	'2014-06-20',	'00:00:00',	'0000-00-00',	'00:00:00',	83,	'',	73),
(2173,	'Ostersonntag\r',	'Ostersonntag\r',	'2014-04-20',	'00:00:00',	'2014-04-20',	'00:00:00',	73,	'',	0),
(2183,	'Ostermontag\r',	'Ostermontag\r',	'2014-04-21',	'00:00:00',	'2014-04-21',	'00:00:00',	73,	'',	0),
(2193,	'Karfreitag\r',	'Karfreitag\r',	'2014-04-18',	'00:00:00',	'2014-04-18',	'00:00:00',	73,	'',	0),
(2203,	'Christi Himmelfahrt\r',	'Christi Himmelfahrt\r',	'2014-05-29',	'00:00:00',	'2014-05-29',	'00:00:00',	73,	'',	0),
(2213,	'Pfingstsonntag\r',	'Pfingstsonntag\r',	'2014-06-08',	'00:00:00',	'2014-06-08',	'00:00:00',	73,	'',	0),
(2223,	'Pfingstmontag\r',	'Pfingstmontag\r',	'2014-06-09',	'00:00:00',	'2014-06-09',	'00:00:00',	73,	'',	0),
(2233,	'Fronleichnam\r',	'Fronleichnam\r',	'2014-06-19',	'00:00:00',	'2014-06-19',	'00:00:00',	73,	'',	0),
(2243,	'Faschingsdienstag\r',	'Faschingsdienstag\r',	'2014-03-04',	'00:00:00',	'2014-03-04',	'00:00:00',	73,	'',	0),
(2253,	'Rosenmontag\r',	'Rosenmontag\r',	'2014-03-03',	'00:00:00',	'2014-03-03',	'00:00:00',	73,	'',	0),
(2263,	'Weiberfastnacht\r',	'Weiberfastnacht\r',	'2014-02-27',	'00:00:00',	'2014-02-27',	'00:00:00',	73,	'',	0),
(2273,	'Vatertag\r',	'Vatertag\r',	'2014-05-29',	'00:00:00',	'2014-05-29',	'00:00:00',	73,	'',	0),
(2283,	'Weltspartag\r',	'Weltspartag\r',	'2014-10-30',	'00:00:00',	'2014-10-30',	'00:00:00',	73,	'',	0),
(2293,	'4. Advent\r',	'4. Advent\r',	'2014-12-21',	'00:00:00',	'2014-12-21',	'00:00:00',	73,	'',	0),
(2303,	'3. Advent\r',	'3. Advent\r',	'2014-12-14',	'00:00:00',	'2014-12-14',	'00:00:00',	73,	'',	0),
(2313,	'2. Advent\r',	'2. Advent\r',	'2014-12-07',	'00:00:00',	'2014-12-07',	'00:00:00',	73,	'',	0),
(2323,	'1. Advent\r',	'1. Advent\r',	'2014-11-30',	'00:00:00',	'2014-11-30',	'00:00:00',	73,	'',	0),
(2333,	'Aschermittwoch\r',	'Aschermittwoch\r',	'2014-03-05',	'00:00:00',	'2014-03-05',	'00:00:00',	73,	'',	0),
(2343,	'Volkstrauertag\r',	'Volkstrauertag\r',	'2014-11-16',	'00:00:00',	'2014-11-16',	'00:00:00',	73,	'',	0),
(2353,	'Ostersonntag\r',	'Ostersonntag\r',	'2015-04-05',	'00:00:00',	'2015-04-05',	'00:00:00',	73,	'',	0),
(2363,	'Ostermontag\r',	'Ostermontag\r',	'2015-04-06',	'00:00:00',	'2015-04-06',	'00:00:00',	73,	'',	0),
(2373,	'Karfreitag\r',	'Karfreitag\r',	'2015-04-03',	'00:00:00',	'2015-04-03',	'00:00:00',	73,	'',	0),
(2383,	'Christi Himmelfahrt\r',	'Christi Himmelfahrt\r',	'2015-05-14',	'00:00:00',	'2015-05-14',	'00:00:00',	73,	'',	0),
(2393,	'Pfingstsonntag\r',	'Pfingstsonntag\r',	'2015-05-24',	'00:00:00',	'2015-05-24',	'00:00:00',	73,	'',	0),
(2403,	'Pfingstmontag\r',	'Pfingstmontag\r',	'2015-05-25',	'00:00:00',	'2015-05-25',	'00:00:00',	73,	'',	0),
(2413,	'Fronleichnam\r',	'Fronleichnam\r',	'2015-06-04',	'00:00:00',	'2015-06-04',	'00:00:00',	73,	'',	0),
(2423,	'Faschingsdienstag\r',	'Faschingsdienstag\r',	'2015-02-17',	'00:00:00',	'2015-02-17',	'00:00:00',	73,	'',	0),
(2433,	'Rosenmontag\r',	'Rosenmontag\r',	'2015-02-16',	'00:00:00',	'2015-02-16',	'00:00:00',	73,	'',	0),
(2443,	'Weiberfastnacht\r',	'Weiberfastnacht\r',	'2015-02-12',	'00:00:00',	'2015-02-12',	'00:00:00',	73,	'',	0),
(2453,	'Vatertag\r',	'Vatertag\r',	'2015-05-14',	'00:00:00',	'2015-05-14',	'00:00:00',	73,	'',	0),
(2463,	'Weltspartag\r',	'Weltspartag\r',	'2015-10-30',	'00:00:00',	'2015-10-30',	'00:00:00',	73,	'',	0),
(2473,	'4. Advent\r',	'4. Advent\r',	'2015-12-20',	'00:00:00',	'2015-12-20',	'00:00:00',	73,	'',	0),
(2483,	'3. Advent\r',	'3. Advent\r',	'2015-12-13',	'00:00:00',	'2015-12-13',	'00:00:00',	73,	'',	0),
(2493,	'2. Advent\r',	'2. Advent\r',	'2015-12-06',	'00:00:00',	'2015-12-06',	'00:00:00',	73,	'',	0),
(2503,	'1. Advent\r',	'1. Advent\r',	'2015-11-29',	'00:00:00',	'2015-11-29',	'00:00:00',	73,	'',	0),
(2513,	'Aschermittwoch\r',	'Aschermittwoch\r',	'2015-02-18',	'00:00:00',	'2015-02-18',	'00:00:00',	73,	'',	0),
(2523,	'Volkstrauertag\r',	'Volkstrauertag\r',	'2015-11-15',	'00:00:00',	'2015-11-15',	'00:00:00',	73,	'',	0),
(2533,	'Ostersonntag\r',	'Ostersonntag\r',	'2016-03-27',	'00:00:00',	'2016-03-27',	'00:00:00',	73,	'',	0),
(2543,	'Ostermontag\r',	'Ostermontag\r',	'2016-03-28',	'00:00:00',	'2016-03-28',	'00:00:00',	73,	'',	0),
(2553,	'Karfreitag\r',	'Karfreitag\r',	'2016-03-25',	'00:00:00',	'2016-03-25',	'00:00:00',	73,	'',	0),
(2563,	'Christi Himmelfahrt\r',	'Christi Himmelfahrt\r',	'2016-05-05',	'00:00:00',	'2016-05-05',	'00:00:00',	73,	'',	0),
(2573,	'Pfingstsonntag\r',	'Pfingstsonntag\r',	'2016-05-15',	'00:00:00',	'2016-05-15',	'00:00:00',	73,	'',	0),
(2583,	'Pfingstmontag\r',	'Pfingstmontag\r',	'2016-05-16',	'00:00:00',	'2016-05-16',	'00:00:00',	73,	'',	0),
(2593,	'Fronleichnam\r',	'Fronleichnam\r',	'2016-05-26',	'00:00:00',	'2016-05-26',	'00:00:00',	73,	'',	0),
(2603,	'Faschingsdienstag\r',	'Faschingsdienstag\r',	'2016-02-09',	'00:00:00',	'2016-02-09',	'00:00:00',	73,	'',	0),
(2613,	'Rosenmontag\r',	'Rosenmontag\r',	'2016-02-08',	'00:00:00',	'2016-02-08',	'00:00:00',	73,	'',	0),
(2623,	'Weiberfastnacht\r',	'Weiberfastnacht\r',	'2016-02-04',	'00:00:00',	'2016-02-04',	'00:00:00',	73,	'',	0),
(2633,	'Vatertag\r',	'Vatertag\r',	'2016-05-05',	'00:00:00',	'2016-05-05',	'00:00:00',	73,	'',	0),
(2643,	'Weltspartag\r',	'Weltspartag\r',	'2016-10-28',	'00:00:00',	'2016-10-28',	'00:00:00',	73,	'',	0),
(2653,	'4. Advent\r',	'4. Advent\r',	'2016-12-18',	'00:00:00',	'2016-12-18',	'00:00:00',	73,	'',	0),
(2663,	'3. Advent\r',	'3. Advent\r',	'2016-12-11',	'00:00:00',	'2016-12-11',	'00:00:00',	73,	'',	0),
(2673,	'2. Advent\r',	'2. Advent\r',	'2016-12-04',	'00:00:00',	'2016-12-04',	'00:00:00',	73,	'',	0),
(2683,	'1. Advent\r',	'1. Advent\r',	'2016-11-27',	'00:00:00',	'2016-11-27',	'00:00:00',	73,	'',	0),
(2693,	'Aschermittwoch\r',	'Aschermittwoch\r',	'2016-02-10',	'00:00:00',	'2016-02-10',	'00:00:00',	73,	'',	0),
(2703,	'Volkstrauertag\r',	'Volkstrauertag\r',	'2016-11-13',	'00:00:00',	'2016-11-13',	'00:00:00',	73,	'',	0),
(2713,	'Tag der deutschen Einheit',	'dt. Einheit',	'2014-10-03',	'00:00:00',	'0000-00-00',	'00:00:00',	73,	'',	0),
(2733,	'08:30 Arm trotzt Arbeit',	'',	'2014-07-31',	'00:00:00',	'0000-00-00',	'00:00:00',	0,	'',	0),
(2743,	'Jahresurlaub Horst',	'',	'2014-07-28',	'00:00:00',	'2014-08-24',	'00:00:00',	13,	'',	63),
(2744,	'Familienurlaub',	'',	'2016-07-18',	'00:00:00',	'2016-08-07',	'00:00:00',	0,	'',	63),
(2745,	'Osterferien Christiane',	'',	'2016-03-21',	'00:00:00',	'2016-04-01',	'00:00:00',	84,	'',	63),
(2746,	'Sommerferien Christiane',	'',	'2016-07-18',	'00:00:00',	'2016-08-07',	'00:00:00',	84,	'',	63),
(2747,	'Herbstferien Christiane',	'',	'2016-10-10',	'00:00:00',	'2016-10-16',	'00:00:00',	84,	'',	63),
(2751,	'Rachel Geburtstag',	'Rachel geb',	'2016-01-19',	'00:00:00',	'2016-01-19',	'00:00:00',	3,	'',	33);

CREATE TABLE `tbltermine_serie` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldimagepfad` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldsel` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'J',
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbltermine_serie` (`fldindex`, `fldbez`, `fldfarbe`, `fldimagepfad`, `fldsel`) VALUES
(3,	'gelbe Tonne',	'#FFFF00',	'/daten/image/tonne_gelb_trans.png',	'N'),
(13,	'graue Tonne',	'#CD0000',	'/daten/image/tonne_grau_trans.png',	'N'),
(23,	'blaue Tonne',	'',	'/daten/image/tonne_blau_trans.png',	'N'),
(33,	'Geburtstag',	'',	'/daten/image/torte.png',	'J'),
(43,	'Arzttermin',	'',	'',	'N'),
(53,	'Aufführung',	'',	'',	'N'),
(63,	'Urlaub',	'#aaffaa',	'/daten/image/urlaub.jpeg',	'J'),
(73,	'beweglicher Ferientag',	'',	'',	'J');

CREATE TABLE `tbltranslate` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldLang` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldBez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldName` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbltrigger` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldid_computer` bigint(20) NOT NULL,
  `fldsettrigger` varchar(1) COLLATE utf8_bin NOT NULL,
  `fldtxttrigger` varchar(4096) COLLATE utf8_bin NOT NULL,
  `fldAnz` int(11) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tbluserrotate` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_vonuser` bigint(20) NOT NULL,
  `fldid_nachuser` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tbluserrotate` (`fldindex`, `fldid_vonuser`, `fldid_nachuser`) VALUES
(34,	1,	2),
(44,	2,	3),
(54,	3,	1);

CREATE TABLE `tblverbesserung` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `flddatum` datetime NOT NULL,
  `flduser` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldbez` varchar(512) COLLATE utf8_bin NOT NULL,
  `fldstatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `flddsstatus` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT 'NEW',
  `flddelete` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `fldvorschlag` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldprior` tinyint(4) NOT NULL DEFAULT '0',
  `fldloesung` varchar(250) COLLATE utf8_bin NOT NULL,
  `flderldat` date NOT NULL DEFAULT '1900-01-01',
  `fldarchivdat` date NOT NULL DEFAULT '1900-01-01',
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblverbesserung` (`fldindex`, `flddatum`, `flduser`, `fldbez`, `fldstatus`, `flddsstatus`, `flddelete`, `fldvorschlag`, `fldprior`, `fldloesung`, `flderldat`, `fldarchivdat`) VALUES
(73,	'2012-08-31 18:00:00',	'Christiane',	'ich fÃ¤nde es schÃ¶n, wenn der Tisch abends im Wohnzimmer freigerÃ¤umt ist, damit man auch mal was abstellen kann. ',	'konflikt',	'NEW',	'N',	'Ich fÃ¤nde es schÃ¶n, wenn jeder dazu betrÃ¤gt, daÃŸ abends aufgerÃ¤umt ist/wird.Jeder hilft mit bei allem - soweit es in seinen FÃ¤higkeiten und MÃ¶glichkeiten liegen ( Zeit,Alter,Kraft etc )',	0,	'',	'1900-01-01',	'1900-01-01'),
(74,	'2012-09-01 11:00:00',	'Christiane',	'Ich fÃ¤nde es schÃ¶n, wenn das schmutzige Geschirr nach dem essen direkt in die SpÃ¼lmaschine gerÃ¤umt wÃ¼rde ( auch morgens )',	'konflikt',	'NEW',	'N',	'Ich fÃ¤nde es schÃ¶n, wenn wir uns bei Haushaltsarbeiten abwechseln, und einer den Tisch deckt und alles wieder abrÃ¤umt. (Horst)',	0,	'',	'1900-01-01',	'1900-01-01'),
(83,	'2012-09-01 12:12:00',	'Horst',	'Ich fÃ¤nde es schÃ¶n, wenn Frieda in Ihrem Bett schlÃ¤ft und wenn sie rÃ¼berkommt, nett wieder in Ihr Bett bringt, damit sie sich an ihr Bett gewÃ¶hnt. Ausnahmen sind Krankheit oder groÃŸe Furcht.',	'konflikt',	'NEW',	'N',	'Ich fÃ¤nde es schÃ¶n, wenn Frieda so lange in unserem Bett schlafen kÃ¶nnte bis sie selber entscheidet in ihrem Bett zu schlafen.',	0,	'',	'1900-01-01',	'1900-01-01'),
(93,	'2012-08-31 18:19:00',	'Horst',	'Ich fÃ¤nde es schÃ¶n, wenn wir ein gemeinsames Ordnungssystem erarbeiten, dass Ã¼ber den Computer erfasst werden kann.',	'erledigt',	'NEW',	'N',	'',	5,	'Ein todo-Liste der Dinge/Ecken die ausgemistet werden sollen, anschliessend Termine ausmachen. Liste der unklaren-Dinge erstellen und absprechen wohin. Hinweis welcher Schrank gerade erfasst wird.',	'2012-09-18',	'1900-01-01'),
(103,	'2012-09-05 18:15:00',	'Horst',	'Ich fÃ¤nde es schÃ¶n, wenn Frieda lernt, alleine einzuschlafen.',	'konflikt',	'NEW',	'N',	'',	0,	'',	'1900-01-01',	'1900-01-01'),
(113,	'2012-09-05 18:19:00',	'Horst',	'Ich fÃ¤nde es schÃ¶n, wenn die aufgelaufenen Briefe nicht ignoriert wÃ¼rden, sondern gemeinsam geÃ¶ffnet wÃ¼rden, damit wir unsere Probleme gemeinsam lÃ¶sen und ich nicht damit alleine gelassen werden.',	'konflikt',	'NEW',	'N',	'',	0,	'',	'1900-01-01',	'1900-01-01'),
(123,	'2012-09-05 22:20:00',	'Horst',	'Ich wÃ¼rde mir wÃ¼nschen, einen eigenen privaten Bereich zu haben. Z.b. den Schreibtisch im Arbeitszimmer. Dazu gehÃ¶rt auch das dieser nicht als Ablage benutzt wird!',	'offen',	'NEW',	'N',	'',	0,	'',	'1900-01-01',	'1900-01-01'),
(133,	'2012-09-18 07:07:00',	'Horst',	'Ich fÃ¤nde es schÃ¶n, wenn ich einmal in der Woche die Gelegenheit hÃ¤tte um unsere Rechnungen zu kÃ¼mmern, ohne das dabei der Fernseher laut lÃ¤uft, da ich mich dann nicht konzentrieren kann.',	'offen',	'NEW',	'N',	'',	0,	'',	'1900-01-01',	'1900-01-01'),
(134,	'2012-09-23 18:06:00',	'Christiane',	'Ich fÃ¤nde es schÃ¶n, wenn alle Familienmitglieder  beim Tischdecken, Tisch abrÃ¤umen und Tisch abwischen helfen. Jeden Tag.',	'offen',	'NEW',	'N',	'',	0,	'',	'1900-01-01',	'1900-01-01');

CREATE TABLE `tblverpack` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblversion` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldkurz` varchar(5) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  `fldversion` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblversion` (`fldindex`, `fldbez`, `fldkurz`, `flddatum`, `fldversion`) VALUES
(1,	'Version 3.12',	'0312',	'2014-10-20',	'0.312'),
(2,	'Version 3.15',	'0315',	'2015-01-06',	'0.315');

CREATE TABLE `tblvorrat` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldv01bez` varchar(200) CHARACTER SET latin1 NOT NULL,
  `fldv01ort` bigint(20) NOT NULL DEFAULT '1',
  `fldv01wo` bigint(20) NOT NULL,
  `fldv01fach` bigint(20) NOT NULL,
  `fldv01barcode` text CHARACTER SET latin1 NOT NULL,
  `fldv01menge` decimal(11,3) NOT NULL,
  `fldv01me` text CHARACTER SET latin1 NOT NULL,
  `fldv01anzahl` int(11) NOT NULL,
  `fldv01anzme` text CHARACTER SET latin1 NOT NULL,
  `fldv01haltbar` date NOT NULL,
  `fldv01verpack` text CHARACTER SET latin1 NOT NULL,
  `fldv01erfassdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fldv01konto` bigint(20) NOT NULL,
  `fldv01bild` bigint(20) NOT NULL,
  `fldv01bemerk` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldv01gekauftam` date NOT NULL,
  `fldv01status` varchar(20) COLLATE utf8_bin NOT NULL,
  `fldid_me` bigint(20) NOT NULL,
  `fldid_grundartikel` bigint(20) NOT NULL,
  `fldmindestmenge` int(11) NOT NULL,
  `fldartikelnr` int(11) NOT NULL,
  `fldid_anzme` bigint(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblvorrat` (`fldIndex`, `fldv01bez`, `fldv01ort`, `fldv01wo`, `fldv01fach`, `fldv01barcode`, `fldv01menge`, `fldv01me`, `fldv01anzahl`, `fldv01anzme`, `fldv01haltbar`, `fldv01verpack`, `fldv01erfassdat`, `fldv01konto`, `fldv01bild`, `fldv01bemerk`, `fldv01gekauftam`, `fldv01status`, `fldid_me`, `fldid_grundartikel`, `fldmindestmenge`, `fldartikelnr`, `fldid_anzme`) VALUES
(1,	'Kaffeesahne',	19,	11,	0,	'',	4.000,	'DÃ¶schen',	1,	'',	'2010-11-21',	'Neu',	'2015-05-04 06:06:28',	3,	4,	'',	'0000-00-00',	'(ohne)',	2,	0,	0,	0,	4),
(3,	'Kroketten',	19,	10,	14,	'28595816',	1.000,	'Packung',	0,	'',	'2012-03-12',	'Offen',	'2013-04-08 16:28:47',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(5,	'Lasagne Spinat',	12,	45,	14,	'20217136',	0.500,	'Kg',	1,	'Packung(en)',	'2013-03-01',	'Offen',	'2012-02-23 21:35:57',	3,	5,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(6,	'Klappkiste blau',	12,	44,	14,	'',	1.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(7,	'Teppichreiniger',	12,	44,	14,	'7610928070646',	2.000,	'Liter',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(8,	'KÃ¼chentÃ¼cher 3 lagig',	12,	44,	14,	'22115669',	3.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(9,	'Toilettenpapier 3 lagig',	12,	44,	14,	'',	8.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(10,	'Toilettenpapier 3 lagig recycl',	12,	44,	14,	'',	5.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(11,	'Speisezwiebeln',	12,	44,	14,	'',	1.000,	'Kg',	0,	'',	'2010-10-16',	'Offen',	'2012-02-23 21:47:52',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(12,	'Bio-Kartoffeln',	12,	44,	14,	'',	2.000,	'Kg',	0,	'',	'2010-09-16',	'Offen',	'2012-02-23 21:47:52',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(13,	'HandgeschirrspÃ¼lmittel',	12,	44,	14,	'',	1.000,	'Liter',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(14,	'KlarspÃ¼ler',	12,	44,	14,	'',	1.000,	'Liter',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(15,	'Antifrostmittel',	12,	44,	14,	'',	1.000,	'Liter',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	16,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(16,	'Sofix fÃ¼r alle BÃ¶den',	12,	44,	14,	'',	1.000,	'Liter',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(18,	'SpÃ¼lmschinensalz',	12,	44,	14,	'',	2.000,	'Kg',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(19,	'SpÃ¼lmaschinentabs',	12,	44,	14,	'',	1.000,	'Packung',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(20,	'Hautschutzseife',	12,	45,	14,	'',	9.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	10,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(21,	'Backpapier',	12,	14,	14,	'',	25.000,	'Blatt',	1,	'Packung(en)',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(22,	'Backpapier',	12,	14,	14,	'',	20.000,	'Meter',	1,	'Packung(en)',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(23,	'Gabelspaghetti',	12,	14,	14,	'',	0.250,	'Kg',	1,	'Packung(en)',	'2012-01-22',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(24,	'Tomatensaft',	12,	14,	14,	'',	1.000,	'Liter',	1,	'Glas',	'2010-05-25',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(25,	'TaschentÃ¼cher',	12,	14,	14,	'22120731',	21.000,	'PÃ¤ckchen',	10,	'StÃ¼ck',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(26,	'Reis',	12,	14,	14,	'',	1.000,	'Kg',	1,	'Packung(en)',	'2011-01-17',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(27,	'Vorratsdose Paniermehl',	12,	14,	14,	'',	0.800,	'Liter',	1,	'Dose',	'2011-09-04',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(28,	'Bienenhonig',	12,	14,	14,	'',	0.500,	'Kg',	1,	'Glas',	'2010-11-01',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(29,	'Kaffeesahne',	12,	15,	14,	'',	20.000,	'DÃ¶schen',	10,	'g',	'2011-11-21',	'Neu',	'2012-01-16 17:56:36',	3,	4,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(30,	'Haferflocken',	12,	15,	14,	'',	800.000,	'ml',	1,	'Vorratsdose',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(31,	'SemmelknÃ¶del',	12,	15,	14,	'',	4.000,	'StÃ¼ck',	0,	'',	'2011-03-01',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(32,	'Reis',	12,	15,	14,	'',	1.000,	'Kg',	1,	'Vorratsglas',	'2011-08-16',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(34,	'Sambal Oelek',	12,	15,	14,	'',	0.200,	'Kg',	1,	'Glas',	'2012-01-19',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(35,	'Multivitaminsaft',	12,	15,	14,	'',	0.500,	'Liter',	1,	'Glas',	'2011-10-01',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(36,	'Kaffee Magenmild',	12,	15,	14,	'',	0.500,	'Kg',	1,	'Packung(en)',	'2011-10-28',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(37,	'Spiralinudeln',	12,	15,	14,	'',	0.500,	'Kg',	1,	'Packung(en)',	'2013-09-13',	'Neu',	'2012-01-16 17:56:36',	3,	21,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(38,	'passierte tomaten',	12,	15,	14,	'',	0.500,	'Kg',	1,	'Packung(en)',	'2012-05-29',	'Neu',	'2012-01-16 17:56:36',	3,	6,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(39,	'Kondensmilch',	12,	15,	14,	'',	0.312,	'Liter',	1,	'Packung(en)',	'2010-08-15',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(40,	'Carokaffee',	12,	15,	14,	'',	0.200,	'Kg',	1,	'Packung(en)',	'2011-09-01',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(41,	'Kakao Tropengold',	19,	17,	14,	'22115164',	0.800,	'Kg',	1,	'Packung(en)',	'2012-06-01',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(42,	'Risottoreis',	12,	15,	14,	'',	0.250,	'Kg',	1,	'Packung(en)',	'2011-12-01',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(43,	'Sesam',	12,	15,	14,	'',	0.200,	'Kg',	1,	'Packung(en)',	'2011-05-28',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(44,	'Spaghetti',	12,	15,	14,	'',	0.500,	'Kg',	1,	'Packung(en)',	'2012-12-01',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(45,	'Cinzano Sekt',	12,	15,	14,	'',	0.750,	'Liter',	1,	'Flasche',	'2020-08-14',	'Neu',	'2012-01-16 17:56:36',	17,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(46,	'Brauner Zucker',	12,	15,	14,	'',	0.500,	'Kg',	2,	'Packung(en)',	'2015-08-14',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(47,	'Linsen',	12,	15,	14,	'',	0.200,	'Kg',	1,	'Packung(en)',	'2011-12-31',	'Offen',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(48,	'EierspÃ¤tzle',	12,	15,	14,	'',	0.500,	'Kg',	1,	'Packung(en)',	'2013-06-15',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(49,	'Partybecher',	12,	14,	14,	'',	50.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(50,	'Partybecher',	12,	14,	14,	'',	9.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(51,	'Partybecher',	12,	14,	14,	'',	11.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(52,	'Partybecher',	12,	14,	14,	'',	15.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(53,	'Partybecher',	12,	14,	14,	'',	16.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(54,	'Backmischung',	12,	15,	14,	'',	1.000,	'Kg',	1,	'Packung(en)',	'2011-03-10',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(55,	'Bambussprossen',	12,	15,	14,	'',	0.175,	'Kg',	1,	'Glas',	'2011-07-16',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(56,	'Brotaufstrich Joghurt-GemÃ¼se',	12,	14,	14,	'',	0.125,	'Kg',	2,	'Packung(en)',	'2011-06-11',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(57,	'champignons',	12,	14,	14,	'',	0.000,	'',	0,	'',	'2011-06-17',	'Neu',	'2012-01-16 17:56:36',	3,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(108,	'Kartoffeln',	12,	44,	14,	'4049928647757',	2.000,	'Kg',	1,	'Sack',	'2010-09-25',	'Neu',	'2012-02-23 21:47:52',	3,	22,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(107,	'Trauben kernlos',	19,	20,	14,	'4049929629042',	0.500,	'Kg',	1,	'Packung(en)',	'2010-09-04',	'Neu',	'2012-01-16 17:56:36',	3,	8,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(106,	'Broccoli',	19,	0,	0,	'4049928161185',	0.500,	'Kg',	1,	'Stück',	'2010-09-04',	'Neu',	'2015-05-04 05:28:45',	3,	9,	'',	'0000-00-00',	'(ohne)',	0,	0,	0,	0,	0),
(105,	'Sojaschnitzel',	19,	11,	0,	'22130259',	0.175,	'Kg',	4,	'Stück',	'2010-11-05',	'Neu',	'2015-05-04 05:57:44',	3,	11,	'',	'0000-00-00',	'(ohne)',	2,	0,	0,	0,	0),
(104,	'GemÃ¼sebrÃ¼he',	12,	15,	14,	'22113139',	0.140,	'Kg',	1,	'Glas',	'2011-09-01',	'Neu',	'2012-01-16 17:56:36',	1,	20,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(102,	'Toastbrot',	19,	11,	14,	'22136084',	0.500,	'Kg',	1,	'Packung(en)',	'2010-09-04',	'Neu',	'2012-01-16 17:56:36',	3,	13,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(103,	'Windeln',	21,	13,	14,	'22125927',	44.000,	'StÃ¼ck',	1,	'Verpackung(en)',	'1980-01-01',	'Neu',	'2012-06-19 16:16:06',	5,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(101,	'Spiralinudeln',	12,	14,	14,	'22111326',	0.500,	'Kg',	1,	'Verpackung(en)',	'2013-07-26',	'Neu',	'2012-01-16 17:56:36',	3,	21,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(100,	'Rahmspinat',	19,	10,	14,	'22113566',	0.450,	'Kg',	1,	'Packung(en)',	'2011-08-24',	'Neu',	'2012-01-16 17:56:36',	3,	17,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(99,	'O-Saft',	23,	13,	14,	'22131201',	1.500,	'Liter',	6,	'Flasche(n)',	'2011-03-31',	'Neu',	'2012-01-16 17:56:36',	3,	18,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(98,	'Milch (Frischmilch)',	19,	11,	14,	'22130112',	1.000,	'Liter',	1,	'Packung(en)',	'2010-09-13',	'Neu',	'2012-01-16 17:56:36',	3,	12,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(97,	'kleines Brot - Hannover Schnitten',	19,	11,	14,	'29706938',	0.500,	'Kg',	1,	'Packung(en)',	'2010-09-01',	'Neu',	'2012-01-16 17:56:36',	3,	14,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(96,	'Kiwi',	19,	20,	14,	'4020959000001',	4.000,	'StÃ¼ck',	1,	'Packung(en)',	'2010-09-04',	'Neu',	'2012-01-16 17:56:36',	3,	7,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(95,	'Butter',	19,	11,	14,	'22116505',	0.250,	'Kg',	1,	'Packung(en)',	'2010-09-27',	'Neu',	'2012-01-16 17:56:36',	3,	15,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(94,	'Ã„pfel Braeburn',	19,	20,	14,	'4020959000001',	6.000,	'StÃ¼ck',	1,	'Packung(en)',	'2010-09-04',	'Neu',	'2012-01-16 17:56:36',	3,	10,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(93,	'Apfelschorle',	23,	13,	14,	'001',	1.500,	'Liter',	6,	'Flasche(n)',	'2011-02-01',	'Neu',	'2012-01-16 17:56:36',	3,	19,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(109,	'Schokolade Orange',	19,	11,	14,	'22133540',	0.125,	'Kg',	1,	'Packung(en)',	'2010-12-01',	'Neu',	'2012-01-16 17:56:36',	17,	16,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(110,	'Pheromonfalle',	19,	25,	14,	'',	1.000,	'Stck',	0,	'',	'1980-01-01',	'Offen',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(113,	'Laserdrucker Samsung CLP-300',	31,	36,	37,	'',	1.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Defekt',	'2012-06-19 16:16:06',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(123,	'HP-Farblaserdrucker Laserjet 1525n',	31,	36,	37,	'',	1.000,	'StÃ¼ck',	0,	'',	'1980-01-01',	'Neu',	'2013-05-13 21:26:53',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(173,	'Badeschuhe Chris',	23,	573,	0,	'',	0.000,	'',	0,	'',	'0000-00-00',	'Neu',	'2013-04-19 05:16:18',	12,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(183,	'Badeschuhe Horst',	23,	553,	0,	'',	0.000,	'',	0,	'',	'0000-00-00',	'Neu',	'2013-04-19 05:15:27',	12,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(193,	'GlÃ¼hbirne 350 lm E27 LED',	23,	93,	373,	'',	1.000,	'StÃ¼ck',	0,	'',	'0000-00-00',	'Neu',	'2012-10-21 08:33:10',	33,	0,	'',	'2012-08-30',	'',	0,	0,	0,	0,	0),
(203,	'Butterbrotspapier',	19,	32,	14,	'',	0.000,	'',	0,	'',	'0000-00-00',	'Fehlt',	'2012-09-11 16:27:54',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(213,	'Energiesparlampe 440lm E27',	51,	233,	373,	'',	1.000,	'StÃ¼ck',	0,	'',	'0000-00-00',	'Neu',	'2012-10-21 08:32:17',	33,	0,	'',	'2012-10-21',	'',	0,	0,	0,	0,	0),
(223,	'Lampe MR11 12V 20W',	51,	383,	393,	'',	1.000,	'StÃ¼ck',	0,	'',	'0000-00-00',	'Neu',	'2012-10-21 08:35:36',	33,	0,	'',	'2012-10-21',	'',	0,	0,	0,	0,	0),
(233,	'Kaffeevollautomat',	49,	263,	0,	'',	1.000,	'',	0,	'',	'0000-00-00',	'Defekt',	'2014-12-27 16:06:15',	1,	1,	'',	'0000-00-00',	'(ohne)',	0,	0,	0,	0,	0),
(243,	'Bohrmaschine',	23,	293,	453,	'',	1.000,	'StÃ¼ck',	0,	'',	'0000-00-00',	'Neu',	'2013-01-03 21:05:18',	1,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(253,	'Halogenlampe E14',	21,	363,	14,	'',	1.000,	'',	0,	'',	'0000-00-00',	'Neu',	'2013-04-17 19:17:55',	33,	0,	'',	'2013-03-27',	'',	0,	0,	0,	0,	0),
(263,	'Schuh',	41,	523,	0,	'',	0.000,	'',	0,	'',	'0000-00-00',	'',	'2013-04-17 19:12:24',	12,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(273,	'Unterlagen',	31,	293,	14,	'',	0.000,	'',	0,	'',	'0000-00-00',	'',	'2013-05-08 17:11:17',	53,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(283,	'Halogenstrahler',	31,	723,	733,	'',	0.000,	'',	0,	'',	'0000-00-00',	'',	'2013-05-10 05:32:13',	33,	0,	'',	'0000-00-00',	'',	0,	0,	0,	0,	0),
(284,	'Schere',	19,	263,	1853,	'',	1.000,	'',	1,	'',	'0000-00-00',	'',	'2014-12-27 14:28:53',	1,	24,	'',	'0000-00-00',	'OK',	0,	0,	0,	0,	0),
(285,	'Tesafilm',	19,	263,	1853,	'',	0.000,	'',	0,	'',	'0000-00-00',	'',	'2014-12-27 15:20:39',	1,	25,	'',	'0000-00-00',	'offen',	0,	0,	0,	0,	0),
(286,	'Schneekugel',	52,	783,	1693,	'',	0.000,	'',	0,	'',	'0000-00-00',	'',	'2014-12-27 16:35:06',	0,	27,	'',	'0000-00-00',	'(ohne)',	0,	0,	0,	0,	0);

CREATE TABLE `tblvorschlaege` (
  `fldIndex` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fldBez` char(80) DEFAULT '0',
  `fldBenutzer` char(20) DEFAULT NULL,
  `fldDatum` char(16) DEFAULT NULL,
  `fldStatus` char(10) DEFAULT 'Neu',
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblvorschlaege` (`fldIndex`, `fldBez`, `fldBenutzer`, `fldDatum`, `fldStatus`) VALUES
(2,	'Kochplan einbauen',	'Christiane',	'04.03.2010 19:40',	'in Bearbei'),
(3,	'wöchentliche Aufgabenverteilung Haushalt',	'Christiane',	'25.01.2010 20:19',	'Neu'),
(4,	'Neuigkeiten eintragen',	'Horst',	'05.04.2010 20:16',	'erledigt'),
(5,	'Seitenhintergrund gestalten',	'Christiane',	'23.01.2010 23:55',	'Schwierig'),
(6,	'Familienphotos einfügen',	'Christiane',	'25.01.2010 20:19',	'Neu'),
(7,	'monatliche Besonderheiten, Erlebnisse festhalten ( Jahresrundbrief )',	'Christiane',	'23.01.2010 23:31',	'erledigt'),
(8,	'Neuigkeiten über Frieda, Entwicklung, Anekdoten etc',	'Christiane',	'25.01.2010 20:19',	'Neu'),
(9,	'Geburtstagskalender mit Erinnerung einbauen',	'Christiane',	'25.01.2010 20:19',	'Neu'),
(10,	'Kindergarten Termine zum eintragen',	'Horst',	'07.04.2010 22:34',	'Neu');

CREATE TABLE `tblvo_category` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) NOT NULL,
  `fldSort` varchar(20) NOT NULL,
  `fldProz` int(11) NOT NULL,
  `fldid_obercat` bigint(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblvo_obercategory` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(250) NOT NULL,
  `fldSort` varchar(20) NOT NULL,
  `fldProz` int(11) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblvo_usercategory` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_user` bigint(20) NOT NULL,
  `fldid_category` bigint(20) NOT NULL,
  `fldProz` int(11) NOT NULL,
  `fldid_zimmer` bigint(20) NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblwaehrungen` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldwaehrung` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldkurs` decimal(10,2) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblwunschliste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldlink` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblwunschliste` (`fldindex`, `fldbez`, `fldlink`) VALUES
(3,	'Joomla Programmierbuch',	'http://localhost/webportal/wunschliste/index.php'),
(13,	'raspberry pi',	''),
(23,	'gehÃ¤use fÃ¼r raspberry pi',	''),
(33,	'GeldzÃ¤hlmaschine',	''),
(43,	'Riemen fÃ¼r Akkordeon',	''),
(53,	'DLan Adapter (Ã¼ber Steckdose)',	''),
(63,	'Folk-CD z.B. Loreena Mc Kennit',	'');

CREATE TABLE `tblzeitpunkt` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldvonuhrzeit` time NOT NULL,
  `fldbisuhrzeit` time NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblzeitpunkt` (`fldindex`, `fldbez`, `fldvonuhrzeit`, `fldbisuhrzeit`) VALUES
(1,	'morgens',	'05:00:00',	'12:00:00'),
(2,	'abends',	'17:00:00',	'20:00:00');

CREATE TABLE `tblzeitraum` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `tblzutaten` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldid_rezepte` bigint(20) NOT NULL,
  `fldid_grundartikel` bigint(20) NOT NULL,
  `fldmenge` varchar(50) NOT NULL,
  `fldid_me` bigint(20) NOT NULL,
  `fldbez` varchar(250) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tblzwieart` (
  `fldart` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `tblzwieart` (`fldart`) VALUES
('Kritik'),
('Frage');

CREATE TABLE `viewrechtsschutz` (`fldlastname` varchar(255), `fldstreet` varchar(250), `fldplz` varchar(10), `fldtown` varchar(250));


CREATE TABLE `viewstatuszimmer` (`fldindex` bigint(20), `fldbez` varchar(20));


CREATE TABLE `zlux_categories` (
  `category_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sequence` int(2) unsigned NOT NULL DEFAULT '1',
  `rpeat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `public` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `background` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `check1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `label1` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT 'approved',
  `mark1` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'ok',
  `check2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `label2` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT 'complete',
  `mark2` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '&#10003;',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `zlux_events` (
  `event_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `category_id` int(4) unsigned NOT NULL DEFAULT '1',
  `venue` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `user_id` int(6) unsigned DEFAULT NULL,
  `editor` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked` text COLLATE utf8_bin,
  `s_date` date DEFAULT NULL,
  `e_date` date NOT NULL DEFAULT '9999-00-00',
  `x_dates` text COLLATE utf8_bin,
  `s_time` time DEFAULT NULL,
  `e_time` time NOT NULL DEFAULT '99:00:00',
  `r_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_interval` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_period` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_month` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_until` date NOT NULL DEFAULT '9999-00-00',
  `notify` tinyint(1) NOT NULL DEFAULT '-1',
  `not_mail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `a_date` date NOT NULL DEFAULT '9999-00-00',
  `m_date` date NOT NULL DEFAULT '9999-00-00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `zlux_settings` (
  `name` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `zlux_users` (
  `user_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `temp_password` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sedit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `login_0` date NOT NULL DEFAULT '9999-00-00',
  `login_1` date NOT NULL DEFAULT '9999-00-00',
  `login_cnt` int(8) NOT NULL DEFAULT '0',
  `language` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `viewrechtsschutz`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewrechtsschutz` AS select `tbladr_liste`.`fldlastname` AS `fldlastname`,`tbladr_liste`.`fldstreet` AS `fldstreet`,`tbladr_liste`.`fldplz` AS `fldplz`,`tbladr_liste`.`fldtown` AS `fldtown` from (`tbladr_liste` join `tbladr_lstgrp`) where ((`tbladr_lstgrp`.`fldid_group` = 13) and (`tbladr_lstgrp`.`fldid_liste` = `tbladr_liste`.`fldindex`));

DROP TABLE IF EXISTS `viewstatuszimmer`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewstatuszimmer` AS select `stat`.`fldindex` AS `fldindex`,`stat`.`fldbez` AS `fldbez` from ((`tblstatus` `stat` join `tblstat_grp` `grp`) join `tblstat_zuord` `zuord`) where ((`stat`.`fldindex` = `zuord`.`fldid_status`) and (`grp`.`fldindex` = `zuord`.`fldid_grp`) and (`grp`.`fldindex` = 43));

-- 2016-01-22 21:47:42

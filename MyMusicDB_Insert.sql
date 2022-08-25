INSERT INTO genre ("name") VALUES
	('opera'),
	('rock'),
	('rock-n-roll'),
	('rap'),
	('pop'),
	('electronic'),
	('reggae');
	
INSERT INTO artist ("name", "genre") VALUES
	('Andrea Bocelli', 'opera'),
	('Whitesnake', 'rock'),
	('Lenny Kravitz', 'rock-n-roll'),
	('2PAC', 'rap'),
	('Garou', 'pop'),
	('Leftfield', 'electronic'),
	('Bob Marley', 'reggae'),
	('Pink Floyd', 'rock');
	
INSERT INTO album ("name", "year") VALUES
	('Incanto', '2008'),
	('Flesh & Blood', '2019'),
	('Raise Vibration', '2018'),
	('Better Dayz', '2002'),
	('Seul', '2000'),
	('A Final Hit', '2005'),
	('Stand Alone', '2017'),
	('Echoes', '2001');

INSERT INTO track ("name", "album", "length") VALUES
	('Santa Lucia', '1', '267'),
	('Funiculi Funicula', '1', '151'),
	('Good to see you again', '2', '222'),
	('Hey you', '2', '329'),
	('Low', '3', '318'),
	('Here to love', '3', '262'),
	('Still Ballin', '4', '169'),
	('Better dayz', '4', '257'),
	('Je n`attendais que vous', '5', '332'),
	('Demande au soleil', '5', '333'),
	('Dusted', '6', '260'),
	('Snake blood', '6', '338'),
	('Sun is shining', '7', '133'),
	('Keep on movin', '7', '187'),
	('Hey you', '8', '279'),
	('Keep talking', '8', '357');

INSERT INTO collection ("name", "year") VALUES
	('Rock Ballads', '2000'),
	('Romantic Collection', '2013'),
	('Gangsta`s Paradise', '1999'),
	('Sun Music', '2019'),
	('My Flow', '2018'),
	('The Best from the West', '2014'),
	('Love songs', '2020'),
	('Chillin', '2017');

INSERT INTO artist_album ("artist_id", "album_id") VALUES
	('1', '1'),
	('2', '2'),
	('3', '3'),
	('4', '4'),
	('5', '5'),
	('6', '6'),
	('7', '7'),
	('8', '8');

INSERT INTO artist_genre ("artist_id", "genre_id") VALUES
	('1', '1'),
	('2', '2'),
	('3', '3'),
	('4', '4'),
	('5', '5'),
	('6', '6'),
	('7', '7'),
	('8', '2');

INSERT INTO track_collection ("track_id", "collection_id") VALUES
	('5', '1'),
	('6', '1'),
	('15', '1'),
	('1', '2'),
	('5', '2'),
	('8', '2'),
	('9', '2'),
	('10', '2'),
	('7', '3'),
	('8', '3'),
	('5', '4'),
	('6', '4'),
	('8', '4'),
	('13', '4'),
	('14', '4'),
	('3', '5'),
	('5', '5'),
	('8', '5'),
	('13', '5'),
	('15', '5'),
	('3', '6'),
	('5', '6'),
	('6', '6'),
	('8', '6'),
	('12', '6'),
	('13', '6'),
	('15', '6'),
	('1', '7'),
	('5', '7'),
	('9', '7'),
	('10', '7'),
	('5', '8'),
	('6', '8'),
	('8', '8'),
	('13', '8'),
	('15', '8');
	
	

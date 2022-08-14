CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) UNIQUE NOT NULL,
	genre VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL,
	CHECK (year > 1980)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL,
	CHECK (year > 1980)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	album INTEGER NOT NULL REFERENCES Album(id),
	length INTEGER NOT NULL,
	CHECK (length < 600)
);

CREATE TABLE IF NOT EXISTS Artist_Genre (
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Artist_Album (
	artist_id INTEGER NOT NULL REFERENCES Artist(id),
	album_id INTEGER NOT NULL REFERENCES Album(id),
	CONSTRAINT pk_ PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	track_id INTEGER NOT NULL REFERENCES Track(id),
	collection_id INTEGER NOT NULL REFERENCES Collection(id),
	CONSTRAINT pk_tc PRIMARY KEY (track_id, collection_id)
);
CREATE TABLE IF NOT EXISTS Genre
(
genre_id SERIAL PRIMARY KEY,
genre_name VARCHAR(256) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer
(
singer_id SERIAL PRIMARY KEY,
singer_name VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreSinger
(
unique_id SERIAL PRIMARY KEY,
genre_id INTEGER UNIQUE NOT NULL REFERENCES Genre(genre_id),
singer_id INTEGER NOT NULL REFERENCES Singer(singer_id)
);

CREATE TABLE IF NOT EXISTS Album
(
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(1000) NOT NULL,
release_year DATE
);

CREATE TABLE IF NOT EXISTS SingerAlbum
(
singalb_id SERIAL PRIMARY KEY,
singer_id INTEGER NOT NULL REFERENCES Singer(singer_id),
album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track
(
track_id SERIAL PRIMARY KEY,
duration_time INTEGER NOT NULL,
release_date DATE,
album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Compilation
(
compilation_id SERIAL PRIMARY KEY,
compilation_name VARCHAR(256) NOT NULL,
release_date DATE
);

CREATE TABLE IF NOT EXISTS CompTrack
(
comptrack_id SERIAL PRIMARY KEY,
track_id INTEGER NOT NULL REFERENCES TRack(track_id),
compilation_id INTEGER NOT NULL REFERENCES Compilation(compilation_id)
);
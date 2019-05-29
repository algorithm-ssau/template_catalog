DROP TABLE IF EXISTS post;

CREATE TABLE Airplanes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company TEXT NOT NULL,
    model TEXT NOT NULL,
    price INTEGER NOT NULL,
    capacity INTEGER NOT NULL,
    max_speed INTEGER NOT NULL,
    max_height INTEGER NOT NULL,
    image_link TEXT
);
CREATE DATABASE prepcookclean;

CREATE TABLE user (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    access INTEGER(1)
);

CREATE TABLE recipes (
    title VARCHAR(255) NOT NULL,
    link TEXT,
    photo TEXT,
);

CREATE TABLE calendar(
    month VARCHAR(30),
    day VARCHAR(30),
    year VARCHAR (30),
    recipe VARCHAR(255),
    prep VARCHAR(255),
    cook VARCHAR(255),
    clean VARCHAR(255),
    message VARCHAR(255),
    FOREIGN KEY(recipe) REFERENCES recipes(title)
    FOREIGN KEY(prep) REFERENCES user(id)
    FOREIGN KEY(cook) REFERENCES recipes(id)
    FOREIGN KEY(clean) REFERENCES recipes(id)
);
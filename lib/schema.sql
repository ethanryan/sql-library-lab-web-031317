-- All tables must have a PRIMARY KEY on the id

--We will have tables for: Characters, Books, Series, Authors, and Sub-Genres


--5) Characters have a name, motto, and species and belong to an author and a series
CREATE TABLE characters (
    id INTEGER PRIMARY KEY,
    name TEXT,
    motto TEXT,
    species TEXT,
    author_id INTEGER, -- foreign key
    series_id INTEGER -- foreign key
);

--4) Books have a title and year and belong to a series
CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    series_id INTEGER -- foreign key
);

--1) Series have a title and belong to an author and a sub-genre
CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER, -- foreign key
    subgenre_id INTEGER -- foreign key
);

--3) Authors have a name
CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);

--2) A Sub-Genre has a name
CREATE TABLE subgenres (
    id INTEGER PRIMARY KEY,
    name TEXT
);

--6) Books have many characters and characters are in many books in a series.
--How do we accomplish this complex association? With a join table between Characters and Books.
--This join table (let's call it character_books) will just have -in addition
--to its primary key- two foreign key columns for the character and book ids.
--Each row in this join table acts as a relation between a book and a character.

CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    name TEXT,
    character_id INTEGER, -- foreign key
    book_id INTEGER -- foreign key
);

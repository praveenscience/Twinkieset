# Schema Information

## albums
column name       | data type | details
------------------|-----------|-----------------------
id                | integer   | not null, primary key
title             | string    | not null, foreign key (references users)
event_date        | date      | not null
ord               | float     | not null, default 0.0
cover_image_id    | integer   | not null
status            | string    | not null, default draft
password_digest   | string    | not null
session_token     | string    | not null, unique
category          | string    |
user_id           | integer   | not null, foreign_key (reference user)

## subalbums
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null, unique
ord         | float     | not null, default 0.0
album_id    | integer   | not null, foreign_key (reference album)

## photos
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
image_url   | string    | not null
ord         | float     | not null, default 0.0
subalbum_id | integer   | not null, default 'highlights', foreign_key (reference subalbum)

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

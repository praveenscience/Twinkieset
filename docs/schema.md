# Schema Information

## category
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
user_id     | integer   | not null, foreign key (references users)

## category_albums (join)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
user_id     | integer   | not null, foreign key (references users)

## albums
column name       | data type | details
------------------|-----------|-----------------------
id                | integer   | not null, primary key
title             | string    | not null, foreign key (references users)
event_date        | date      | not null
ord               | float     | not null, default 0.0
cover_image_id    | integer   | not null
status            | string    | not null, default, draft
password_digest   | string    |
session_token     | string    | 

## subalbums
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null, unique
ord         | float
album_id    |

## photos
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
image_url   | string   | not null, foreign key (references posts)
ord         | float   | not null, foreign key (references tags)
subalbum_id | integer

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

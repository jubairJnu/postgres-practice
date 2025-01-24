
-- user table

CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(30) NOT NULL
);

--- create post table

CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 4
);


INSERT INTO "user" (user_name) VALUES('akash'),('batash'), ('nodi'),('sagor');

SELECT * FROM "user";


INSERT INTO post (id,text, user_id) VALUES
(5,'enjoy sunnyi day with null ☀️', NULL);


SELECT * FROM "user";

ALTER Table post
alter COLUMN user_id set NOT NULL;

DELETE FROM "user" WHERE id = 2;

DROP Table "user";

SELECT * FROM post;


-- get which text who write

SELECT text, user_name FROM post
JOIN "user" ON post.user_id = "user".id;

-- left join

SELECT text , user_name FROM post
LEFT JOIN "user" ON post.user_id = "user".id;
SELECT * FROM person2;


ALTER Table person2 
ADD COLUMN email VARCHAR(30) DEFAULT 'default@gmail.com' NOT NULL;

-- instert

INSERT INTO person2 VALUES(6, 15, 'jubair3','jubair@gamil.com');

ALTER Table person2
RENAME COLUMN age to user_age;


ALTER Table person2 ADD COLUMN remarks VARCHAR(80) ;

ALTER Table person2 DROP COLUMN remarks;


ALTER Table person2 
ALTER COLUMN user_name set  NOT NULL;

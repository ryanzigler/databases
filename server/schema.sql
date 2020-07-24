/* eslint-disable */
CREATE DATABASE IF NOT EXISTS chat;

USE chat;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) UNIQUE
);

DROP TABLE IF EXISTS messages;

CREATE TABLE messages (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username INT NOT NULL,
  message_text VARCHAR(500) NOT NULL,
  room VARCHAR(500) NOT NULL
);

 /*

 FOREIGN KEY (username) REFERENCES users(id)
-- ALTER TABLE messages
--   ADD FOREIGN KEY (username) REFERENCES users(id);
-- ALTER TABLE messages
--   ADD FOREIGN KEY (room_id) REFERENCES rooms(id);

-- ALTER TABLE friends
--   ADD FOREIGN KEY(primary_user_id) REFERENCES users(id);
-- ALTER TABLE friends
--   ADD FOREIGN KEY(secondary_user_id) REFERENCES users(id);

-- ALTER TABLE rooms
--   ADD FOREIGN KEY(message_id) REFERENCES messages(id);
*/
/* Create other tables and define schemas for them here! */
/*

CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);

*/



/*
/server/schema.sql
shell> mysql < batch-file

CREATE TABLE parent (
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE child (
    id INT,
    parent_id INT,
    INDEX par_ind (parent_id),
    FOREIGN KEY (parent_id)
        REFERENCES parent(id)
        ON DELETE CASCADE
) ENGINE=INNODB;

shell> mysql -h host -u user -p < batch-file
Enter password: ********


CREATE TABLE t2 (
    col1 INT NOT NULL,
    col2 DATE NOT NULL,
    col3 INT NOT NULL,
    col4 INT NOT NULL,
    UNIQUE KEY (col1),
    UNIQUE KEY (col3)
)
PARTITION BY HASH(col1 + col3)
PARTITIONS 4;




*/


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/




/*
// G-Learn Notes:

you will be writing one or more CREATE TABLE statements that will define the structure
of your database tables and loading them into your running MySQL server

*/
/*
Edit the file server/schema.sql to define, in SQL, the tables you have visually designed.
Load the schema into your MySQL server with mysql -u root < path/to/schema.sql.
*/
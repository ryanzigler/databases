CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id SMALLINT PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE messages (
  id smallint PRIMARY KEY,
  username VARCHAR(20),
  message_text VARCHAR(500),
  room_id SMALLINT
  -- FOREIGN KEY(username) REFERENCES users(id)
);

CREATE TABLE friends (
  id SMALLINT PRIMARY KEY,
  primary_user_id SMALLINT,
  secondary_user_id SMALLINT
  -- FOREIGN KEY(primary_user_id) REFERENCES users(id),
  -- FOREIGN KEY(secondary_user_id) REFERENCES users(id)
);

CREATE TABLE rooms (
  id SMALLINT PRIMARY KEY,
  room_name VARCHAR(30),
  message_id smallint
  -- FOREIGN KEY(message_id) REFERENCES messages(id)
);

--ALTER TABLE messages ADD FOREIGN KEY (room_id) REFERENCES rooms(id);

/* Create other tables and define schemas for them here! */

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


--            USERLIST                                                 FRIENDLIST
--  -----ID-----|-----name-----|               |-----ID-----|-----primary_ID-----|-----secondary_id-----|
--   1              bob                              1               1                     3
--   2              joe                              2               1                     5
--   3              tom                              3               2                     4
--   4              dick                             4               3                     1
--   5             harry                             5               4                     2
--                                                   6               5                     1

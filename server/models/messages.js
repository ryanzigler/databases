var db = require('../db');


module.exports = {
  // "GET"
  getAll: function (callback) {
    var queryString = 'SELECT * FROM messages';
    db.query(queryString, (err, results) => {
      callback(err, results);
    });
  }, // a function which produces all the messages

  // var messageRoom = [req.body.message, req.body.roomname]

  // "POST"
  create: function (data, callback) {
    var queryString = `INSERT INTO messages (message_text, username, room) \ VALUES ('${data[0]}', (SELECT id FROM users WHERE name = '${data[1]}'), '${data[2]}');`;
    console.log(queryString);
    db.query(queryString, data, (err, results) => {
      callback(err, results);
    });

    /*
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username INT,
    message_text VARCHAR(500) NOT NULL,
    room VARCHAR(500) NOT NULL,
    FOREIGN KEY (username) REFERENCES users(id)
    */

  } // a function which can be used to insert a message into the database
};

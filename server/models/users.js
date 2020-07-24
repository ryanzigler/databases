var db = require('../db');


module.exports = {
  getAll: function (callback) {
    var userQuery = 'SELECT * FROM users';
    db.query(userQuery, (err, messageRows) => {
      callback(err, userQuery);
    });
  },
  create: function (username, callback) {

    var userQuery = `INSERT into users (name) VALUES ('${username[0]}')`;
    db.query(userQuery, username, function (err, results) {
      callback(err, results);
    });
  }
};

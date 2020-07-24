var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.messages.getAll((err, results) => {
      if (err) {
        console.log('err in controller.messages.get');
      }
      res.json(results);
    });

  },
  post: function (req, res) {

    var messageRoom = [req.body.message, req.body.username, req.body.roomname];
    console.log(messageRoom);
    models.messages.create(messageRoom, (err, results) => {
      if (err) {
        console.log('err in controller.messages.post');
      }
      res.status(201);
    });
  }
};
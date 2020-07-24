var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.user.getAll((err, results) => {
      if (err) {
        console.log('err in controller.users.get');
      }
      res.json(results);
      // }
    });
  },

  post: function (req, res) {
    var user = [req.body.username];
    models.users.create(user, (err, results) => {
      if (err) {
        console.log('err in controller.users.get');
      }
      res.sendStatus(201);
    });
  }
};

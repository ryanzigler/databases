var models = require('../models');
var bluebird = require('bluebird');

module.exports = {
  get: function (req, res) {

    console.log('request to get');
  }, // a function which handles a get request for all messages
  post: function (req, res) {
    console.log('request to post');
  } // a function which handles posting a message to the database
};

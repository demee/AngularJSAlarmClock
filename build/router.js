// Generated by CoffeeScript 1.6.1
(function() {
  var controllers;

  controllers = require('./controllers/');

  module.exports = {
    init: function(app) {
      return app.get("/", controllers.index);
    }
  };

}).call(this);

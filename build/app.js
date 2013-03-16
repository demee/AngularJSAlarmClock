// Generated by CoffeeScript 1.6.1
(function() {
  var app, express, http, path, routes, server;

  express = require('express');

  routes = require('./routes/index');

  http = require('http');

  path = require('path');

  app = express();

  app.configure(function() {
    app.set('port', process.env.PORT || 3000);
    app.set('view engine', 'jade');
    app.set('views', __dirname + '/views');
    app.use(express["static"](__dirname + 'public'));
    app.use(express.favicon());
    app.use(express.logger('dev'));
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    return app.use(app.router);
  });

  app.configure('development', function() {
    return app.use(express.errorHandler());
  });

  server = http.createServer(app);

  server.listen(app.get('port', function() {
    return console.log("Express server listening on port " + app.get('port'));
  }));

}).call(this);

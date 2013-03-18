express = require 'express'
http = require 'http'
path = require 'path'

router = require './router'
assets = require './assets'

app = express();

app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.set 'view engine', 'jade'
  app.set 'views', __dirname + '/views'
  app.use express['static'] (__dirname + '/public')

  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router

app.configure 'development', ->
  app.use express.errorHandler()

router.init app
assets.init app

server = http.createServer app

server.listen app.get('port'), ->
  console.log "Server listening on port #{app.get('port')}"

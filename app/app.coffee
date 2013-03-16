express = require('express')
routes = require('./routes/index')

http = require('http')
path = require('path')

app = express();

app.configure ->
  clientDir = "#{__dirname}/client"
  publicDir = "#{__dirname}/public"
  publicScripts = "#{publicDir}/javascripts"

  app.set 'port', process.env.PORT || 3000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser('your secret here')
  app.use express.session()
  app.use app.router
  app.use express.static(path.join(__dirname, 'public'))
  app.use express.compiler(
    src: clientDir
    dest: publicScripts
    endable: ['coffeescript'])
  app.use require('less-middleware')(src: __dirname + '/public')

app.configure 'development', ->
  app.use express.errorHandler()


app.get('/', routes.index)

http.createServer(app).listen(app.get('port'), ->
  console.log("Express server listening on port " + app.get('port'))
)

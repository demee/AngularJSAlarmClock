controllers = require './controllers/'

module.exports =
  init: (app) ->
    app.get("/", controllers.index)


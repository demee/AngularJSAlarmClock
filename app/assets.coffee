assets = require 'connect-assets'

assetsPipeline = assets(src: './public/')
css.root = '/stylesheets'
js.root = '/javascripts'

#this is a hack but well, need to do register javascripts for render
scripts = ['app.js',
           'alarms/alarms.js',
           'clock/clock.js'
           'components/angular/angular.js'
           'components/jquery/jquery.js'
           'components/underscore/underscore.js'
           'components/datejs/build/date.js']

js script for script in scripts

exports.init = (app)->
    app.use assetsPipeline


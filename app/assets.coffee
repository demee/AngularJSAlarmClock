assets = require 'connect-assets'

assetsPipeline = assets(src: './public/')
css.root = '/stylesheets'
js.root = '/javascripts'

#this is a hack but well, need to do register javascripts for render
#due to the weirt requirement of assets-component
scripts = ['app.js',
           'alarms/alarms.js',
           'clock/clock.js'
           'components/angular.js'
           'components/jquery.js'
           'components/underscore.js']

js script for script in scripts

exports.init = (app)->
    app.use assetsPipeline


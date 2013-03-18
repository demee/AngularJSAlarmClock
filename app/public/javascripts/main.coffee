requirejs.config
  baseUrl:          '/javascripts/'
  paths:
    'angular':      '/javascripts/components/angular'
    'jquery':       '/javascripts/components/jquery'
    'underscore':   '/javascripts/components/underscore'
  shim:
    'angular':
      deps: ['jquery']
      exports: 'angular'
    'jquery':
      exports: 'jquery'
    'underscore':
      exports: '_'


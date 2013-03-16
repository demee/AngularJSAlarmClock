requirejs.config
  baseUrl:          '/javascripts/'
  paths:
    'angular':      '/javascripts/components/angular/angular'
    'jquery':       '/javascripts/components/jquery/jquery'
    'underscore':   '/javascripts/components/underscore/underscore'
    'normalize':    '/javascripts/components/require-css/normalize'
    'css':          '/javascripts/components/require-css/css'
    'date':         '/javascripts/components/datejs/build/date'
  shim:
    'angular':
      deps: ['jquery']
      exports: 'angular'
    'jquery':
      exports: 'jquery'
    'underscore':
      exports: '_'


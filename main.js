console.info('loadding "main"');

requirejs.config({
    paths: {
        'angular': '/components/angular/angular',
        'jquery': '/components/jquery/jquery',
        'underscore': '/components/underscore/underscore',
        'normalize': '/components/require-css/normalize',
        'css': '/components/require-css/css',
        'date': '/components/datejs/build/date'
    },
    shim: {
        'angular': {
            deps: ['jquery'],
            exports: 'angular'
        },
        'jquery': {
            exports: 'jquery'
        },
        'underscore': {
            exports: '_'
        }
    }

});

console.info('requirejs configuration loaded');

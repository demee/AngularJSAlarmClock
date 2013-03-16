deps = ['angular',
        'clock/clock',
        'alarms/alarms']

define deps, (angular, clockModule, alarmsModule)->
  'use strict';

  console.log 'Application evaluated, waiting for page load event'

  angular.element(document).ready ->
    console.log 'Page load event. starting application'
    angular.bootstrap $('.alarm-clock-app').first(), [clockModule.name, alarmsModule.name]

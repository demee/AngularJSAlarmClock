define ['angular', 'clock/clock', 'alarms/alarms'], (angular, clockModule, alarmsModule) ->
  'use strict';

  angular.element(document).ready ->
    angular.bootstrap $('.alarm-clock-app').first(), [clockModule.name, alarmsModule.name]

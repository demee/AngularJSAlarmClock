define([
  'angular',
  'clock/clock',
  'alarms/alarms'
],
function(angular, clockModule, alarmsModule){
  'use strict';

  angular.element(document).ready(function(){
    angular.bootstrap($('.alarm-clock-app').first(), [clockModule.name, alarmsModule.name]);
  });
});

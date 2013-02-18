define(['angular', 'utils/animation/animator', 'css!clock/clock'], function(angular, animator){
  'use strict';

  var clockModule = angular.module('AlarmClock', []);

  clockModule.directive('currentTime', function(dateFilter) {
    // return the directive link function. (compile function not needed)
    return function($scope, element, attrs) {
      animator(function updateTime() {
        element.text(dateFilter(new Date(), "HH:mm:ss"));
      });
    }
  });

  clockModule.directive('timeLeft', function($timeout, dateFilter){
    return function($scope, element, attrs){

      animator(function updateTimeLeft(){
        element.text(((new Date() - new Date($scope.alarms[0]))/1000) + " seconds")
      });
    }
  })

  clockModule.controller('TimeDisplayController', function($scope){
    $scope.alarms = [];

    $scope.addAlarm = function(){
      $scope.alarms.push(new Date($scope.alarmText));
    }
  });

  return clockModule;
});

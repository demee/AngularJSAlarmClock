define(['angular', 'date'], function(angular){
  'use strict';

  var alarmModule = angular.module('AlarmsList', []);

  function AlarmSetupController($scope) {
    $scope.alarms = [];

    $scope.addAlarm = function addAlarm() {
      var date = Date.parse($scope.alarmText);
      if (date) {
        $scope.alarms.push(date);
        $scope.errorText = null;
      } else {
        $scope.errorText = "Date format is not correct";
      }
    };
  }

  function parseDate() {
    return function parseDate(input) {
      return Date.parse(input);
    };
  }

  alarmModule.filter('parseDate', parseDate);
  alarmModule.controller('AlarmSetupController', AlarmSetupController);


  return alarmModule;

});

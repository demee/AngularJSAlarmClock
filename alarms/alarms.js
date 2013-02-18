define(['angular', 'date'], function(angular){
  'use strict';
  console.info('loading "alarms"');


  var alarmModule = angular.module('AlarmsList', []);

  alarmModule.filter('parseDate', function(){
    return function(input) {
      return Date.parse(input);
    }
  });

  alarmModule.controller('AlarmSetupController', function($scope, $timeout){
    $scope.alarms = [];


    $scope.addAlarm = function(){
      var date = Date.parse($scope.alarmText);
      console.log("Date:");
      console.dir(date);
      if(date){
        $scope.alarms.push(date);
        $scope.errorText = null;
      } else {
        console.error("Date format is not correct");
        $scope.errorText = "Date format is not correct";
        $timeout(function clearError () {
          $scope.errorText = null;
        }, 3000);
      }
    }

  });

  return alarmModule;

});

define ['angular'], (angular) ->
  'use strict'

  console.log 'Loading alarm list module'

  alarmModule = angular.module 'AlarmsList', [], ->

  AlarmSetupController = ($scope) ->
    $scope.alarms = []
    $scope.addAlarm = ->
      date = Date.parse $scope.alarmText
      if date
        $scope.alarms.push date
        $scope.errorText = null;
      else
        $scope.errorText = "Date format is not correct";

  parseDate = ->
    (input) ->
      Date.parse input

  alarmModule.filter 'parseDate', parseDate
  alarmModule.controller 'AlarmSetupController', AlarmSetupController

  alarmModule
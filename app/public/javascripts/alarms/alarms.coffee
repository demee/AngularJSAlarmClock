define ['angular'], (angular) ->
  'use strict'

  console.log 'Loading alarm list module'

  alarmModule = angular.module 'AlarmsList', [], ->

  parseNewAlarmDate = ($scope) ->
    date = $scope.newAlarmDate
    time = $scope.newAlarmTime
    dateTimeString = [date, ' ', time].join('')
    newAlarmTimestamp = Date.parse(dateTimeString)
    new Date(newAlarmTimestamp)

  AlarmSetupController = ($scope) ->
    $scope.alarms = []
    $scope.addAlarm = ->
      newAlarmDate = parseNewAlarmDate $scope
      if newAlarmDate
        $scope.alarms.push newAlarmDate
        $scope.errorText = null;
      else
        $scope.errorText = "Date format is not correct";

  printDate = ->
    (input) ->
      Date.parse input

  alarmModule.filter 'printDate', printDate
  alarmModule.controller 'AlarmSetupController', AlarmSetupController

  alarmModule
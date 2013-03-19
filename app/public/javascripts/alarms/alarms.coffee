define ['angular'], (angular) ->
  'use strict'

  console.log 'Loading alarm list module'

  alarmModule = angular.module 'AlarmsList', [], ->

  parseNewAlarmDate = ($scope) ->
    date = $scope.newAlarmDate
    time = $scope.newAlarmTime
    dateTimeString = "#{date} #{time}"
    newAlarmTimestamp = Date.parse(dateTimeString)
    new Date(newAlarmTimestamp)

  AlarmSetupController = ($scope) ->
    $scope.alarms = []
    $scope.addAlarm = ->
      newAlarmDate = parseNewAlarmDate $scope
      if newAlarmDate.toString() isnt 'Invalid Date'
        $scope.alarms.push newAlarmDate
        $scope.errorText = null;
      else
        $scope.errorText = newAlarmDate.toString();
    $scope.clickCheckbox = ->
      console.log($scope.active)

  printDate = ->
    (input) ->
      "#{input.toLocaleDateString()} #{input.toLocaleTimeString()}"

  sortDates = ->
    (input) ->
      input.sort((entryA, entryB)->
        entryA > entryB
      )

  alarmModule.filter 'printDate', printDate
  alarmModule.filter 'sortDates', sortDates
  alarmModule.controller 'AlarmSetupController', AlarmSetupController


  alarmModule
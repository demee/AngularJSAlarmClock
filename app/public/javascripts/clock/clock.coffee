define ['angular'], (angular) ->
  'use strict'

  console.log 'Loading clock module'

  clockModule = angular.module 'Clock', []


  TimeDisplayController = ($scope, $timeout, dateFilter) ->
    refresh = ->
      $scope.currentTime = dateFilter new Date(), 'HH:mm:ss'

    $scope.$watch 'currentTime', ->
      $timeout refresh, 1000

    refresh()


  clockModule.controller 'TimeDisplayController', TimeDisplayController

  clockModule


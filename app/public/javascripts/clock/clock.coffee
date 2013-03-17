define ['angular'], (angular) ->
  'use strict'

  console.log 'Loading clock module'

  clockModule = angular.module 'Clock', []

  TimeDisplayController = ($scope, $timeout, dateFilter) ->
    (refresh = ->
      $scope.currentTime = dateFilter new Date(), 'HH:mm:ss'
      $timeout refresh, 1000
    )()

  clockModule.controller 'TimeDisplayController', TimeDisplayController

  clockModule


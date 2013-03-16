define([
  'angular',
  'css!clock/clock'
],
function(angular){
  'use strict';

  var clockModule = angular.module('Clock', []);

  function TimeDisplayController($scope, $timeout, dateFilter) {
    (function refresh() {
      $scope.currentTime = dateFilter(new Date(), 'HH:mm:ss');
        $timeout(refresh, 1000);
    }());
  }

  clockModule.controller('TimeDisplayController', TimeDisplayController);

  return clockModule;
});

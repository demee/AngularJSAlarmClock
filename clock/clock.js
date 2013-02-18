define(['angular', 'css!clock/clock'], function(angular){
  'use strict';
  console.info('loading "clock"');

  var clockModule = angular.module('Clock', []);

  clockModule.controller('TimeDisplayController', function($scope, $timeout, dateFilter){
    (function refresh() {
      $scope.currentTime = dateFilter(new Date(), 'HH:mm:ss');
      $timeout(refresh, 1000)
    }());
  });


  clockModule.controller();

  return clockModule;
});

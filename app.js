define(['angular', 'clock/clock'], function(angular, clock){
  'use strict';

  angular.element(document).ready(function(){
    angular.bootstrap($('.alarm-clock-app').first(), [clock.name]);
  });
})

angular
.module('AlarmClock', [])
.directive('currentTime', function($timeout, dateFilter) {
  // return the directive link function. (compile function not needed)
  return function($scope, element, attrs) {

    function updateTime() {
      element.text(dateFilter(new Date(), "HH:MM:ss"));
    }



    function updateLater() {
      // save the timeoutId for canceling
      timeoutId = $timeout(function() {
        updateTime(); // update DOM
        updateLater(); // schedule another update
      }, 100);
    }


    updateLater(); // kick off the UI update process.
  }
})
.directive('timeLeft', function($timeout, dateFilter){
  return function($scope, element, attrs){

    function updateTimeLeft(){
      element.text(((new Date() - new Date($scope.alarms[0]))/1000) + " seconds")
    }

    function updateLater() {
      // save the timeoutId for canceling
      timeoutId = $timeout(function() {
        updateTimeLeft(); // update DOM
        updateLater(); // schedule another update
      }, 100);
    }

    updateLater();
  }
})
.controller('TimeDisplayController', function($scope){
  $scope.alarms = [];

  $scope.addAlarm = function(){
    $scope.alarms.push(new Date($scope.alarmText));
  }
})

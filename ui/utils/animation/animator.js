define(function(){
  'use strict';

  console.log('loading: "animator"')
  var requestAnimationFrame = window.requestAnimationFrame       ||
                              window.webkitRequestAnimationFrame ||
                              window.mozRequestAnimationFrame    ||
                              window.oRequestAnimationFrame      ||
                              window.msRequestAnimationFrame     ||
                              function( callback ){
                                window.setTimeout(callback, 1000 / 60);
                              };

  var animator = function(render){
    requestAnimationFrame(function(){
      render();
      animator(render);
    });
  };

  return animator;

});

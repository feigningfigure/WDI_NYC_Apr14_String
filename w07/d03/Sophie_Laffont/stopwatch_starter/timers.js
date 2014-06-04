var seconds = 0;
var timerId =0;

// BONUS: could add conditional to see if timer is already running that it should
// not run again
function updateTimer(){
  seconds++;
  $("#timer").text("time elapsed " + seconds + " seconds");
}

// line 12, below, is shorthand for $( document ).ready(function(){
$(function(){
  $("#start").on("click", function(){
    timerId = setInterval(updateTimer, 1000);
  });

 $("#pause").on("click", function(){
    clearInterval(timerId); //we cleared the timer function but did not
    // add any text
  });

  $("#reset").on("click", function(){
       clearInterval(timerId);
    seconds = 0;
  $("#timer").text("Start the clock");
  });

});






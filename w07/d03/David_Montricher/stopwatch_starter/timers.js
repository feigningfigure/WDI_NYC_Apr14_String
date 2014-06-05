var seconds = 0;
var timerId = 0;

// Note: Need a Jquery function like StopPropagation to prevent the timer to run many counters at the same time. A conditional that would check if chrono is already running AND prevent would also work

function updateTimer(){
  seconds++;
  $('timer').text('Time elapsed: ' + seconds);
}

// $(document).ready(function())
$(function(){
  $('#start').on('click', function(){
    timerID = setInterval(updateTimer, 1000)
  });

  $('#pause').on('click', function(){
    clearInterval(timerId)
  });

  $('#reset').on('click', function(){
    seconds = 0;
    $('timer').text('Start the clock');
  });
});

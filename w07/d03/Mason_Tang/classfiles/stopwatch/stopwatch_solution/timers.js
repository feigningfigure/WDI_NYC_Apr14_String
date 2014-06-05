var seconds = 0;
var timerId = 0;

function updateTime(){
  seconds++;
  $('#timer').text('Time elapsed: ' + seconds);
}

// same as:  $(document).ready(function()
$(function() {
  $('#start').on('click', function(){
    $('#timer').text('Time elapsed: ' + seconds);
    timerId = setInterval(updateTime, 1000);
  });

  $('#pause').on('click', function(){
    clearInterval(timerId);
  });

  $('#reset').on('click', function(){
    clearInterval(timerId);
    seconds = 0;
    $('#timer').text("Start the clock");
  });

});

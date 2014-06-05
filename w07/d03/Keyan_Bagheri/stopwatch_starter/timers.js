var seconds = 0;
var timerId = 0;

function updateTimer(){
  seconds++;
  $("#timer").text("Time elapsed: " + seconds);
}

$(function(){
  $("#start").on('click', function(){
    timerId = setInterval(updateTimer, 1000);
  });

  $("#pause").on('click', function(){
    clearInterval(timerId);
  });

  $("#reset").on('click', function(){
    seconds = 0
    clearInterval(timerId);
    $("#timer").text('Start the clock');
  });
});

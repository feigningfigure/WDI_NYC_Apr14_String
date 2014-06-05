var seconds = 0;
var timerId = 0;

function updateTimer(){
  seconds ++;
  $('#timer').text("Time elapsed : " + seconds );
}

$(document).ready(function(){

 $("#start").on("click", function(){
  timerId = setInterval(updateTimer, 1000);
});

  $("#pause").on("click", function(){
   clearInterval(timerId);
});

  $("#reset").on("click", function(){
    clearInterval(timerId);
    seconds = 0;
    $('#timer').text("Start the clock");
  });


// $(document).ready(function(){

//   $("#start").click(function(){
//     var count = 0;
//     setInterval(count++, 1000);

//     var count = 0;
//     var timer = $.timer(function() {
//      $('#timer').html(++count);
//     });

//       var display = function () {
//          $("#timer").html(count);
//       };

//       setInterval(display, 1000);
//         // $("#timer").html(count);

//     });

  });





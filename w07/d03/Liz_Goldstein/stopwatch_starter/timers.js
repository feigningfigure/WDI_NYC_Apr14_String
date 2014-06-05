var seconds = 0;
var timerId = 0;
var clicked = false;

function updateTimer(){
seconds ++;
$('#timer').text('time elapsed: ' + seconds)
}

$(function() {

  $("#start").on('click', function() {
  if (clicked === false)
  timerId = setInterval(updateTimer, 3000);
  clicked = true;
  });

  $('#pause').on('click', function() {
  clearInterval(timerId);
  clicked = false;
  });

  $('#reset').on('click', function() {
  clearInterval(timerId);
  seconds = 0;
  clicked = false;
  $('#timer').text('start the clock');
  });

});



//  function clickStart(){

//   $("#start").click(function(){
// console.log("start has been clicked");


// });}



//  function clickStop(){

//   $("#reset").click(function(){
// console.log("reset has been clicked");

// });}


//  function clickPause(){

//   $("#start").click(function(){
// console.log("pause has been clicked");

// });}


// function startTime(){
//   console.log(setInterval(clickStart, 1000));
// }

// function displayTimer(){
//   $("#timer").value(0)
// }


// $( document ).ready(function(){

// clickStart()
// clickStop()
// startTime()
// // setInterval(clickStart, 1000);

// });

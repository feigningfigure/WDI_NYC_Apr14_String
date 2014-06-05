


function setEventHandlers(){
// i = 0
// i ++
var $sec = 0;

// <button id="start">Start</button>
// <button id="pause">Pause / Stop</button>
// <button id="reset">Reset</button>

$('#start').click(function(){
  console.log("clicked");
  // $interval = setInterval(function(){run_clock();},1000);
  $interval = setInterval(function(){run_clock();},16.666666667);

});

$('#pause').click(function(){
  clearInterval($interval);
});

$('#reset').click(function(){
  $sec = 0;
  $("#time").text($sec);
});

function run_clock(){
  $sec+= 1;
  $("#time").text(reduce_mils($sec));
  console.log("i'm working");
}

function reduce_mils(miliseconds){
  msSecs = parseInt((miliseconds%1000)/100);
  msMins = (msSecs * 60);
  return  msMins + ":" + msSecs
}

}





$( document ).ready(function() {
  setEventHandlers();
});

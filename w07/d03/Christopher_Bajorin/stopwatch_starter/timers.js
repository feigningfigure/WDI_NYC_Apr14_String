

// $(function(){    //this is the same as document ready
$( document ).ready(function(){
  var $currentTime = 0;
  var $timer = $("#timer");
  var $start = $("#start");
  var $pause = $("#pause");
  var $reset = $("#reset");
  var running = false;


  // var interval = setInterval(timer(),1000);

  function timer() {
    $timer.text($currentTime);
    $currentTime += 1;
  }



  $start.click(function(){
    setInterval(timer, 1000);
  });

  $pause.click(function(){
    clearInterval(timer);
  });

  $reset.click(function(){

  })

});

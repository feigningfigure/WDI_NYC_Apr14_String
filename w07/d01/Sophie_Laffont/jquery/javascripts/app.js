//.click method on greeting and passing it a callback function
//scope

// CornFlower blue is rgb(100, 149, 237)"
var name = "Pickle";  // this is a global variable

$(document).ready(function(){

  $('#greeting').click(function(){
    if ( $(this).css("color") == "rgb(100, 149, 237)" ){
    $(this).css("color", "HotPink");
  }else{
    $(this).css("color", "CornflowerBlue");
  };
  });

});

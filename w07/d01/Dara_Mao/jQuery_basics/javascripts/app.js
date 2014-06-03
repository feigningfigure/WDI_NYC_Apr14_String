// var name = "Dara"; //global variable, outside the scope of function, this is available anywhere in the document


$(document).ready(function(){

  $('#greeting').click(function(){
    if ($(this).css("color") == "rgb(0,0,255)"){
    $(this).css("color","red");
    } else {
      $(this).css("color","blue");
    };
  });

});

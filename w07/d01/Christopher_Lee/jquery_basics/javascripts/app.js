
// function within click is a callback
// http://api.jquery.com/click/
// 'this' is shorthand - right now its the document

// you can declare global variables outside of the document
var name="Neel";


$(document).ready(function(){

// var color_change = function(){
//     $(this).css("color", "red");
// }

$('#greeting').click(function(){
    if ( $(this).css("color") === "rgb(0, 0, 255)"){
      $(this).css("color","red");
    }else {
      $(this).css("color", "blue");
    }
});

});


//$(document).ready(function(){ });
// says wait until the page is loaded and then apply functions within scope of the document

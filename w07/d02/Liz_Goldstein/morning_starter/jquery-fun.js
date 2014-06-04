$(document).ready(function(){

$("p").first().addClass("intro");

// $('p:first').addClass("intro");
// a second way to do this without jquery, possibly better for load speed

});

$(document).ready(function() {

$("#less-link1").click(function() {
  $("#less-text1").toggle();
  });

//leaving toggle vs. slidetoggle to compare

$("#less-link2").click(function() {
  $("#less-text2").slideToggle("slow");
  });

});


function stringPrint(string){
  var delay = Math.random() * 10000;
  setTimeout(function(){ return string; }, delay);
}

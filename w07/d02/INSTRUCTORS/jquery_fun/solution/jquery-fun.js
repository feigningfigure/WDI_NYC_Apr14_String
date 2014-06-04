// runs code as soon as the document is ready to be manipulated
// "$(function()" is shorthand for "$(document).ready(function()"

$(function() {
  $("p").first().addClass( "intro" );
});


$(function() {
  $("#less-link1").click(function () {
    $("#less-text1").slideToggle();
  });
  $("#less-link2").click(function () {
    $("#less-text2").slideToggle();
  });
});

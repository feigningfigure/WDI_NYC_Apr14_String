
//$(function(){ } ); - same as document.ready but this is the shorthand.
// this will become more common.

$(document).ready(function() {

  $("p").first().addClass("intro");
  // $('p:first').addClass('intro');

  });


$(document).ready(function() {

  $("#less-link1").click(function() {

    $("#less-text1").slideToggle("fast");
  
  });

});
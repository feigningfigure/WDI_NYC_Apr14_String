  $(document).ready(function(){ // ends with }); at bottom

// add class to first paragraph
$("p").first().addClass("intro");

// other notation
//$('p:first').addClass("intro")

// click less and paragraph disappears slowly
$("#less-link1").click(function(){
   $("#less-text1").slideToggle();
 });

 $("#less-link2").click(function(){
 $("#less-text2").slideToggle();
 });

});

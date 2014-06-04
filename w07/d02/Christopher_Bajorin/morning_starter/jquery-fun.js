
$(document).ready(function(){
  $("p").first().addClass("intro");

  var less1 = $("#less-link1");
  less1.click(function(){
    $("#less-text1").slideToggle();
  });

  var less2 = $("#less-link2");
  less2.click(function(){
    $("#less-text2").slideToggle();
  });
});

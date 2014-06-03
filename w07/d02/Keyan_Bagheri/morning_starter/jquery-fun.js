// $(function(){
  $(document).ready(function() {
    // $("p").first().addClass("intro");
    $('p:first').addClass("intro");

  });

  $(document).ready(function() {
    $("#less-link1").click(function() {
      $("#less-text1").slideToggle();
    });
    $("#less-link2").click(function() {
      $("#less-text2").slideToggle();
    });
  });
$(document).ready( function() {
  $(".hide").hide();

    $('a').click(function(){
      $(this).siblings(".bio").slideToggle();
      $(this).siblings("a").toggle();
      $(this).toggle();
    });

 });

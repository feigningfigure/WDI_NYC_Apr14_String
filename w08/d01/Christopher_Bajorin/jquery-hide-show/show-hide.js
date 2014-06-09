$(document).ready( function() {

  $(".hide").hide();

    $('.show').click(function(){
      $(this).siblings(".bio").slideToggle();
      $(this).siblings("a").toggle();
      $(this).toggle();
    });

  $('.hide').click(function(){
      $(this).siblings(".bio").slideToggle();
      $(this).siblings("a").toggle();
      $(this).toggle();
    });

 });

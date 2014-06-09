$(function(){
  $('.hide').hide();
  $('.bio').hide();

  $('.show').click(function(){
    $(this).siblings(".bio").slideToggle();
    $(this).siblings("a").toggle();
    $(this).toggle();
    console.log($(this));
  });

  $('.hide').click(function(){
    $(this).siblings(".bio").slideToggle();
    $(this).siblings("a").toggle();
    $(this).toggle();
  });

});








// Keri's Code =====================================
// $(function(){
//   $bio = $('.bio');

//   $bio.hide();
//   $('.hide').hide();

//   $('a.show').each(function(){
//     var thisLink = $(this)
//     thisLink.click(function(){
//       show(thisLink);
//     });
//   });

//   $('a.hide').each(function(){
//     var thisLink = $(this)
//     thisLink.click(function(){
//       hide(thisLink);
//     });
//   });

// });


// function show(callingLink){
//   callingLink.hide();
//   callingLink.next().show();
//   callingLink.next().next().slideToggle(200);
// }

// function hide(callingLink){
//   callingLink.hide();
//   callingLink.prev().show();
//   callingLink.next().slideToggle(200);
// }






// MY CODE ===================================
// function setEventHandlers() {

//   var $hide_show = $(".hide-show"),
//       $show = $(".show"),
//       $hide = $(".hide"),
//       $bio = $(".bio");
  
//   $(window).load(function(){
//     $bio.hide();
//     $show.show();
//     $hide.hide();
//   });

//   $show.click(function(){
//     $bio.slideToggle("slow");
//     $show.hide();
//     $hide.show();
//   });

//   $hide.click(function(){
//     $bio.slideToggle("slow");
//     $show.show();
//     $hide.hide();
//   });
// }

// $(function(){
//   setEventHandlers();
// });
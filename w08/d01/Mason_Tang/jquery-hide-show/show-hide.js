$(function(){
  $('.hide').hide();
  $('.bio').hide();

  $('a.show').each(function(){
    var thisLink = $(this);
    thisLink.click(function(){
      show(thisLink)
    });
  });

  $('a.hide').each(function(){
    var thisLink = $(this);
    thisLink.click(function(){
      hide(thisLink)
    });
  });

});

function show(callingLink) {
  callingLink.hide();
  callingLink.next().show();
  callingLink.next().next().slideToggle(200);
}
function hide(callingLink) {
  callingLink.hide();
  callingLink.prev().show();
  callingLink.next().slideToggle(200);
}

// Chris B.

// $(document).ready( function() {
//   $('.hide').hide();
//   $('.bio').hide();

//     $('.show').click(function(){
//       // console.log($(this).siblings("div"))
//       $(this).siblings(".bio").slideToggle();
//       $(this).siblings("a").toggle();
//       $(this).toggle();
//     });

//   $('.hide').click(function(){
//       // console.log($(this).siblings("div"))
//       $(this).siblings(".bio").slideToggle();
//       $(this).siblings("a").toggle();
//       $(this).toggle();
//     });

//  });


// Chris Lee
// $(".hide-show").children().show();

// function addEventListeners(){
//   $(".show").click(function(){
//      $(this).parent().find('.bio').slideToggle();
//   });

//   $(".hide").click(function(){
//      $(this).parent().find('.bio').slideToggle();
//   });
// }
// $(function(){
//   addEventListeners();
// });

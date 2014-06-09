$(function(){
  $('.hide').hide();
  $('.bio').hide();

  $('a.show').each(function(){
    var thisLink = $(this);
    $(this).click(function(){
      show(thisLink)
    });
  });

  $('a.hide').each(function(){
    var thisLink = $(this);
    $(this).click(function(){
      hide(thisLink)
    });
  });
});

function show(callingLink){
  callingLink.hide();
  callingLink.next().show();
  callingLink.next().next().slideToggle(200);
};
function show(callingLink){
  callingLink.hide();
  callingLink.prev().show();
  callingLink.next().slideToggle(200);
};



// $(".hide-show").children().show();

// function addEventListeners(){

//   $(".show").click(function(){
//     $(this).parent().find('.bio').slideToggle();
//   });

//   $(".hide").click(function(){
//     $(this).parent().find('.bio').slideToggle();
//   });
// };

// $(function(){
//   addEventListeners();
// });

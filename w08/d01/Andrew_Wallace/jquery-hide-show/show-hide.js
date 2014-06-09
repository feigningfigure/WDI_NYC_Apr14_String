$(function(){
  $('.hide').hide();
  $('.bio').hide();

  $('a.show').each(function(){
    var thisLink = $(this);
    thisLink.click(function(){
      show(thisLink);
    });
  });

  $('a.hide').each(function(){
    var thisLink = $(this);
    thisLink.click(function(){
      hide(thisLink);
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


// $( "hide-show" ).click(function() {
//   $( "div" ).hide( 1000 );
// });
$(function() {

$('.hide').hide();
$('.bio').hide();

$('a.show').each(function() {
  var thisLink = $(this);
     $(this).click(fucntion() {
          show(thisLink)


     });

     });

});





function show (callingLink) {
callingLink.hide();
callingLink.next().show();
callingLink.next(),slideToggle(200);


}


function hide (callingLink) {
callingLink.hide();
callingLink.prev().show();
callingLink.next(),slideToggle(200);


}


$(document).ready(function(){

// $("p:first-of-type").attr('class', 'intro');
$("p").first().addClass("intro");

$('#less-link1').click(function(){
  $('#less-text1').slideToggle('fast');
  $('#less-text1').toggleClass('hidden');

  if ($('#less-text1').hasClass('hidden')){
    $('#less-link1').text("More");
  } else {
    $('#less-link1').text("Less");
  }
});

$('#less-link2').click(function(){
  $('#less-text2').slideToggle('fast');
  $('#less-text2').toggleClass('hidden');
  if ($('#less-text2').hasClass('hidden')){
    $('#less-link2').text("More");
  } else {
    $('#less-link2').text("Less");
  }

});



$('#welcome').click(function(){
  $('body').toggleClass('crazy');
});

$( "#slider" ).slider();

$( "#draggable" ).draggable();
    $( "#droppable" ).droppable({
      drop: function( event, ui ) {
        $( this )
          .addClass( "ui-state-highlight" )
          .find( "p" )
            .html( "Dropped!" );
      }
    });



});




// p:first-of-type




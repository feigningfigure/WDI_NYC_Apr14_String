
$(document).ready(function(){

// $("p:first-of-type").attr('class', 'intro');
$("p").first().addClass("intro");

$('#less-link1').click(function(){
  $('#less-text1').toggleClass('hidden');
});

$('#less-link2').click(function(){
  $('#less-text2').toggleClass('hidden');
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




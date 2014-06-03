$(document).ready(function(){

// $('#greeting').hover(function(){
//   $(this).css("color", "green");
// });

// $('#greeting').mouseenter(function(){ $(this).css("color", "#CD3278");}).mouseleave(function(){ $(this).css("color", "#00868B");});

// $( '#greeting' ).hover(function() {
//   $( this ).fadeOut( 000 );
//   $( this ).fadeIn( 5000 );
// });

 // Grabs the jquery object for the ul.  Outside of event listener because we do not need to grab it every time the user clicks
  var todoList = $("#todo_list");

  // The anonymous passed into .click is a callback function
  $("#add_task_button").click(function(){
    // To get the value of the input field use $("#task_input").val()
    var input = $("#task_input");

    todoList.append('<li>\n\u2022' + input.val() + '</li>');

    input.val('');
  });

  setInterval(function() {
    $( '#greeting' ).fadeOut( 900 );
    $( '#greeting' ).fadeIn( 900 );
  }, 200);

// setInterval(function() {
//     $( '#add_task_button' ).css("background-color", "red");
//     $( '#add_task_button' ).css("background-color", "green");
//   }, 3300);

});

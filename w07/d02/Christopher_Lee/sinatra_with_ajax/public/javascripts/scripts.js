
function setEventHandlers(){
  $('#add_quiz_button').click(function(){
    console.log("Submit button has been clicked");
  })

  var $input = $("#quiz_input");

  // url of where we want ajax request to go to is the post route (/quizzes)
  $.ajax({
    url:'/quizzes',
    type: 'POST',
    dataType: 'json',
    // you don't always need data
    // data is your params
    data: {quiz_name: $input.val()},
    })
  };

// $ make something jQuery

$( document ).ready(function() {
  setEventHandlers();
});



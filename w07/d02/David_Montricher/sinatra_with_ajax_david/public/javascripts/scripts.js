function setEventHandler(){
  $("#add_quiz_button").click(function(){
    console.log("Submit button has been clicked!");

    var $input = $("#quiz_input");

    // this is how to AJAX using JQuery library. Name of method 'ajax' and takes 1 parameter. 'url', 'type' and 'dataType' are mandatory fields, 'data' is an optional field
    $.ajax({
      url: '/quizzes',
      type: 'POST',
      dataType: 'json',
      data: { quiz_name: $input.val()},
    })

  });
};

$( document ).ready(function(){


});

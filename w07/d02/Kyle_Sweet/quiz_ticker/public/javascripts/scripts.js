var intervalID = window.setInterval(setEventHandlers, 500);


function setEventHandlers(){

  $("#post_new_quiz").click(function(){

    var $input = $("#quiz_text_input");

    $.ajax({
      url:'/quiz',
      type: 'POST',
      dataType: 'json',
      data:{quiz_name: $input.val()},
    }).done(function(data){
      console.log(data);
      $input.val('');
    });
  });
}

$ ( document ).ready(function(){

  setEventHandlers();


});
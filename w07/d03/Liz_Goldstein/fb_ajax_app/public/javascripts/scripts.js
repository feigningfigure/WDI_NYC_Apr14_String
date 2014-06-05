function setEventHandlers(){

  $("#send_input_button").click(function(){

    console.log("Input button has been clicked");

    var $input = $("#facebook_search_request");

    $.ajax({
      url: '/records',
      type: 'POST',
      dataType: 'json' ,
      data: {fb_name: $input.val()},
    }).done(function(data){
      console.log(data);
      alert("You have added " + data);
      $input.val('');

    });

  });
}

$(document).ready(function(){

  setEventHandlers();


});

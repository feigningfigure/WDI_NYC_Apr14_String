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

var $show_button = $("#show_button");

  $show_button.click(function(){
    console.log("Show button has been clicked");


  $.ajax({
      url: '/records',
      type: 'GET',
      dataType: 'json',
    }).done(function(data){
      console.log(data);
      var $record_list = $("#record_list");
      $record_list.empty();
      data.records.forEach(function(item){
        $record_list.append("<li> <a id='show_name' href href='#'>Name: "+ item["name"] +"</a> </li>" + " <div id='toggle_list'> <li> ID: " + item["id"] + "</li> <li> Location: " + item["location"] + "</li> <li> Gender: " + item["gender"] + "</li><li> Username: " + item["username"] + "</li></div>" )
      })

    })
  });

 $( "#show_name" ).click('slow', function () {
    $("#toggle_list").toggle( showOrHide );
  });


}

$(document).ready(function(){

  setEventHandlers();


});

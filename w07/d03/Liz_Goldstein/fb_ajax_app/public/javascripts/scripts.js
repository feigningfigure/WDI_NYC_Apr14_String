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
        $record_list.append("<li> Name:"+ item["name"] +"</li> <li>" + item["id"] + "</li>")
      })

    })
  });

}

$(document).ready(function(){

  setEventHandlers();


});

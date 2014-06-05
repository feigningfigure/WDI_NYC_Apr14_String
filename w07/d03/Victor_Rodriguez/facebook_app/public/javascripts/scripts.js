  
function setEventHandlers(){

  $("#add_user_button").click(function(){
    console.log("Submit button has been clicked");

    var $input = $("#user_input");

    $.ajax({
      url: '/user_info',
      type: 'POST',
      dataType: 'json' ,
      data: {user_name: $input.val()},
    }).done(function(data){
      console.log(data);
      alert("You have added " + data);
      $input.val('');
    });

  });

  var $show_user_button = $("#show_user_button");

  $show_user_button.click(function(){
    console.log("Show button has been clicked");

    $.ajax({
      url: '/user_info',
      type: 'PUT',
      dataType: 'json',
    }).done(function(data){
      console.log(data);
      var $quiz_list = $("#user_list");
      $user_list.empty();
      data.user_info.forEach(function(item){
        $user_list.append("<li>"+ item["title"] +"</li>")
      })
    })
    })
});




$( document ).ready(function(){

  setEventHandlers();

});
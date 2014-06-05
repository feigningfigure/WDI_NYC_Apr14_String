function setEventHandlers(){

  $("#find_button").click(function(){
    console.log("find button clicked");

    var $input = $("#user_input");

    $.ajax({
      url: '/facebook',
      type: 'POST',
      dataType: 'json',
      data: {user_info: $input.val()}
    }).done(function(data){
      console.log(data);
      alert("You have added" + ("#fb_info")["name"]);
      $input.val('');
  });

});

      $.ajax({
      url: '/facebook',
      type: 'GET',
      dataType: 'json',
    }).done(function(data){
      console.log(data);
      var $fb_list = $("#fb_list");
      $fb_list.empty();
      data.fb_info.forEach(function(item){
        $fb_list.append("<li>"+ item["fb_view"] +"</li>")
    })
  });
}

$( document ).ready(function(){

  setEventHandlers();

});


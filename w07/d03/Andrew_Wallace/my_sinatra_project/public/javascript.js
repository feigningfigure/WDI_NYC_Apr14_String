function setEventHandlers(){

  var $find_friend = $("#find_friend");

  $find_friend.click(function(){
    console.log("Find on Facebook has been clicked");

    var $input = $("#username");

    $.ajax({
      url: '/friend_new',
      type: 'POST',
      dataType: 'json' ,
      data: {username: $input.val()},
    }).done(function(data){
      console.log(data);
      alert("You have added " + data);
      $input.val('');
    });
  });

    $.ajax({
      url: '/friends',
      type: 'GET',
      dataType: 'json',
    }).done(function(data){
      console.log(data);
      var $friend_data = $("#friend_data");
      $friend_data.empty();
      data.friends.forEach(function(data){
        $friend_data.html("<li>"+ data["id"] +"</li>")
        $friend_data.html("<li>"+ data["first_name"] +"</li>")
        $friend_data.html("<li>"+ data["last_name"] +"</li>")
        $friend_data.html("<li>"+ data["gender"] +"</li>")
        $friend_data.html("<li>"+ data["locale"] +"</li>")
      })
    })

  };

$(document).ready(function(){
  setEventHandlers();
});

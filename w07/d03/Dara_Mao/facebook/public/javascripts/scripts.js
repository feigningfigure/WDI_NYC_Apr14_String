
// // API
//     url = "http://graph.facebook.com/#{username}"
//     friend_json = HTTParty.get(url)
//     friend = JSON(friend_json)
// // Get the first name, last name
//     first_name = @friend["first_name"]
//     // last_name = @friend["last_name"]

// function setEventHandlers(){


$(document).ready(function(){
    $("#search_button").click(function(){


// //POST search to data
        var $input = $("#search_input");
        // alert("hello world");
        // alert("$input");

        $.ajax({
              url: '/friends',
              type: 'POST',
              dataType: 'json',
              data: {first_name: $input.val()}
            }).done(function(data){
              console.log(data);
              alert("You have added " + data);
              $input.val('');
            });

            $.ajax({
                    url: '/friends',
                    type: 'GET',
                    dataType: 'json'
              }).done(function(data){
                    console.log(data);
                    var $user_list = $("#user_list");
                    $user_list.empty();
                    data.friends.forEach(function(item){
                          $user_list.append("<li>"+ item["first_name"] +"</li>")
              })
              });


// // GET display search results

    }); // search_button click event ends

}); // setEventHandlers ends

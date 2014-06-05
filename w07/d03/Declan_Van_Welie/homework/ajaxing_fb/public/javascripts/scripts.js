function setEventHandlers(){




$('#logo').animate({
    bottom: '-=10px'
}, 1000);



$("#find_user_button").click(function(){
  // Putting the $ in front of the variable name is good practice so you can know that the variable is a JQuery variable.

 var $input = $("#user_name_input");


 // syntax of an ajax request using JQuery
// calling an ajax method on the base jquery
// Takes one pararmeter, which must be a hash.
// Ajax request will make an html request for us.

// URl: the URL where we want to go.
 $.ajax({
    url: '/users',
    type: 'POST',
    dataType: 'json',
    // Optional field. data can be a params hash, or whatever else you want to send back to the browser
    data: {user_name: $input.val()}
    }).done(function(data){
        console.log(data);
        // alert("You've added" + " " + data);

        $input.val("");

          })
    });

//   $.ajax({
//     url: '/users',
//     type: 'GET',
//     dataType: 'json'
//     }).done(function(data){
//       console.log(data);
// $("#answer span").text(data.users);
      // data.users.last(function(){
      // $show_users.prepend(
      // "<li class='user_item'>" + item["user"].name + "</li> \
      // <div class='user_data'> \
      // <li>" + item["user"].username + "</li> \
      // <li>" + item["user"].gender + "</li> \
      // <li>" + item["user"].locale + "</li> \
      // <li>" + item["user"].id + "</li> \
      // </div>"
      // )

      // })


     // })



var $show_button = $("#show_users");

$show_button.click(function(){

  console.log("show button has been clicked");


var $show_users = $("#user_list");

    $.ajax({
    url: '/users',
    type: 'GET',
    dataType: 'json'
    }).done(function(data){
      console.log(data);

      $show_users.empty();
      data.users.forEach(function(item){
      $show_users.prepend(
      "<li class='user_item'>" + item["user"].name + "</li> \
      <div class='user_data'> \
      <li>" + item["user"].username + "</li> \
      <li>" + item["user"].gender + "</li> \
      <li>" + item["user"].locale + "</li> \
      <li>" + item["user"].id + "</li> \
      </div>"
      )

      })
  // for (i=0; i<data.quizzes.length; i++){

 // if (data.quizzes.length-1()["name"] === "Michael Jackson") {
    $('.user_item').click(function(){
      $('.user_data').slideToggle( "slow");
    })

// },5000);

      })
    });


}




$(document).ready(function(){

  // Wrap all of your event handlers, and then call them within your document.ready. It's much cleaner. You create the event handlers as global, meaning they're accessible anywhere else in the document.

setEventHandlers();



});

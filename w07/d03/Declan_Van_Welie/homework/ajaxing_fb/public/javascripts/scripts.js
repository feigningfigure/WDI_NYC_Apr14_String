function setEventHandlers(){





$("#find_user_button").click(function(){

  // Putting the $ in front of the variable name is good practice so you can know that the variable is a JQuery variable.

 var $input = $("#user_name_input");

 // syntax of an ajax request using JQuery
// calling an ajax method on the base jquery
// Takes one pararmeter, which must be a hash.
// Ajax request will make an html request for us.

// URl: the URL where we want to go.
 $.ajax({
  url: '/quizzes',
  type: 'POST',
  dataType: 'json',
  // Optional field. data can be a params hash, or whatever else you want to send back to the browser
  data: {quiz_name: $input.val()}
 }).done(function(data){
  console.log(data);
  // alert("You've added" + " " + data);
  $input.val("");
 });

});



var $show_button = $("#show_users");

$show_button.click(function(){

  console.log("show button has been clicked");

setInterval(function(){

var $show_users = $("#show_div");

  $.ajax({
  url: '/quizzes',
  type: 'GET',
  dataType: 'json',
 }).done(function(data){
  console.log(data);

$show_users.empty();
data.quizzes.forEach(function(item){
$show_users.prepend("<li>" + item["name"] + "</li>")

})
  // for (i=0; i<data.quizzes.length; i++){

 // if (data.quizzes.length-1()["name"] === "Michael Jackson") {


},5000);

  })
});


}




$(document).ready(function(){

  // Wrap all of your event handlers, and then call them within your document.ready. It's much cleaner. You create the event handlers as global, meaning they're accessible anywhere else in the document.

setEventHandlers();



});

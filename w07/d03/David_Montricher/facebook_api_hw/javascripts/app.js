$("#demo").live("click", function () {
var fbId = $("#fbId").val();
$.getJSON('https://graph.facebook.com/' + fbId + '?callback=?', OnCallBack);
});
function OnCallBack(r, s) {
  var html = "";
  // if (s == "success" && !r.error) {
    for (p in r) {
        html += p + ": " + r[p] + "<br />";
    }
// } else {
//       html = r.error.message;
// }
  $("#dv").html(html);
}



// $(document).ready(function(){

// var todoList = $("#username_list")

//   // The anonymous function passed into .click is a callback function
//   $("#find_username_button").click(function(){

//     // To get the value of the input field use $("#username_input").val()
//     var input = $("#username_input")

//     // Adds user input to the ul
//     usernameList.append('<li>' + input.val() + '</li>');

//     // Clears the input form
//     input.val('');
//   });

// });



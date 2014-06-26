$(document).ready(function() {


$('#hello').click( function() { alert('clicked'); });


// var $beastTemplate = _.template($("#beastTemplate").text());
var $beastList = $("#beast_list")


//  var beastsHTML = beastTemplate(best);
//     $beastList.append(beastsHTML);

var getRequest = function(){
      $.ajax({
      url: '/beasts',
      type: 'GET',
      dataType: 'json',
      data: postData
      }).done(function(data){
      console.log(data);
      // data.forEach(function(beast){
      //     $("#beastlist").html("<h1>" + beast["name"] + "</h1>"
      //       );
    });
}

$('#diets input').on('change', function() {
   console.log($('input[name=diet]:checked', '#diets').val());
   var dietType = ($('input[name=diet]:checked', '#diets').val());

postData = {
  "params[diet]": dietType
}

console.log(postData);
getRequest();

///



  });



});

// $('#myForm input').on('change', function() {
//    alert($('input[name=radioName]:checked', '#myForm').val());
// });


// });

 // var userTemplate = _.template($("#userTemplate").text());
 //    var $userList = $("#user_list");

// $("#add_new_user").click(function() {
//         var user = {
//             name: $("#new_user_name").val(),
//             favorite_color: $("#new_user_favorite_color").val()
//         };

//         var userHTML = userTemplate(user);
//         $userList.append(userHTML);

//         $.ajax({
//             url: "/users",
//             type: "POST",
//             dataType: "json",
//             data: user
//         }).done(function(data) {
//             if (data.message == "FAILURE") {
//                 alert("OH NO, FAILURE! Removing element now.");
//                 $userList.children().last().remove();
//             }
//         });

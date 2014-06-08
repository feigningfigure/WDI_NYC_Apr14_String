$(document).ready(function() {


$('#hello').click( function() { alert('clicked'); });

// var $diet_type = $(#diet_choice).val()

// var $beastTemplate = _.template($("#beastTemplate").text());
// var $beastList = $(#"beastlist")


//  var beastsHTML = beastTemplate(best);
//     $beastList.append(beastsHTML);

$('#diets input').on('change', function() {
   console.log($('input[name=diet]:checked', '#diets').val());
   var dietType = ($('input[name=diet]:checked', '#diets').val());

postData = {
  "params[diet]": dietType
}
console.log(postData);

// $.ajax({
//       url: '/beasts',
//       type: 'GET',
//       dataType: 'json',
//     }).done(function(data){
//       console.log(data);
//       var $beastlist = $("#beastlist");
//       $quiz_list.empty();
//       data.quizzes.forEach(function(item){
//         $quiz_list.append("<li>"+ item["title"] +"</li>")
//       })

//     })
//   });



});

// $('#myForm input').on('change', function() {
//    alert($('input[name=radioName]:checked', '#myForm').val());
// });


});

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

function pullProfiles(){
  var $profile_list = $("#profile_list");
    $.ajax({
      url:'/profiles',
      type: 'GET',
      dataType: 'json'
    }).done(function(data){
      console.log(data);
      $profile_list.empty();
      data.profiles.forEach(function(item){
        $profile_list.prepend(
          "<li class='profile-title'>"+ "id: " + item["id"] +"</li>",
          "<li class='profile-title'>"+ "first_name: " + item["first_name"] +"</li>",
          "<li class='profile-title'>"+ "middle_name: " + item["middle_name"] +"</li>",
          "<li class='profile-title'>"+ "last_name: " + item["last_name"] +"</li>",
          "<li class='profile-title'>"+ "locale_name: " + item["locale"] +"</li>",
          "<li class='profile-title'>"+ "gender: " + item["gender"] +"</li>",
          "<li class='profile-title'>"+ "username: " + item["username"] +"</li>",
          "<li class='profile-title'>"+ "name: " + item["name"] +"</li>"
          )
      })
     })
  }


function setEventHandlers(){
  var $input = $("#facebook_search_input");
$('#add_profile_button').click(function(){
  console.log("Submit button has been clicked");
  $.ajax({
    url:'/profiles',
    type: 'POST',
    dataType: 'json',
    data: {facebook_search: $input.val()},
    }).done(function(data){
    //console.log(data);
    // alert("You have added " + data)
    pullProfiles();
      $input.val('');
      });
    });
}

$( document ).ready(function() {
  setEventHandlers();
  // you don't want this to go on forever
  // you want it to stop after someone adds something
  setInterval(function(){pullProfiles()},1000);
});

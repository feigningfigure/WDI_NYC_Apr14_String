var i = 0;

function pullProfiles(){
  i=0;
  var $profileList = $("#profile-list");
    $.ajax({
      url:'/profiles',
      type: 'GET',
      dataType: 'json'
    }).done(function(data){
      console.log(data);
      $profileList.empty();
      //console.log(data.profiles[(data.profiles.length-1)]["name"]);
      // console.log(data.profiles[(data.profiles.length-1)]);
      $("#individual").text("");
      for(var key in data.profiles[(data.profiles.length-1)]) {
        $("#individual").prepend(
          "<li class='individual-title'>"+ key + " " + data.profiles[(data.profiles.length-1)][key] + "</li>"
          )};

      // data.profiles[(data.profiles.length-1)].forEach(function(trait){

      // });
      data.profiles.forEach(function(item){
        i++;
        $profileList.prepend(
          "<li class='profile-title'>"+ "<h3 class='less-link' id='less-link" + i + "'>" + item["name"] + "</h3>" + "</li> \
          <div class='less-text' id='less-text" + i + "'> <li class='profile-detail'>"+ "id: " + item["id"] +"</li><li class='profile-detail'>"+ "first_name: " + item["first_name"] +"</li><li class='profile-detail'>"+ "middle_name: " + item["middle_name"] +"</li><li class='profile-detail'>"+ "last_name: " + item["last_name"] +"</li><li class='profile-detail'>"+ "locale_name: " + item["locale"] +"</li><li class='profile-detail'>"+ "gender: " + item["gender"] +"</li><li class='profile-detail'>"+ "username: " + item["username"] +"</li></div>"
          )
      })
      setClicks();
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

  $(function() {
    $("#list-link").click(function () {
      $("#profile-list").slideToggle();
    });
  });

}

function setClicks(){
  $(function() {
    $("#less-link1").click(function () {
      console.log("i'm clicked");
      $("#less-text1").slideToggle();
    });
    $("#less-link2").click(function () {
      console.log("i'm clicked");
      $("#less-text2").slideToggle();
    });
  });
}

$( document ).ready(function() {
  setEventHandlers();
  // you don't want this to go on forever
  // you want it to stop after someone adds something
  pullProfiles();
  //setInterval(function(){pullProfiles()},1000);
});





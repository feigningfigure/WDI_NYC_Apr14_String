// need to setclicks for the JS to work
// also AJAX get requests for pages

function addEventListeners(){
  setBeastClicks();
  loadWelcome();

  $.ajax({
      url: '/tasks',
      type: "GET",
      dataType: "json"
    }).done(function(httpResponse){
      console.log("got httpresponse")
      console.log(httpResponse);

    });

  // $("#list-beasts").on('click', "a", function(){
  //   console.log("beasts is clicked");
  //   $("#beasts").show();
  //   //setBeastClicks();
  // });


  $("#list-beasts").click(function() {
      $("#welcome-message").hide();
      console.log("beasts is clicked");
      $("#beasts").show();
      setBeastClicks();
     // $("#beasts").removeClass("hidden");
  });

  $("#home").click(function() {
    console.log("home is clicked");
    $("#beasts").hide();
    $("#welcome-message").show();
    loadWelcome();
     // $("#beasts").removeClass("hidden");
  });

}

function loadWelcome(){
  //$("#beasts").hide();
  var welcomeTemplate = _.template($("#welcome-template").text());
  var message = { message: "Welcome" };
  $("#welcome-template").empty();
    $("main").prepend(
      welcomeTemplate(message)
    );
}

function setBeastClicks(){
  $('#beast-form input').on('change', function() {
   //alert($('input[name=diet]:checked', '#beast-form').val());
   var diet = ($('input[name=diet]:checked', '#beast-form').val());
   console.log(diet);
   switch(diet) {
    case "herbivore":
        $("article[data-diet='herbivore']").show();
        $("article[data-diet='omnivore']").hide();
        $("article[data-diet='carnivore']").hide();
        break;
    case "omnivore":
        $("article[data-diet='omnivore']").show();
        $("article[data-diet='herbivore']").hide();
        $("article[data-diet='carnivore']").hide();
        break;
    case "carnivore":
        $("article[data-diet='carnivore']").show();
        $("article[data-diet='omnivore']").hide();
        $("article[data-diet='herbivore']").hide();
        break;
    default:
        $("article[data-diet='carnivore']").show();
        $("article[data-diet='omnivore']").show();
        $("article[data-diet='herbivore']").show();
    }
  });
}

$(document).ready(function() {
  addEventListeners();
});

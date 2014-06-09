// need to setclicks for the JS to work
// also AJAX get requests for pages

function addEventListeners(){
  setBeastClicks();
  loadWelcome();

  $("#new-beast").click(function () {
    $("#new-beast-form").slideToggle();
  });

  // $.ajax({
  //     url: '/',
  //     type: "GET",
  //     dataType: "json"
  //   }).done(function(){
  //     $("#beasts").hide();
  //   });

  // $("#list-beasts").on('click', "a", function(){
  //   console.log("beasts is clicked");
  //   $("#beasts").show();
  //   //setBeastClicks();
  // });
      $(".remote-delete").click(function() {
        console.log("delete clicked");
        var $id = $(this).attr('id');
        var hideId = "beast-" + $(this).attr('id');
        console.log(hideId);
        $("#" + hideId).hide();
        $.ajax({
        url: "/beasts/" + $id,
        type: "delete",
        dataType: "json"
        }).done(function(data){
        console.log("sucessfully deleted!");
        });
      });



  $("#list-beasts").click(function() {
      $("#welcome-message").hide();
      console.log("beasts is clicked");
      $.ajax({
        url: '/',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        console.log(data);
        });

      $("#beasts").show();
      setBeastClicks();
      newBeast();
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

function newBeast(){
  var newBeastTemplate = _.template($("#newBeastTemplate").text());
  var $beastList = $("#beast-list");
  console.log("newBeast activated");
  $("#add_beast_button").click(function(){
        var newBeast = {
          name: $("#name_input").val(),
          diet: $("#diet_input").val(),
          light_ethology: $("#light_ethology_input").val(),
          habitat: $("#habitat_input").val(),
          size: $("#size_input").val(),
          description: $("#beast-description").val(),
          image_filename: $("#image_input").val()
        };

        var newBeastHTML = newBeastTemplate(newBeast);
        $beastList.prepend(newBeastHTML);

        $.ajax({
            url: "/beasts",
            type: "POST",
            dataType: "json",
            data: newBeast
        }).done(function(data){
            console.log(data);
            console.log("ajax worked");
            });
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
  // $("#beasts").hide();
  addEventListeners();
});





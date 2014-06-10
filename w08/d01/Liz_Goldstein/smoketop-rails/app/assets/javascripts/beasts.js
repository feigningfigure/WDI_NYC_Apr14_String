var beastTemplate;

var beast = {

  fetch: function(id) {
    var $this = this;
    console.log("What is this?", this);
    $.ajax({
      url: "/beasts/" + id,
      type: "GET",
      dataType: "json"
    }).done(function(result) {
      console.log("What is this?", this);
      console.log("What is $this?", $this);
      $this.name = result.name;
      $this.size = result.size;
      $this.habitat = result.habitat;
    });
  }

};

function repopulateBeastList(diet) {
    var options = {
      diet: diet
    };

  $.ajax({
    url: "/beasts",
    type: "GET",
    dataType: "json",
    data: options
  }).done(function(results) {
    repopulateBeastListFromData(results);
  });
}

function oldRepopulateBeastList(diet) {

    // There's no way to pass a data object directly to the
    // $.load() function without it assuming that we want a POST
    // request, so I'm manually creating the query string parameters
    // to use convenient data object syntax.
    var options = {
      diet: diet,
      partial: true
    };

    var queryString = $.param(options);

    // This line is 100% functionally identical to the $.ajax() call below.
    $("#beast-list").load("/beasts?" + queryString);

    /*
    $.ajax({
        url: "/beasts",
        type: "GET",
        dataType: "html",
        data: options
    }).done(function(response) {
        $("#beast-list").html(response);
    });
    */

}

function repopulateBeastListFromData(beasts) {
  $("#beast-list").empty();
  beasts.forEach(function(beast) {
    var beastHTML = beastTemplate({"beast": beast});
    $("#beast-list").prepend(beastHTML);
  });
}



function setEventListeners() {

$("#new_form").hide();
$("#add_link").click(function(){
     $("#new_form").slideToggle();
     $("#add_link").hide();
  });

  jQuery("#diet-filter input:radio[name=diet]").click(function() {
    // This was the old way of doing it where the server returned HTML
    // oldRepopulateBeastList($(this).val());
    console.log("What is this?", this);
    console.log("What is $(this)?", jQuery(this));
    repopulateBeastList(jQuery(this).val());
  });


var newBeastTemplate = _.template($("#newBeastTemplate").text());

var beastPix = ["broog.png",
"cloud_mite.png",
"crocotillion.png",
"dune_bonk.png",
"finbus.png",
"meleunic.png",
"moggen.png",
"nighe.png",
"scryfledge.png",
"shadewink.png",
"steins_owl.png",
"tiller_platypus.png",
"unavailable.png",
"whargl.png",
"windusk.png",
"yoink.png"]

var randpic = beastPix[Math.floor(Math.random() * beastPix.length)];


$("#add_new_beast").click(function() {
  var beast = {
  name: $("#new_name").val(),
  diet: $("#new_diet").val(),
  habitat: $("#new_habitat").val(),
  light_ethology: $("#new_light_ethology").val(),
  size: $("#new_size").val(),
  image_filename: randpic,
  description: $("#new_description").val()
};
  var newBeastHTML = newBeastTemplate(beast);

$.ajax({
  url: "/beasts",
  type: "POST",
  dataType: "json",
  data: beast
}).done(function(data){
  console.log(data);
});

/// bellow closes brackets
});

}

  // $("#beast-list").prepend(newBeastHTML);


// $("#add_new_user").click(function() {
// var user = {
// name: $("#new_user_name").val(),
// favorite_color: $("#new_user_favorite_color").val() };
// var userHTML = userTemplate(user);
//$userList.append(userHTML);
// $.ajax({
// url: "/users",
// type: "POST", dataType: "json", data: user
// }).done(function(data) {
// if (data.message == "FAILURE") {
// alert("OH NO, FAILURE! Removing element now.");
// $userList.children().last().remove(); }
// }); });

$(document).ready(function() {

  beastTemplate = _.template($("#beast-template").text());

  setEventListeners();

  var html = beastTemplate({
    beast: {
      id: 5,
      name: "Crocotillion",
      image_filename: "crocotillion.png",
      diet: "carnivore",
      light_ethology: "nocturnal",
      habitat: "swamp",
      size: "large",
      description_paragraphs: ["lol words"]
    }
  })

  // $("#beast-list").html(html);

  // $.ajax({
  //   url: "/beasts",
  //   dataType: "json",
  //   type: "GET"
  // }).done(function(beasts) {
  //   repopulateBeastListFromData(beasts);
  // });

  repopulateBeastListFromData(beastData);

});


// Ruby
// { name: "Whargl" }
// { :name => "Whargl" }

// Javascript
// { name: "Whargl" }
// { "name": "Whargl" }



















var beastTemplate;

var beast = {

	fetch: function(id) {
		$.ajax({
			url: "/beasts" + id,
			type: "GET",
			dataType: "json"
		}).done({
			
		})
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
  var beastTemplate = _.template($("#beast-template").text());

  $("#beast-list").empty();
  beasts.forEach(function(beast) {
    var beastHTML = beastTemplate({"beast": beast});
    $("#beast-list").append(beastHTML);
  });
}



function setEventListeners() {

  $("#diet-filter input:radio[name=diet]").click(function() {
    // This was the old way of doing it where the server returned HTML
    // oldRepopulateBeastList($(this).val());

    repopulateBeastList($(this).val());
  });

}

$(document).ready(function() {

  setEventListeners();

  // var html = beastTemplate({
  //   beast: {
  //     id: 5,
  //     name: "Crocotillion",
  //     image_filename: "crocotillion.png",
  //     diet: "carnivore",
  //     light_ethology: "nocturnal",
  //     habitat: "swamp",
  //     size: "large",
  //     description_paragraphs: ["lol words"]
  //   }
  // })

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
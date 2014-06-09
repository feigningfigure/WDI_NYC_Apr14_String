$(document).ready(function() {

    var beastTemplate = _.template($("#beastTemplate").text());
    var beastList = $("#beast-list");
    $("#add_new_beast").click(function() {
binding.pry
    var beast = {
      name: $("#new_beast_name").val()
  //     diet: $("#new_beast_diet").val(),
  //     light_ethology: $("#new_beast_light_ethology").val(),
  //     habitat: $("#new_beast_habitat").val(),
  //     size: $("#new_beast_size").val(),
  //     description: $("#new_beast_description").val(),
  //     image_filename: $("#new_beast_image_filename").val()
    };

      var beastHTML = beastTemplate(beast);
      $beastList.append(beastHTML);

    $.ajax({
        url: "/beasts",
        type: "POST",
        dataType: "json",
        data: beast
    }).done(function(data) {
        if (data.message == "FAILURE") {
          alert("OH NO, FAILURE! Removing element now.");
          $beastList.children().last().remove();
        }

    });

  });


});


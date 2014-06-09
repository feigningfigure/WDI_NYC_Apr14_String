$(document).ready(function() {

  var beastTemplate = _.template($("#beastTemplate").text());

  var $beastList = $("#beast_list");

  $("#add_new_beast").click(function() {
    var beast = {
        name: $("#new_beast_name").val(),
        diet: $("#new_beast_favorite_color").val(),
        light_ethology: $("#new_beast_light_ethology").val(),
        habitat: $("new_beast_habitat").val(),
        size: $("new_beast_size").val(),
        description: $("new_beast_description").val(),
        image_filename: $("new_beast_image_filename").val()
    };
    var userHTML = beastTemplate(beast);

    $beastList.append(userHTML);

    $.ajax({
        url: "/beasts",
        type: "POST",
        dataType: "json",
        data: beast
    }).done(function(data) {
      if (data.message == "FAILURE") {
          alert("Error message: There was a problem. Removing beast entry now.");
        $beastList.children().last().remove();
      }
    });
  });
});

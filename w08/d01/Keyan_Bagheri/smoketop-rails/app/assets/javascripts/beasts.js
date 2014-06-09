function repopulateBeastList(diet) {

    var data = $.param({
      diet: diet,
      partial: true
      // makes it so that you only load the exact html you need to get user request (not entire page)
    });

    var queryString = $.param(options);

    // $("#beast-list").load("/beasts?" + data);

    // ajax below is identical to .load above!!!!!

    $.ajax({
      url: "/beasts",
      type: "GET",
      dataType: "html",
      data: options
    }).done(function(response) {
      $("beast-list").html(response);
    });

}

function setEventListeners() {

  $("#diet-filter input:radio[name=diet]").click(function() {
    repopulateBeastList($(this).val());
  });

}

$(document).ready(function() {

  setEventListeners();

});

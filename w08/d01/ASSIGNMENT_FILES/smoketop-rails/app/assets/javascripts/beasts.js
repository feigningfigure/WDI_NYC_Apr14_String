function repopulateBeastList(diet) {

    // There's no way to pass a data object directly to the
    // $.load() function without it assuming that we want a POST
    // request, so I'm manually creating the query string parameters
    // to use convenient data object syntax.
    var options = {
      diet: diet,
      partial: true
    };

    var queryString = $.param(options);

    // $("#beast-list").load("/beasts?" + options);

    $.ajax({
        url: "/beasts",
        type: "GET",
        dataType: "html",
        data: options
    }).done(function(response) {
        $("#beast-list").html(response);
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

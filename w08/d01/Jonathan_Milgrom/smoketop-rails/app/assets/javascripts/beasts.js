function repopulateBeastList(diet) {

    var data = $.param({
      diet: diet,
      partial: true
    });

    $("#beast-list").load("/beasts?" + data);

}

function setEventListeners() {

  $("#diet-filter input:radio[name=diet]").click(function() {
    repopulateBeastList($(this).val());
  });

}

$(document).ready(function() {

  setEventListeners();

});

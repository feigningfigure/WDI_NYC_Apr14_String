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
  // var rawTemplate = $("beast-template")


  var beastTemplate = _.template($("#beast-template").text());

  // create a template
  console.log(
    beastTemplate({
      beast: {
        id: 5,
        name: "Crocotillion"
      }
    })
  );
});

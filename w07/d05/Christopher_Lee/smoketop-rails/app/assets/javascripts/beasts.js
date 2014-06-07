
function addEventListeners(){
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

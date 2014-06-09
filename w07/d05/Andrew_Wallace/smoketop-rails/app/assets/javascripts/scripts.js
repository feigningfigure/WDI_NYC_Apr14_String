function setEventHandlers() {

  var $filter = $("#filter");

  $filter.click(function(){
    var diet_choice = $(".diet_choice:checked").val(),
        beast = new Beast,
        $beast_list = $("#beast-list");

    beast.filter(diet_choice);

    if (diet_choice === "any") {
      $beast_list.load("beasts?diet=any .beast");
    } else if (diet_choice === "herbivore") {
      $beast_list.load("beasts?diet=herbivore .beast");
    } else if (diet_choice === "carnivore"){
      $beast_list.load("beasts?diet=carnivore .beast");
    } else {
      $beast_list.load("beasts?diet=omnivore .beast");
    }
  });

  var Beast = function(){
    this.filter = function(filter_choice){
      $.ajax({
        url: '/beasts',
        type: 'GET',
        dataType: 'json',
        data: { "diet": filter_choice }
      }).done(function() {

        console.log("hello");
      });

    }
  }
}


$(function() {

  setEventHandlers();

})

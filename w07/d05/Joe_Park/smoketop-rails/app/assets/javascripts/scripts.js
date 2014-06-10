function setEventHandlers() {

  var $add_filter = $("#add_filter");

  $add_filter.click(function(){
    var diet_choice = $(".diet_choice:checked").val(),
        // beast = new Beast,
        $beast_list = $("#beast-list"),
        stringQuery = "beasts?diet=" + diet_choice + " .beast";

    // beast.filter(diet_choice);
    $beast_list.load(stringQuery);

    // if (diet_choice === "any") {
    //   $beast_list.load("beasts?diet=any .beast");
    // } else if (diet_choice === "herbivore") {
    //   $beast_list.load("beasts?diet=herbivore .beast");
    // } else if (diet_choice === "carnivore"){
    //   $beast_list.load("beasts?diet=carnivore .beast");
    // } else if (diet_choice === "omnivore"){
    //   $beast_list.load("beasts?diet=omnivore .beast");
    // }
  });



  // var Beast = function(){
  //   this.filter = function(filter_choice){
  //     $.ajax({
  //       url: '/beasts',
  //       type: 'GET',
  //       dataType: 'json',
  //       data: { "diet": filter_choice }
  //     }).done(function() {
        
  //       console.log("hello");
  //     });

  //   }
  // }
}


$(function() {

  setEventHandlers();

})

// $("#radio_1").prop("checked", true)
// beasts?diet=canivore
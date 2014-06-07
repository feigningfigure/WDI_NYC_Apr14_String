function setEventHandlers() {

  // Add in EventHandlaers here (the code to listen for the clicks and interactions on the client side.)

  var $beast_list = $(".beast_list"),
      $home_button = $("#home_button"),
      $beast_list_button = $("#beasts_list_button"),
      $about_button = $("#about_button");

  $beast_list_button.click(function(){
    var beast = new Beast;
    beast.list();
    // beast_list_button.click(function() closing braces
  });




  // We'll need to setup the Ajax call for the get requests

  var Beast = function(){

    this.list = function(){
      $.ajax({
        url: '/beasts',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        $beast_list.empty();
        data.forEach(function(beast){
          $beast_list.append("<li id='" + beast["id"] + "'>" + beast["name"] + "</li>");
          // data.forEach closing brackets/braces
        });
        // this.list .done function closing brace
      });
      // this.list function closing brace
    }






    // Closing brace for Beast function
  }

// Closing brace for setEventHandlers
}

$(function() {

  setEventHandlers();

});

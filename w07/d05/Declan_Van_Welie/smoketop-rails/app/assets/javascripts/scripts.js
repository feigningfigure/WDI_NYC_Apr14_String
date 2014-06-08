function setEventHandlers() {

  // Add in EventHandlaers here (the code to listen for the clicks and interactions on the client side.)

  var $show_section = $(".show_all"),
      $beast_list = $(".beast_list"),
      $home_button = $("#home_button"),
      $beast_list_button = $("#beasts_list_button"),
      $about_button = $("#about_button");

  $beast_list_button.click(function(){
    var beast = new Beast;
    $show_section.html("<h1> Beasties below... </h1>");
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
        // $beast_list.empty();



        data.forEach(function(beast){
          $show_section.append(
            "<article class='beast' id='beast-" + beast["id"] + "'> \
            <header> \
            <h1>" + beast["name"] + "</h1> \
            </header> \
            </article>"
            );
          // data.forEach closing brackets/braces
        });
        // this.list .done function closing brace
      });
      // this.list function closing brace
    }


  // <article class="beast" id="beast-<%= beast.id %>">
 //    <header>
 //      <h1><%= beast.name %></h1>
 //      <%= image_tag(beast.image_filename || 'unavailable.png') %>
 //    </header>
 //    <section class="entry-body">
 //      <%= attribute_table beast, %w(diet habitat light_ethology size) %>
 //      <% beast.description_paragraphs.each do |p| %>
 //        <p><%= p %></p>
 //      <% end %>
 //    </section>
 //  </article>



 // "<li id='" + beast["id"] + "'>" + beast["name"] + "</li>");



    // Closing brace for Beast function
  }

// Closing brace for setEventHandlers
}

$(function() {

  setEventHandlers();

});

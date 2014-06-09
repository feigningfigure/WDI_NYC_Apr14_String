function setEventHandlers() {

  // Add in EventHandlaers here (the code to listen for the clicks and interactions on the client side.)

  var $show_section = $(".show_all"),
      $beast_list = $(".beast_list"),
      $home_button = $("#home_button"),
      $beast_list_button = $("#beasts_list_button"),
      $about_button = $("#about_button"),
      $diet_button_submit = $(".diet_button_submit"),
      $new_button_submit = $(".new_button_submit"),
      $name_input = $(".name"),
      $diet_input = $(".diet"),
      $light_ethology_input = $(".light_ethology"),
      $habitat_input = $(".habitat"),
      $size_input = $(".size"),
      $description_input = $(".description"),
      $image_filename_input =$(".image_filename");

  $home_button.click(function(){
    $show_section.html("<h1>  Welcome! </h1>");
  });

  $beast_list_button.click(function(){
    var beast = new Beast;
    $show_section.html(
      "<h1> Beasties below... </h1> \
      <strong>Diet:</strong> \
      <form action='get' class='diet_form'> \
      <input type='radio' name='diet' value='any'>Any<br> \
      <input type='radio' name='diet' value='herbivore'>Herbivore<br> \
      <input type='radio' name='diet' value='carnivore'>Carnivore<br> \
      <input type='radio' name='diet' value='omnivore'>Omnivore<br> \
      <input type='submit' value='Filter' class='diet_button_submit'> \
      </form> \
      <strong>New Beast:</strong> \
      <form action='post'> \
      Name: <input type='text' name='name' class='name' /><br /> \
      Diet: <input type='text' name='diet' class='diet' /><br /> \
      Light ethology: <input type='text' name='light_ethology' class='light_ethology' /><br /> \
      Habitat: <input type='text' name='habitat' class='habitat' /><br /> \
      Size: <input type='text' name='size' class='size' /><br /> \
      Description: <input type='text' name='description' class='description' /><br /> \
      Image Filename: <input type='text' name='image_filename' class='image_filename' /><br /> \
      <input type='submit' value='Submit' class='new_button_submit'/> \
      </form>"
      );

    beast.list_all();
    $beast_list.empty();
    // beast_list_button.click(function() closing braces
  });

    $show_section.on('click', '.diet_button_submit', function(params) {
      var beast = new Beast;
      var $checkedradio = $('[name="diet"]:radio:checked').val();

      alert($checkedradio);
      $show_section.html(
      "<h1> Beasties below... </h1> \
      <strong>Diet:</strong> \
      <form action=''> \
      <input type='radio' name='diet' value='any'>Any<br> \
      <input type='radio' name='diet' value='herbivore'>Herbivore<br> \
      <input type='radio' name='diet' value='carnivore'>Carnivore<br> \
      <input type='radio' name='diet' value='omnivore'>Omnivore<br> \
      <input type='submit' value='Filter' class='diet_button_submit'> \
      </form> \
     <strong>New Beast:</strong> \
      <form action='post'> \
      Name: <input type='text' name='name' class='name' /><br /> \
      Diet: <input type='text' name='diet' class='diet' /><br /> \
      Light ethology: <input type='text' name='light_ethology' class='light_ethology' /><br /> \
      Habitat: <input type='text' name='habitat' class='habitat' /><br /> \
      Size: <input type='text' name='size' class='size' /><br /> \
      Description: <input type='text' name='description' class='description' /><br /> \
      Image Filename: <input type='text' name='image_filename' class='image_filename' /><br /> \
      <input type='submit' value='Submit' class='new_button_submit'/> \
      </form>"
      );

      if ($checkedradio === "any"){
        beast.list_all();}
      else if ($checkedradio === "herbivore"){
        beast.list_herbivore();}
      else if ($checkedradio === "carnivore"){
        beast.list_carnivore();}
      else if ($checkedradio === "omnivore"){
        beast.list_omnivore();}

    });

      $show_section.on('click', '.new_button_submit', function() {
      var beast = new Beast;
      var params = {name: $name_input.val(),
                    diet: $diet_input.val(),
                    light_ethology: $light_ethology_input.val(),
                    habitat: $habitat_input.val(),
                    size: $size_input.val(),
                    description: $description_input.val(),
                    image_filename: $image_filename_input.val()
                    };


      $show_section.html(
      "<h1> Beasties below... </h1> \
      <strong>Diet:</strong> \
      <form action=''> \
      <input type='radio' name='diet' value='any'>Any<br> \
      <input type='radio' name='diet' value='herbivore'>Herbivore<br> \
      <input type='radio' name='diet' value='carnivore'>Carnivore<br> \
      <input type='radio' name='diet' value='omnivore'>Omnivore<br> \
      <input type='submit' value='Filter' class='diet_button_submit'> \
      </form> \
   <strong>New Beast:</strong> \
      <form action='post'> \
      Name: <input type='text' name='name' class='name' /><br /> \
      Diet: <input type='text' name='diet' class='diet' /><br /> \
      Light ethology: <input type='text' name='light_ethology' class='light_ethology' /><br /> \
      Habitat: <input type='text' name='habitat' class='habitat' /><br /> \
      Size: <input type='text' name='size' class='size' /><br /> \
      Description: <input type='text' name='description' class='description' /><br /> \
      Image Filename: <input type='text' name='image_filename' class='image_filename' /><br /> \
      <input type='submit' value='Submit' class='new_button_submit'/> \
      </form>"
      );
      beast.create(params);

    });


  // $diet_button_submit.click(function(){
  //   show_section.append("<p>hi</p>");
  // })



  // We'll need to setup the Ajax call for the get requests

  var Beast = function(){



    this.list_all = function(){
      $.ajax({
        url: '/beasts',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        // $beast_list.empty();



        data.forEach(function(beast){
          var image = beast["image_filename"] || "unavailable.png"
          $show_section.append(
            "<article class='beast' id='beast-" + beast["id"] + "'> \
            <header> \
            <h1>" + beast["name"] + "</h1> \
            <img src='/assets/" + image + "'/> \
            </header> \
            </article>"
            );
          // data.forEach closing brackets/braces
        });
        // this.list .done function closing brace
      });
      // this.list function closing brace
    }

        this.list_herbivore = function(){
      $.ajax({
        url: '/beasts',
        // url: '/?diet=herbivore',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        // $beast_list.empty();
        data.forEach(function(beast){
          var image = beast["image_filename"] || "unavailable.png"
          if (beast["diet"] === "herbivore"){
          $show_section.append(
            "<article class='beast' id='beast-" + beast["id"] + "'> \
            <header> \
            <h1>" + beast["name"] + "</h1> \
            <img src='/assets/" + image + "'/> \
            </header> \
            </article>"
            );
          // if statement closing brace:
          }
          // data.forEach closing brackets/braces
        });
        // this.list .done function closing brace
      });
      // this.list function closing brace
    }

        this.list_carnivore = function(){
      $.ajax({
        url: '/beasts',
        // url: '/?diet=herbivore',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        // $beast_list.empty();
        data.forEach(function(beast){
          var image = beast["image_filename"] || "unavailable.png"
          if (beast["diet"] === "carnivore"){
          $show_section.append(
            "<article class='beast' id='beast-" + beast["id"] + "'> \
            <header> \
            <h1>" + beast["name"] + "</h1> \
            <img src='/assets/" + image + "'/> \
            </header> \
            </article>"
            );
          // if statement closing brace:
          }
          // data.forEach closing brackets/braces
        });
        // this.list .done function closing brace
      });
      // this.list function closing brace
    }
        this.list_omnivore = function(){
      $.ajax({
        url: '/beasts',
        // url: '/?diet=herbivore',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        // $beast_list.empty();
        data.forEach(function(beast){
          var image = beast["image_filename"] || "unavailable.png"
          if (beast["diet"] === "omnivore"){
          $show_section.append(
            "<article class='beast' id='beast-" + beast["id"] + "'> \
            <header> \
            <h1>" + beast["name"] + "</h1> \
            <img src='/assets/" + image + "'/> \
            </header> \
            <section class='entry-body'> \
            </article>"
            );
          // if statement closing brace:
          }
          // data.forEach closing brackets/braces
        });
        // this.list .done function closing brace
      });
      // this.list function closing brace
    }
        this.create = function(params){
      $.ajax({
        url: '/beasts',
        type: 'POST',
        dataType: 'json',
        data: params
      }).done(function(){
        alert(params["name"]);
         $name_input.val('');

        // this.create_beast closing brace
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

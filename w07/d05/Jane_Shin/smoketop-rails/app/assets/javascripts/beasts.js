function addEventListeners(){

	$("#selection_button").click(function(){
		var $animalSelection = $("input[type='radio'][name='diet']:checked");
		var $beast_list = $("#beast-list");

		$.ajax({
			url: "/beasts",
			type: "GET",
			dataType: "json",
			data: {"diet": $animalSelection.val()}
		}).done(function(httpResponse){
			console.log("hello");
			console.log(httpResponse);
		});
		var stringy = "beasts?diet=" + $animalSelection.val() + " .beast"
		console.log(stringy);
		$beast_list.load(stringy);
	});

}


// var beast_list = _.template("<%% @beasts.each do |beast| %>
//   <article class='beast' id='beast-<%= beast.id %>''>
//     <header>
//       <h1><%= beast.name %></h1>
//       <%= image_tag(beast.image_filename || 'unavailable.png') %>
//     </header>
//     <section class='entry-body'>
//       <%= attribute_table beast, %w(diet habitat light_ethology size) %>
//       <% beast.description_paragraphs.each do |p| %>
//         <p><%= p %></p>
//       <% end %>
//     </section>
//   </article>
// <% end %>");



$(document).ready(function() {

	addEventListeners();

});


// from documentation ==========================

// var compiled = _.template("hello: <%= name %>");
// compiled({name: 'moe'});
// => "hello: moe"

// var list = "<% _.each(people, function(name) { %> <li><%= name %></li> <% }); %>";
// _.template(list, {people: ['moe', 'curly', 'larry']});
// => "<li>moe</li><li>curly</li><li>larry</li>"



// var template = _.template("<b><%- value %></b>");
// template({value: '<script>'});
// => "<b>&lt;script&gt;</b>"
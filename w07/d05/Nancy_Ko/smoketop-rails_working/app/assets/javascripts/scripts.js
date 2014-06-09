function addEventListeners(){
	var $add_beast_button = $('#add_beast_button'),
		$beast_name_input = $('#beast_name_input'),
		$beast_diet_input = $('#beast_diet_input'),
		$beast_light_ethology_input = $('#beast_light_ethology_input'),
		$beast_habitat_input = $('#beast_habitat_input'),
		$beast_size_input = $('#beast_size_input'),
		$beast_description_input = $('#beast_description_input');	
		

		$add_beast_button.click(function(){
			var params = {name: $beast_name_input.val(),
							diet: $beast_diet_input.val(),
							light_ethology: $beast_light_ethology_input.val(), habitat: $beast_habitat_input.val(), size: $beast_size_input.val(), description: $beast_description_input.val()};
			var beast = new beast;
			beast.create(params);							
		});
}

var Beast = function(){
	this.create = function(params){
		$.ajax({
			url: '/beasts',
			type: "POST",
			dataType: "json",
			data: params
		}).done(function(data){
			console.log(data);
		});
	},

// 	this.show = function(){
// 		$.ajax({
// 			url: '/tasks/:id',
// 			type: "GET",
// 			dataType: "json"
// 		}).done(function(){
// 			console.log("PLEASE SHOW ME SOMETHING");
// 		});
// 	}
// }

$(function(){
	addEventListeners();
});
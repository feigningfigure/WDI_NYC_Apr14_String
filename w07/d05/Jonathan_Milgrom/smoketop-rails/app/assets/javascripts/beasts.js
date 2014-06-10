$(document).ready(function() {
	// console.log("hello world");
	var $any = $("#diet_any"),
		$herbivore = $("#diet_herbivore"),
		$carnivore = $("#diet_carnivore"),
		$omnivore = $("#diet_omnivore");

	
	
	clickListener($any);
	clickListener($herbivore);
	clickListener($carnivore);
	clickListener($omnivore);

	// function clickListener(button) {
	// 	button.click(function() {
	// 		console.log($(this).val());
	// 		 $(this).load("/beasts", "diet=" + $(this).val()
	// 		 	);
	// 	});
	// }

	var beastsTemplate = _.template($("#beastsTemplate").text());

	function clickListener(button) {
		button.click(function() {
			console.log($(this).val());
			$.ajax({
				url: '/beasts?' + "diet="+ $(this).val(),
				type: "GET",
				dataType: "json"
			}).done(function(data){
				$beastlist = $("#beast-list");
				$beastlist.empty()
				data.forEach(function(beast) {
					var html = beastsTemplate({"beast": beast});
					$beastlist.append(html);	
				})
				
			});
		});
	}

});
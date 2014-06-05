function setEventHandlers() {
	$submitButton = $("#submitButton")
	$submitButton.click(function(){
		console.log("submit button has been clicked");
		$input = $("#input")

		$.ajax({
			url: '/profiles',
			type: 'GET',
			dataType: 'json',
			data: {profile_name: $input.val()},
		}).done(function(data){
			console.log(data);
			// HTTParty.get("data");
		});
	});	
}

$( document ).ready(function(){

	setEventHandlers();

});
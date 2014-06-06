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
			var dataObject = JSON.parse(data);
			console.log(dataObject);
			
			for (key in dataObject)  {
				$("#list").append("<li>" + dataObject[key] + "</li>");
			}
		});
	});	
}

$( document ).ready(function(){

	setEventHandlers();

});

function setEventHandlers(){

	$("#add_friend_button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#friend_input");

		$.ajax({
			url: '/friends',
			type: 'POST',
			dataType: 'json' ,
			data: {friend_name: $input.val()},
		}).done(function(data){
			console.log(data["first_name"]);
			//alert("You have added " + data);
			$input.val('');
			$("#friend_list").append("<li>"+ "Name: " + data["first_name"] + " " + data["last_name"] +" <br>" + "Facebook username: "+ data["username"] + " <br>" + "Facebook id: "+
				data["id"] + "<br>" + "From: "+ data["locale"] +"</li>");

		});

	});

	var $show_button = $("#show_button");

	$show_button.click(function(){
		console.log("Show button has been clicked");


		$.ajax({
			url: '/friends',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			var $friend_list = $("#friend_list");
			$friend_list.empty();
			data.friends.forEach(function(data){
				$friend_list.append("<li>"+ "Name: " + data["first_name"] + " " + data["last_name"] +" <br>" + "Facebook username: "+ data["username"] + " <br>" + "Facebook id: "+
				data["id"] + "<br>" + "From: "+ data["locale"] +"</li>")
			})
		})
	});

}




$( document ).ready(function(){

	setEventHandlers();

});

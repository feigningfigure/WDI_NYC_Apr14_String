
function setEventHandlers(){

	$("#search_friend_button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#friend_input");

		$.ajax({
			url: '/friends',
			type: 'POST',
			dataType: 'json' ,
			data: {friend: $input.val()},
		}).done(function(data){
			console.log(data);
			alert("You have searched " + data);
			$input.val('');
		});

	});

setInterval(function(){

		var $friend_list = $("#friend_list");

		$.ajax({
			url: '/friends',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			var $friend_list = $("#friend_list");
			$friend_list.empty();
			data.friends.forEach(function(item){
				$friend_list.append("<li>"+ item["id"] + "<br>" + item["first_name"] + " " + item["last_name"] + "<br>" + item["gender"] + "<br>" + item["locale"] + "<br>" + item["username"] +"</li>")
			})
		});	
	}, 50000);

}




$( document ).ready(function(){

	setEventHandlers();

});
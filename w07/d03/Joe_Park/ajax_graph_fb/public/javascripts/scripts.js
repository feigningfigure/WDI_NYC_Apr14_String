function setEventHandlers(){

	$('#search').click(function(){
		var $input = $("#name_input");
		var $previous = $("#previous");

		$.ajax({
			url: '/users',
			type: 'POST',
			dataType: 'json',
			data: {name: $input.val()}
		}).done(function(new_user){
			console.log(new_user);
			$input.val('');
			});
		
	setInterval(function(){
		var $user_new = $("#user_new");

		$.ajax({
			url: '/users',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			$user_new.empty();
			data.users.forEach(function(user){
				$user_new.html("<li>"+ user["name"] +"</li>")
			})
		});

	}, 1000);


	});

	$('#show_button').click(function(){
		var $user_list = $("#user_list");

		$.ajax({
			url: '/users',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			$user_list.empty();
			data.users.forEach(function(user){
				$user_list.append("<li id='"+ user["facebook_id"] +"'>"+ user["name"] +"</li>");
			});
		});
	});

}


$(function(){

	setEventHandlers();

});


// "<li>"+ user["link"]+"</li>"


// {"facebook_id": "id",
// "first_name": "first_name"],
// "gender": "male",
// "last_name": "last_name",
// "link": "link",
// "locale": "locale",
// "name": "name",
// "username": "username"}
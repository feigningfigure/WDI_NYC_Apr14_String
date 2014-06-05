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

	$('#show_button').click(function(){
		var $user_list = $("#user_list");

		$.ajax({
			url: '/users',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			$user_list.empty();
			data.users.forEach(function(user){
				$user_list.append("<li>"+ user["name"] +"</li>");
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
function setEventHandlers() {

	$("#search_button").on('click', function(){

	var $name = $("#name_input");

		$.ajax({
			url: '/users',
			type: 'POST',
			dataType: 'json',
			data: {user: $name.val()}
		}).done(function(data){
			$name.val('');
			show_result($name.val());
		});

		// $.ajax({
		// 	url: '/',
		// 	type: 'GET',
		// 	dataType: 'json',
		// 	data: {user: $name.val()}
		// }).done(function(data){
		// 	var $list = $("#search_result");
		// 	$list.empty();
		// 	data.users.forEach(function(item){
		// 		$list.append("<li>" + item["name"] + "<\n>" + item["gender"] + "<\n>" + item["locale"] + "<\n>" + item["username"] + "<\n>" + item["link"] + "</li>")
		// 	})	
		// });

	});

}


function show_result(key){
	var $list = $("#search_result");
	$list.empty();
	var item = data.users[key];
	$list.text("<li>" + item["name"] + "<\n>" + item["gender"] + "<\n>" + item["locale"] + "<\n>" + item["username"] + "<\n>" + item["link"] + "</li>");
}




$(document).ready(function(){
	setEventHandlers();
});

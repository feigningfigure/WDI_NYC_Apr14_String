
function setEventHandlers(){

	$("#add_prince_button").click(function(){
		console.log("Submit button has been clicked");

		var $name_input = $("#prince_input");

		$.ajax({
			url: '/princes',
			type: 'POST',
			dataType: 'json' ,
			data: {prince_name: $name_input.val()},
		}).done(function(data){
			console.log(data);
			alert("You have added " + data);
			$name_input.val('');
		});

	});



setInterval(function(){
	var $name_list = $("#prince_list");
	
	$.ajax({
		url: '/princes',
		type: 'GET',
		dataType: 'json',
	}).done(function(data){
		console.log(data);
		$name_list.empty();
		data.princes.prince_name.forEach(function(item){
			$name_list.append("<li>"+ item["prince_name"] +"</li>")
		})
	})	
}, 5000);
	

	var $show_button = $("#show_button");

	$show_button.click(function(){
		console.log("Show button has been clicked");


	// 	$.ajax({
	// 		url: '/princes',
	// 		type: 'GET',
	// 		dataType: 'json',
	// 	}).done(function(data){
	// 		console.log(data);
	// 		var $quiz_list = $("#quiz_list");
	// 		$quiz_list.empty();
	// 		data.quizzes.forEach(function(item){
	// 			$quiz_list.append("<li>"+ item["title"] +"</li>")
	// 		})
	// 	})	
	// });

}





$( document ).ready(function(){

	setEventHandlers();

});
function setEventHandlers(){

	$("#search_friend_button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#username");
		var $test = $.getJSON('https://graph.facebook.com/' + $input.val())


		$.ajax({
			url: '/friends',
			type: 'POST',
			dataType: 'json' ,
			data: $test["responseJSON"],
		}).done(function(data){
			console.log(data);
			alert("You have added " + data);
			$input.val('');
		});

		// $.ajax({
  //   url: 'http://graph.facebook.com/' + $input.val()
  //   , dataType: 'json'
  //   , success: function( data ) { console.log( 'success', data ); }
  //   , error: function( data ) { console.log( 'error', data ); }
} );

	// });

	// setInterval(function($("#quiz_list").empty();
	// 		data.quizzes.forEach(function(item){
	// 			$quiz_list.append("<li>"+ item["title"] +"</li>")
	// 		})), 1);

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
			data.friends.forEach(function(item){
				$friend_list.append("<li>"+ item["first_name"] + " "+item["last_name"]+"</li>")
			})
		})
	});

}




$( document ).ready(function(){

	setEventHandlers();

});

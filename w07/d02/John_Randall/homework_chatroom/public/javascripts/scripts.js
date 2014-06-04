
function setEventHandlers(){

	$("#submit_message").click(function(){
		console.log("Submit button has been clicked");
		sendMessage($("#message_input_field"));
		refreshLog();
	});

	$("#refresh_chatlog_btn").click(function(){
		console.log("Show button has been clicked");
		refreshLog();
	});

}



function sendMessage(input){
	var $input = input

	$.ajax({
		url: '/user_messages',
		type: 'POST',
		dataType: 'json' ,
		data: {quiz_name: $input.val()},
	}).done(function(data){
		console.log(data);
		alert("You have added " + data);
		$input.val('');
	});
}

function refreshLog(){
	$.ajax({
			url: '/user_messages',
			type: 'GET',
			dataType: 'json',
		}).done(function(data){
			console.log(data);
			var $messages_list = $("#messages_list");
			$messages_list.empty();
			data.user_messages.forEach(function(item){
				$messages_list.append("<li>"+ item["title"] +"</li>")
			})
		})	
}



$( document ).ready(function(){

	setEventHandlers();

	// var autoRefersher = window.setInterval(refreshLog, 1000);


});
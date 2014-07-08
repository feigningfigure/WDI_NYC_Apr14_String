
$(function(){
	var socket = io.connect('/');

	var inputForm = $("#input-form");

	inputForm.on('submit', function(e){
		e.preventDefault();
		var inputField = inputForm.find('input');
		var message = inputField.val();
		console.log(message)
		inputField.val('');
		socket.emit('chatSent', {message: message})
	});

	socket.on("chatUpdate", function(data){
		console.log(data);
		var newMessage = $('<li>').text(data.message);
		$('#chat-log').append(newMessage);
	});

})




function setEventHandlers(){

$("#button").click(function(){
	console.log("Submit button has been clicked");

	var $input = $("#quiz_input");

	$.ajax({
		url: '/details',
		type: 'POST',
		dataType: 'json' ,
		data: {detail_name: $input.val()},
	}).done(function(data){
		console.log(data);
		alert("You have added " + data);
		$input.val('');
	});

});

var $button = $("#button");

$button.click(function(){
	console.log("Button has been clicked");

	setInterval(function(){

		$.ajax({
			url: '/details',
			type: 'POST',
			dataType: 'json',
	}).done(function(data){
			console.log(data);
	var $facebook_list = $("#facebook_list");
			$facebook_list.empty();
			data.details.forEach(function(item){
				$facebook_list.append("<li>"+ item["title"] +"</li>")
			}, 5000);
		})
	})
});

}

$( document ).ready(function(){

	setEventHandlers();

});

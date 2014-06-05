
function setEventHandlers(){

	function setBooClassEventHandlers(){
		// $(".boo").unbind()

		$(".boo").click(function(){
			$(this).children().first().slideToggle()
		})
	}

	$("#find_button").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#find_on_facebook");

		$.ajax({
			url: '/friends',
			type: 'POST',
			dataType: 'json' ,
			data: {username: $input.val()},
		}).done(function(data){
			console.log(data);
			alert("You have added " + data);
			$input.val('');
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
			data.friends.forEach(function(item){
				var info = []
				for(key in item) {
					info.push("<li>" + item[key] + "</li>")
				}
				console.log(info)
				$friend_list.append("<li class='boo'>"+ item["first_name"] +"<ul>" + info.join("") + "</ul></li>")
			})
				$(".boo").children().slideToggle()
			setBooClassEventHandlers();
		})	
	});
}





$( document ).ready(function(){

	$("#less-text1").click(function() {
		$("#less-text1").slideToggle();
	});
	$("#less-link2").click(function() {
		$("#less-text2").slideToggle();
	});

	setEventHandlers();

});
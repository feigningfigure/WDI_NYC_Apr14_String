
function setEventHandlers(){

	$("#friend_input").click(function(){
		console.log("Submit button has been clicked");

		var $input = $("#friend_name");

		$.ajax({
			url: '/friends',
			type: 'POST',
			dataType: 'json' ,
			data: {friend_name: $input.val()},
		}).done(function(data){
			console.log(data);
			alert("You have added " + data);
			$input.val('');
		});

	});

	var $show_button = $("#show_friends");

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
				var id = ( "\"#" + item["id"] + "\"");
				$friend_list.append("<li id=" + id + ">" + item["username"] +"</li>")
			})
		})
	});







	$(function() {
  $("#less-link1").click(function () {
    $("#less-text1").slideToggle();
  });
  $("#less-link2").click(function () {
    $("#less-text2").slideToggle();
  });

}




$( document ).ready(function(){

	setEventHandlers();

});

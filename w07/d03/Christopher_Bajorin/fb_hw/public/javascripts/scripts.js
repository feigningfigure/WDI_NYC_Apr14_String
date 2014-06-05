
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
			var i = 0
			data.friends.forEach(function(item){
				// var id = ( "\"" + item["id"] + "\"");
				// $friend_list.append("<li class='friend_list_item' id=" + id + ">" + item["first_name"] + " " + item["last_name"] +"</li>")
				var id = ( "\"name" + i + "\"");
				i++;
				$friend_list.append("<li><ul class='friend_list_item' id=" + id + ">" + item["first_name"] + " " + item["last_name"] +"</ul></li>")
			});

			var $friend_list_item = $(".friend_list_item");

			$friend_list_item.click(function() {
				console.log("clicked");
				var id_name = $(this).attr('id');
				var id_num = id_name.slice(4,10);
				var id_string = ("#" + id_name)
				var person = data.friends[id_num];
				$(id_string).append("<li>Name: " + person["first_name"] + " " + person["last_name"] + "</li>");
				$(id_string).append("<li>Gender: " + person["gender"] + "</li>");
				$(id_string).append("<li>locale: " + person["locale"] + "</li>");
			});

		})
	});


	// var $friend_list_item = $(".friend_list_item");

	// $friend_list_item.click(function() {
	// 	console.log("clicked");

	// 	var id = $(this).attr('id');
	// 	var $input = $("#friend_name");
	// 	$input.val(id);
	// });


// $(that).attr('id')


// $('.friend_names').click(function() {
//     var that = this;
//     $.post('quantity.php', { quantityId: $(that).attr('id') }, function(data) {
//         $(that).html(data);
//     });
// });


	// var id = $(this).attr('id')

	// $(function() {
 //  $("#less-link1").click(function () {
 //    $("#less-text1").slideToggle();
 //  });


 //  $("#less-link2").click(function () {
 //    $("#less-text2").slideToggle();
 //  });

}




$( document ).ready(function(){

	setEventHandlers();

});

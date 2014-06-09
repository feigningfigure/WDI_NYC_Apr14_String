console.log("Hello. John's JavaScript is loading.")

console.log("Is there an echo in the asset pipeline?")


$(function(){
	console.log("DOM loaded, running js")
	addEventListeners();
});


function addEventListeners(){
	console.log("running addEventListeners")
	
	var $beast_delete_btns = $('.ajax_beast_delete_btn'); 
	var	$beast_show_btns = $('.ajax_beast_show_btn'); 
		// $add_task_button = $('#add_task_button'),
		// $task_text_input = $('#task_text_input'),
		// $due_date_input = $('#due_date_input');			

		// $test.click(function(){
		// 	console.log("hello id");
		// });

		$beast_delete_btns.click(function(){
			console.log('delete btn clicked');
			// console.log(this);
			// console.log(this.id);
			// console.log($(this).attr('id'));
        	var css_id = $(this).attr('id');
        	// console.log(css_id);
        	// console.log(css_id.split('-'));
        	// console.log(css_id.split('-')[2]);
			var ar_id = css_id.split('-')[2];

        	// var dom_id = "beast-" + parsed_id;
        	// var $record = $("#" + record_id);
	        

	        // console.log(hideId);
	        // $("#" + hideId).hide();
	        $.ajax({
		        url: "/beasts/" + ar_id,						//#LEARN what if this was params
		        type: "DELETE",
		        dataType: "json"
	        }).done(function(http_response){
	        	console.log(http_response);
		        console.log("sucessfully deleted! via json call at #{url}");
	        });

	        													//FIX THIS RESPONSE IS NOT FIRING
		});

		$beast_show_btns.click(function(){
			console.log('show btn clicked');
			var css_id = $(this).attr('id');
			var ar_id = css_id.split('-')[2];
			$.ajax({
		        url: "/beasts/" + ar_id,						//#LEARN what if this was params
		        type: "GET",
		        dataType: "json"
	        }).done(function(http_response){
	        	console.log(http_response);
		        console.log("sucessfully processed 'show' via json call at #{url}");
	        });
		});
}


var Beast = function(){
	// this.delete(params){
	// 	$.ajax({
	// 			// url: '/tasks',
	// 			// type: "POST",
	// 			// dataType: "json",
	// 			// data: params
	// 		}).done(function(data){
	// 			// console.log(data);
	// 		});
	// }
	// this.show(params){
	// 	$.ajax({
	// 			// url: '/tasks',
	// 			// type: "POST",
	// 			// dataType: "json",
	// 			// data: params
	// 		}).done(function(data){
	// 			// console.log(data);
	// 		});
	// }
}
// 	this.create = function(params){
// 			$.ajax({
// 				url: '/tasks',
// 				type: "POST",
// 				dataType: "json",
// 				data: params
// 			}).done(function(data){
// 				console.log(data);
// 			});

$(function(){
	addEventListeners();
});

function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
		$task_text_input = $('#task_text_input'),

		$due_date_input = $('#due_date_input'),
		$delete_btn = $(".delete_btn");

		// $delete_btn_1 = $("#1");
		// $delete_btn_2 = $("#2");
		// $delete_btn_3 = $("#3");

	$add_task_button.click(function(){
		var params = {
			task_text: $task_text_input.val(),
			due_date: $due_date_input.val()
			};
		var task = new Task;
		task.create(params);
	});

	$delete_btn.click(function(){
		console.log("delete_btn clicked!");
		// console.log($(this).attr('id'))
		console.log($(this));
		id = $(this).attr('id');
		console.log("the id = " + id );
		var task = new Task;
		task.delete(id);
	});
}

function addEventListenerToSingleItem_byID(target_table, id){
	console.log("running addEventListenerToSingleItem_byID")
	console.log("ID is" + id);
	// console.log(target_table.children('tbody').children("[id="+id+"]").children().last().children());
	var $target_btn = target_table.children('tbody').children("[id="+id+"]").children().last().children()[0];
	// var $target_btn = target_table.children('tbody').children("[id="+id+"]").children().last().children();		//#LEARN ABOUT $  ADN SCOPE HERE
	
	// console.log("$target_btn = "+ $target_btn);																//#LEARN ABOUT $  ADN SCOPE HERE

	$target_btn.click(function(){																				//#LEARN ABOUT $  ADN SCOPE HERE
		console.log("delete_btn clicked!");
		// console.log($(this).attr('id'))
		id = $(this).attr('id');
		console.log("the id = " + id );
		var task = new Task;
		task.delete(id);
	});

	// id = button.attr('id');
	// $delete_btn = $delete_btn + $(".delete_btn #id");

	// this_precise_button.click(function(){}

		// )

}


// function updateEventListeners(){
// 	console.log("updateEventListeners")
// 	$delete_btn = $(".delete_btn");

// 	$delete_btn.click(function(){
// 		console.log("delete_btn clicked!");
// 		console.log($(this).attr("id"))
// 		// id = getRecordIDFromBtn($(this))
// 		// var task = new Task;
// 		// task.delete(id);

// 	});

// }

var Task = function(){
	this.create = function(params){
		console.log("sending http request.")
		$.ajax({
			url: '/tasks',
			type: "POST",
			dataType: "json",
			data: params
		}).done(function(httpResponse){
			console.log("got httpresponse")
			console.log(httpResponse);

			// NEED TO DO ERROR CHECKING httpResponse

			addRecordToTable(httpResponse, $("#tasks_index_table"));
			// updateEventListeners();
		});
	};

	this.delete = function(id){
		console.log("running Task-this.delete");
		$.ajax({
			url: '/tasks/'+id,
			type: "DELETE",
			dataType: "json",
			// data: id
		}).done(function(httpResponse){
			console.log("got httpResponse")
			console.log(httpResponse);
			if (httpResponse['success']){
				removeRecordFromTable(httpResponse, $("#tasks_index_table"));
			}
		});
	};
};



function addRecordToTable(httpResponse, target_table){
	console.log("running addRecordToTable");
	target_table.append("<tr id="+httpResponse['id']+"><td></td>  <td>"+httpResponse['task_text'] + "</td>  <td>"+httpResponse['due_date']+"</td>  <td>  <button id="+  httpResponse['id']  +  "class='delete_btn'>delete</button></td>  </tr>")
	// console.log(newButton)
	addEventListenerToSingleItem_byID(target_table, httpResponse['id'])
}

function removeRecordFromTable(httpResponse, target_table){
	id = httpResponse['id'];
	console.log("running removeRecordFromTable to delete record " + id);
	// console.log(target_table)
	target_table.children('tbody').children("[id="+id+"]").remove();
	// target_row = target_table.chil
	// target_row

}








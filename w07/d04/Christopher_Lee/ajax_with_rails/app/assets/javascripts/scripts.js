
function addEventListeners(){
	var $add_task_button = $('#add_task_button'),
			$task_text_input = $('#task_text_input'),
			$due_date_input = $('#due_date_input');

			$add_task_button.click(function(){
				var params = {task_text: $task_text_input.val(),
											due_date: $due_date_input.val()
										};
				var task = new Task;
				task.create(params);
				$task_text_input.val('');
				$due_date_input.val('');

			});
}


function setClicks(){
  $(function() {
  	$(".remote-delete").click(function() {
				console.log("I'm clicked");
				var $id = $(this).attr('id').replace( /^\D+/g, '');
				console.log($id);
				$.ajax({
			  url: "/tasks/" + $id,
			  type: "delete",
			  dataType: "json"
				}).done(function(data){
				console.log(data);
				pullTasks();
				});
  		});
  });

  $(function() {
  	$(".remote-update").editable();
  });

  $(function() {
  	$(".remote-update").submit(function(event) {
				console.log("update has been clicked");
				var $id = $(this).attr('id').replace( /^\D+/g, '');
				var $change = $(this).val();
				console.log($id);
				console.log($change);
				$.ajax({
			  url: "/tasks/" + $id,
			  type: "patch",
			  dataType: "json",
			  data: $change
				}).done(function(data){
				console.log(data);
				pullTasks();
				});
  		});
  	event.preventDefault();
  });

}

function pullTasks(){
	// var deleteLink = "<%= link_to '(remove)', task, method: :delete:, data: {confirm: 'Are you sure?''} %>";
	var deleteLink = function(id){return "<button class='remote-delete' id='task" + id + "'>Delete</button>"}
	var $incompleteTasks = $("#incomplete_tasks");
	$.ajax({
				url: '/tasks',
				type: 'GET',
				dataType: 'json'
			}).done(function(data){
				console.log(data);
				console.log("pulltasks is getting hit");
				$incompleteTasks.empty();
				data.forEach(function(task){
					var deleteString = deleteLink(task.id);
					console.log(deleteString);
					$incompleteTasks.prepend(
						"<div class='remote-update' id='"+ task.id + "'>" + task.task_text + "</div>" + " " + deleteString
						)
				});
			setClicks();
		});
}





var Task = function(){
	this.create = function(params){
			$.ajax({
				url: '/tasks',
				type: "POST",
				dataType: "json",
				data: params
			}).done(function(data){
				console.log(data);
			});
			pullTasks();
		};

		this.delete = function(params){
			$.ajax({
			  url: "/tasks/" + task_id,
			  type: "delete",
			  dataType: "json",
			  data: {"_method":"delete"}
			}).done(function(data){
				console.log(data);
				pullTasks();
			});
		};

		this.update = function(params){
			var $id = $(this).attr('id').replace( /^\D+/g, '');
			var $change = $(this).val();
			debugger
			console.log($(this));
			$.ajax({
			  url: "/tasks/" + $id,
			  type: "patch",
			  dataType: "json",
			  data: $change
			}).done(function(data){
				console.log(data);
				pullTasks();
			});
		};
};

$(function(){

	addEventListeners();
	pullTasks();

});


$.fn.editable = function(url, options) {
	// Options
	options = arrayMerge({
		"url": url,
		"paramName": "q",
		"callback": null,
		"saving": "saving ...",
		"type": "text",
		"submitButton": 0,
		"delayOnBlur": 0,
		"extraParams": {},
		"editClass": null
	}, options);
	// Set up
	this.click(function(e) {
			if (this.editing) return;
			if (!this.editable) this.editable = function() {
				var me = this;
				me.editing = true;
				me.orgHTML = $(me).html();
				me.innerHTML = "";
				if (options.editClass) $(me).addClass(options.editClass);
				var f = document.createElement("form");
				var i = createInputElement(me.orgHTML);
				var t = 0;
				f.appendChild(i);
				if (options.submitButton) {
					var b = document.createElement("input");
					b.type = "submit";
					b.value = "OK";
					f.appendChild(b);
				}
				me.appendChild(f);
				i.focus();
				$(i).blur(
						options.delayOnBlur ? function() { t = setTimeout(reset, options.delayOnBlur) } : reset
					)
					.keydown(function(e) {
						if (e.keyCode == 27) { // ESC
							e.preventDefault;
							reset
						}
					});
				$(f).submit(function(e) {
					if (t) clearTimeout(t);
					e.preventDefault();
					var p = {};
					p[i.name] = $(i).val();
					$(me).html(options.saving).load(options.url, arrayMerge(options.extraParams, p), function() {
						// Remove script tags
						me.innerHTML = me.innerHTML.replace(/<\s*script\s*.*>.*<\/\s*script\s*.*>/gi, "");
						// Callback if necessary
						if (options.callback) options.callback(me);
						// Release
						me.editing = false;
					});
				});
				function reset() {
					me.innerHTML = me.orgHTML;
					if (options.editClass) $(me).removeClass(options.editClass);
					me.editing = false;
				}
			};
			this.editable();
		})
	;
	// Don't break the chain
	return this;
	// Helper functions
	function arrayMerge(a, b) {
		if (a) {
			if (b) for(var i in b) a[i] = b[i];
			return a;
		} else {
			return b;
		}
	};
	function createInputElement(v) {
		if (options.type == "textarea") {
			var i = document.createElement("textarea");
			options.submitButton = true;
			options.delayOnBlur = 100; // delay onBlur so we can click the button
		} else {
			var i = document.createElement("input");
			i.type = "text";
		}
		$(i).val(v);
		i.name = options.paramName;
		return i;
	}
};

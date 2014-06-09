function listItemTemplate(item) {
  return ["<li>", item, "</li>"].join("")
}

function setEventHandlers() {

  var $add_task_button = $("#add_task_button"),
      $task_text_input = $("#task_text_input"),
      $due_date_input = $("#due_date_input"),
      $task_list = $('#task_list');
      // $counter = false;

  $add_task_button.click(function(){
    var params = {task_text: $task_text_input.val(),
                  due_date: $due_date_input.val()
                };
    var task = new Task;
    task.create(params);
    // if ($counter === false){
    setTimeout(task.all, 500);
      // $counter = true;
      // console.log("bleh");
    // }
    // return $counter;
  });

  $(window).load(function(){
    var task = new Task;
    task.all();
  });


  var Task = function(){
    this.create = function(params){
      $.ajax({
        url: '/tasks',
        type: 'POST',
        dataType: 'json',
        data: params
      }).done(function(data){
        console.log(data);
        $due_date_input.val('');
        $task_text_input.val('');
      });
    }

    this.all = function(){
      $.ajax({
        url: '/tasks',
        type: 'GET',
        dataType: 'json'
      }).done(function(data){
        $task_list.empty();
        data.forEach(function(task){
          var htmlToAdd = listItemTemplate(task["task_text"])
          $task_list.append(htmlToAdd)
        });
      });
    }
  }
}

$(function() {

  setEventHandlers();

});

// $(window).load will execute after all assets including images have finished loading while .ready is a deal breaker if you are resizing images with css
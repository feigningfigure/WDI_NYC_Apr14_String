function setEventHandlers() {

  var $add_task_button = $("#add_task_button"),
      $task_text_input = $("#task_text_input"),
      $due_date_input = $("#due_date_input"),
      // $previous = $(".previous"),
      $task_list = $('#task_list');

  $add_task_button.click(function(){
    var params = {task_text: $task_text_input.val(),
                  due_date: $due_date_input.val()
                };
    var task = new Task;
    task.create(params);
    setTimeout(task.all, 500);
  });

  $(window).load(function(){
    var task = new Task;
    task.all();
  });

  $task_list.click('li', function(){
    // $("#task_list li").each(function(item){ item.attr("id") });
    
    // var task = new Task; 
    // task.throwOut($(this).children().each(function(item){ $(item).attr("id") }));
    // setTimeout(task.all, 500);
    var hello = $(this).children()[9];
    console.log($(hello).attr("id"));


    // console.log($(this).children().each(function(item){ $(item)["id"] }));
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
          $task_list.append("<li id='" + task["id"] + "'>" + task["task_text"] + "</li>");
        });
      });
    }

    this.throwOut = function(id_number){
      $.ajax({
        url: '/tasks/'+id_number,
        type: 'DELETE',
        dataType: 'json',
        data: id_number
      }).done(function(){
        console.log("deleted!");
      });
    }
  }
}

$(function() {

  setEventHandlers();

});

// $(window).load will execute after all assets including images have finished loading while .ready is a deal breaker if you are resizing images with css
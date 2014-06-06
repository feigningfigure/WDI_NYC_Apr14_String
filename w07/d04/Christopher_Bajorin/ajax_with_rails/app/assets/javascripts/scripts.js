function addEventListeners(){
  var $add_task_button = $('#add_task_button'),
    $task_text_input = $('#task_text_input'),
    $due_date_input = $('#due_date_input'),

      $add_task_button.click(function(){
        var params = {task_text: $task_text_input.val(),
                      due_date: $due_date_input.val()
                    };
        var task = new Task;
        task.create(params);
        show_tasks();
        $task_text_input.val('');
        $due_date_input.val('');
  });


  function setErrandClassEventHandlers(){
    $(".errand").click(function(){
      console.log("Hi");
      var id = $(this).attr('id');
      console.log(id)
      $.ajax({
        url: '/tasks/' + id,
        type: "DELETE",
        dataType: "json",
        data: id_string
      }).done(function(data){

      });
    show_tasks();
    });

  }



function show_tasks() {
    $.ajax({
    url: '/tasks',
    type: 'GET',
    dataType: 'json',
  }).done(function(data){
    console.log(data);
    var $task_list = $("#task_list");
    $task_list.empty();

    data.forEach(function(item){
      $id = item["id"];
      $task_list.append("<li class='errand' id='"+ $id + "'>" + item['task_text'] + " Do by: " + item["due_date"] + " Completed? " + item["completed"] + "</li>")
    });
    setErrandClassEventHandlers();
  });
}

show_tasks();

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

  };

};

$(function(){

  addEventListeners();

});

function addEventListeners(){
  var $add_task_button = $('#add_task_button'),
      $task_text_input = $('#task_text_input'),
      $due_date_input = $('#due_date_input');

      $add_task_button.click(function(){
        // Receives information from users and stores values in the params as a hash
        var params = {task_text: $task_text_input.val(),
                      due_date: $due_date_input.val()
                    };
        // Create new entries to database
        var todo = new Todo;
        todo.create(params);

        // Clear input fields
        $task_text_input.val('');
        $due_date_input.val('');
      });
}

var Todo = function(){
  this.create = function(params){

      $.ajax({
        url: '/todos',
        type: "POST",
        dataType: "json",
        data: params
      }).done(function(data){
        console.log(data);
      });
  };
};


//.show
var Show = function(){
  this.show = function(params){
      $.ajax({
        url: '/todos',
        type: "GET",
        dataType: "json",
        data: params
      }).done(function(data){
        console.log(data);
        alert("posting");
      });
  };
};



$(function(){

  addEventListeners();

});

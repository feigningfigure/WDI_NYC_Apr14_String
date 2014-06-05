
function addEventListeners(){
  var $add_task_button = $)'#add_task_button'),
      $task_text_input = $('task_text_input'),
      $due_date_input = $('#due_date_input')

      $add_task_button.click(function(){
        var params = {text_text: $task_text_input.val(),
                      due_date: $due_date_input.val()
                    };


}


      var Task = function(){
        this.create = function(){
          $.ajax({
            url: '/tasks',
            type: 'POST',
            dataType: 'json',
            data: params,
          }).done(function(data){
            console.log(data);
          })
        })

        }
      }

      $(function(){
        addEventListeners();
      })
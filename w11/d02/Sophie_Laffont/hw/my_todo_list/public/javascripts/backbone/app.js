var TodoApp = TodoApp || { Models: {}, Collections: {}, Views:{} };

var collection;

TodoApp.initialize = function (){
   collection = new TodoApp.Collections.Todo();

   collection.fetch().done(function() {
      var todoListView = new TodoApp.Views.TodoListView({
         collection: collection,
         el: $('.todo-list')
      });
      todoListView.render();
   });
};

$(function() {
   TodoApp.initialize();
   $('form.todo').on('submit', function(event) {
      event.preventDefault();
      var modelOptions = {
         task_name: $('input[name="task_name"]').val(),
         status: $('input[name="status"]').val(),
         description: $('input[name="description"]').val()
      };
      collection.create(modelOptions);
   });
});

var TodoApp = TodoApp || { Models: {}, Collections: {}, Views:{} };

TodoApp.Collections.Todo = Backbone.Collection.extend({
   url: '/todos',
   model: TodoApp.Models.TodoModel
});

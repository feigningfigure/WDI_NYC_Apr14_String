var TodoApp = TodoApp || { Models: {}, Collections: {}, Views:{} };

TodoApp.Views.TodoListView = Backbone.View.extend({
   initialize: function() {
      this.listenTo(this.collection, 'change', this.renderOne);
   },
   render: function() {
      var self = this;
      this.collection.each(function(todo) {
         singleTodoView = new TodoApp.Views.TodoView({ model: todo });
         self.$el.append(singleTodoView.render().el);
      });
   },
   renderOne: function(todo) {
      var singleTodoView = new TodoApp.Views.TodoView({ model: todo });
      this.$el.append(singleTodoView.render().el);
      return this;
   }
});

var TodoApp = TodoApp || { Models: {}, Collections: {}, Views:{} };


TodoApp.Views.TodoView = Backbone.View.extend({
   tagName: 'li',
   template: _.template("Id: <%= id %>, Task: <%= task_name %>, Status: <%= status %>, Description: <%= description %>"),
   render: function() {
      var singleTodoView = this.template(this.model.toJSON());
      this.$el.append(singleTodoView);
      return this;
   }
});

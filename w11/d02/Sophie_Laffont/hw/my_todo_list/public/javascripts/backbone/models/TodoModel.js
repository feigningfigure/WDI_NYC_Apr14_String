var TodoApp = TodoApp || { Models: {}, Collections: {}, Views:{} };

TodoApp.Models.TodoModel = Backbone.Model.extend({
   url: function() {
      return this.isNew() ? '/todos' : '/todos/' + this.get('id');
   }
});

var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var self = this;
    this.$el.empty();
    // what to iterate over, and the callback function
    _.each(this.collection.models, function(penguin){
      var penguinView = new Penguinapp.Views.PenguinView({model: penguin})
      self.$el.append( penguinView.render().el );
    })
  }
});

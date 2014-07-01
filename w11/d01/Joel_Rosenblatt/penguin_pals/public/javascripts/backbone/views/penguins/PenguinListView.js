var Penguinapp  = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(penguin){
      var penguinView = new Penguinapp.Views.PenguinView({ model: penguin });
      self.$el.append( penguinView.render().el )
    })
    return this
  }
});

var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinListViews = Backbone.Views.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(penguin){
      var penguinView = new Penguinapp.Views.PenguinView({ model: penguin})
      self.$el.append( penguinView.render().el );
    })
  }
})
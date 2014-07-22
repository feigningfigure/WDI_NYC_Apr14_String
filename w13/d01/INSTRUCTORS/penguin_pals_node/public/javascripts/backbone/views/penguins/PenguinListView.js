var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {}, };

Penguinapp.Views.PenguinListView =  Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty()
    _.each(this.collection.models, function(penguin){
      var penguinView = new Penguinapp.Views.PenguinView({model: penguin});
      that.$el.prepend(penguinView.render().el);
    })
  }
});

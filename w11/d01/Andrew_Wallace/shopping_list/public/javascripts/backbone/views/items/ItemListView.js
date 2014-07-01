var Shoppinglistapp = Shoppinglistapp || { Models: {}, Collections: {}, Views: {} };

Shoppinglistapp.Views.ItemListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(item){
      var itemView = new Shoppinglistapp.Views.ItemView( {model: item} )
      self.$el.append( itemView.render().el );
    })
  }
});

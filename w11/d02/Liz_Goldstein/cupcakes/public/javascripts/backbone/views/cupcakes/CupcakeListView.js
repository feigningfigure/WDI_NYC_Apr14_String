var Cupcakeapp = Cupcakeapp || { Models: {}, Collections: {}, Views: {} };

Cupcakeapp.Views.CupcakeListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(cupcake){
      var cupcakeView = new Cupcakeapp.Views.CupcakeView({model: cupcake})
      self.$el.append( cupcakeView.render().el );
    })
  }
})

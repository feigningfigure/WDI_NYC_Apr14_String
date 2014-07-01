var Bikeapp = Bikeapp || {Models: {}, Collections: {}, Views: {} };


Bikeapp.Views.BikeListView = Backbone.View.extend ({

  initialize: function(){
    this.listenTo(this.collection, 'all', this.render )
  },


  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(movie){
      var bikeView = new Bikeapp.Views.BikeView({ model: Bikeapp.Models.Bike })
      self.$el.append( bikeView.render().el )
    })
  }



})
var Plantapp = Plantapp || { Models: {}, Collections: {}, Views: {} };

Plantapp.Views.PlantListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, "add", this.render);
  },
  render: function(){
    var self = this;
    _.each(this.collection.models, function(plant) {
      var plantView = new Plantapp.Views.PlantView({ model: plant });
      self.$el.append( plantView.render().el );

    });
  }
});

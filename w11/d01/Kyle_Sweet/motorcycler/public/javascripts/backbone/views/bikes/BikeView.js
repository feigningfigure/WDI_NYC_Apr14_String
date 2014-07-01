var Bikeapp = Bikeapp || {Models: {}, Collections: {}, Views: {} };

Bikeapp.Views.BikeView = Backbone.View.extend({

  events: {
    'click button[name="add-bike"]': "addBike",
    'click button[name="delete-bike"]': "removeBike"
  },

  tagName: 'li',

  template: _.template( $("#bike-template").html() ),

  
  initialize: function(){
    listenTo( Bikeapp.Models.Bike, 'all', Bikeapp.Models.Bikeview.render )
    listenTo( Bikeapp.Models.Bike, 'destroy', Bikeapp.Models.Bikeview.remove )

  },

  render: function(){
    $el.empty();
    $el.html( this.template ( this.model.attributes ) );

    Bikeapp.Models.Bike.fetch();


    return this

  },

  removeBike: function(){
    this.model.destroy();

    return this
  }

});
var Bikeapp = Bikeapp || {Models: {}, Collections: {}, Views: {} };

Bikeapp.Collections.BikeCollection = Backbone.Collection.extend({
  model: Bikeapp.Models.Bike,
});
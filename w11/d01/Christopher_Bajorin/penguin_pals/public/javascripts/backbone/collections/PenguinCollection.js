var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Collections.PenguinCollection = Backbone.Collection.extend({
  // comma
  model: Penguinapp.Models.Penguin,
  url: '/penguins'
});

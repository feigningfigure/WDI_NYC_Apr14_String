var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

// [namespace].[key in hash].[variable name]
Penguinapp.Collections.PenguinCollection = Backbone.Collection.extend({
  model: Penguinapp.Models.Penguin,
  url: '/penguins'
});


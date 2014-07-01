var Penguinapp = Yankeeapp || { Models: {}, Collections: {}, Views: {} };

Yankeeapp.Collections.YankeeCollection = Backbone.Collection.extend({
  model: Yankeeapp.Models.Yankee,
});
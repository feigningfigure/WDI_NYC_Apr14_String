var Plantapp = Plantapp || { Models: {}, Collections: {}, Views: {} };

Plantapp.Collections.PlantCollection = Backbone.Collection.extend({
  model: Plantapp.Models.Plant,
  url: "/plants"
});

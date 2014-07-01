var Bearapp = Bearapp || { Models: {}, Collections: {}, Views: {} };

Bearapp.Collections.BearCollection = Backbone.Collection.extend({
  model: Bearapp.Models.Bear,
});

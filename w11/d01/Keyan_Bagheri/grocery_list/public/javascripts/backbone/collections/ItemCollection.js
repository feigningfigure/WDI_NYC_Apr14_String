var Itemapp = Itemapp || { Models: {}, Collections: {}, Views: {} };

Itemapp.Collections.ItemCollection = Backbone.Collection.extend({
  model: Itemapp.Models.Item,
  url: '/items'
});
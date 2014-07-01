var Shoppinglistapp = Shoppinglistapp || { Models: {}, Collections: {}, Views: {} };

Shoppinglistapp.Collections.ItemCollection = Backbone.Collection.extend({
  model: Shoppinglistapp.Models.Item,
  url: '/items'
});

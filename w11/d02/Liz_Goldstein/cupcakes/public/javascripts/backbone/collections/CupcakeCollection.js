var Cupcakeapp = Cupcakeapp || { Models: {}, Collections: {}, Views: {} };

Cupcakeapp.Collections.CupcakeCollection = Backbone.Collection.extend({
  model: Cupcakeapp.Models.Cupcake,
  url: '/cupcakes'
});

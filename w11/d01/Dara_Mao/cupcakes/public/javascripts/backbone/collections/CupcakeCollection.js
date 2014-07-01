var Cupcakemaker = Cupcakemaker || {
    Models: {},
    Collections: {},
    Views: {}
};

Cupcakemaker.Collections.CupcakeCollection = Backbone.Collection.extend({
    model: Cupcakemaker.Models.Cupcake,
    url: '/cupcakes'
});

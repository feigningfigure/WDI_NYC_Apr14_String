var Cupcakemaker = Cupcakemaker || {
    Models: {},
    Collections: {},
    Views: {}
};

Cupcakemaker.Models.Cupcake = Backbone.Model.extend({
    initialize: function() {
        console.log('making a new cupcake')
    },
    default: {
        flavor: "",
        size: "",
        unit: ""
    }

});

// var Cupcake = Backbone.Model.extend({});
// var cupcake = new Cupcakemaker.Models.Cupcake();

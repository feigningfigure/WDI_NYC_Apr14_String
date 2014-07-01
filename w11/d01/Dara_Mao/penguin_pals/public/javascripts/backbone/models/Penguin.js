var Penguinapp = Penguinapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Penguinapp.Models.Penguin = Backbone.Model.extend({
    initialize: function() {
        console.log("a penguin has been borned");
    },

    defaults: {
        name: ""
    }

});

//new instance of the Pengion Model (we are storing structure of our app)
// var penguin = new Penguinapp.Models.Penguin();

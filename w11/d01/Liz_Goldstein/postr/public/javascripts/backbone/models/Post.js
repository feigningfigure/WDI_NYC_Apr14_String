var Postapp = Postapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Postapp.Models.Post = Backbone.Model.extend({
    initialize: function() {
        console.log("Posted!");
    },

    defaults: {
        title: ""
    }

});

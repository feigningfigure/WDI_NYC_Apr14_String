var Postapp = Postapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Postapp.Collections.PostCollection = Backbone.Collection.extend({
    model: Postapp.Models.Post,
    url: '/posts'
});

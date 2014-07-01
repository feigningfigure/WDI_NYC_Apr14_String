var Postapp = Postapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Postapp.Views.PostView = Backbone.View.extend({
    tagName: 'li',
    template: _.template($('#post-template').html()),
    render: function() {
        this.$el.empty();
        this.$el.html(this.template(this.model.attributes));
        return this
    }
});

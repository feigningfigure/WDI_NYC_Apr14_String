var Postapp = Postapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Postapp.Views.PostListView = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.collection, 'add', this.render)
    },
    render: function() {
        var self = this;
        this.$el.empty();
        _.each(this.collection.models, function(post) {
            var postView = new Postapp.Views.PostView({
                model: post
            })
            self.$el.append(postView.render().el)
        })
    }
});

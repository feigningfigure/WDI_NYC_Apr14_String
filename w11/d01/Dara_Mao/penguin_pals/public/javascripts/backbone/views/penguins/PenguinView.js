var Penguinapp = Penguinapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Penguinapp.Views.PenguinView = Backbone.View.extend({
    //DO NOT NEED a listener for create (only need it for update or delete)
    // intialize: function() {
    //     this.listenTo(this.model, 'change', this.render)
    //     //listenTo is useful when we use update and delete functions
    //     // all create does is to instantiate and append to our DOM
    // },
    tagName: 'li',
    template: _.template($('penguin-template').html()),
    render: function() {
        this.$el.empty();
        this.$el.html(this.template(this.model.attributes));
        return this
    }
});

var Cupcakemaker = Cupcakemaker || {
    Models: {},
    Collections: {},
    Views: {}
};

Cupcakemaker.Views.CupcakeView = Backbone.View.extend({
    intialize: function() {
        this.listenTo(this.model, 'destroy', this.remove)
    },

    tagName: 'li',
    template: _.template($('#cupcake-template').html()),
    render: function() {
        this.$el.empty();
        this.$el.html(this.template(this.model.attributes));
        return this
    },
    events: {
        'click input[class="delete_cupcake"]': 'removeCupcake'
    },
    removeCupcake: function() {
        this.model.destroy();
        return this
    }
});

var Cupcakemaker = Cupcakemaker || {
    Models: {},
    Collections: {},
    Views: {}
};

Cupcakemaker.Views.CupcakeView = Backbone.View.extend({
    tagName: 'li',
    template: _.template($('#cupcake-template').html()),
    render: function() {
        this.$el.empty();
        this.$el.html(this.template(this.model.attributes));
        return this
    }
});

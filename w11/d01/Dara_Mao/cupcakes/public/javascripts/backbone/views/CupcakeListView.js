var Cupcakemaker = Cupcakemaker || {
    Models: {},
    Collections: {},
    Views: {}
};

Cupcakemaker.Views.CupcakeListView = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.collection, 'add', this.render)
    },
    render: function() {
        var self = this;
        this.$el.empty();
        _.each(this.collection.models, function(cupcake) {
            var cupcakeView = new Cupcakemaker.Views.CupcakeView({
                model: cupcake
            })
            self.$el.append(cupcakeView.render().el)
        })
    }
});

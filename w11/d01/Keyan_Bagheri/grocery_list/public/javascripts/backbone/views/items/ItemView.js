Itemapp = Itemapp || { Models: {}, Collections: {}, Views: {} };

Itemapp.Views.ItemView = Backbone.View.extend({
    initialize: function(){
      this.listenTo( this.model, "change", this.render )
    },
    tagName: 'li' ,
    template: _.template($('#item-template').html()),
    render: function(){
      this.$el.empty();
      this.$el.html(this.template(this.model.attributes));

      return this
    }
});
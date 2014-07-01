var Shoppinglistapp = Shoppinglistapp || { Models: {}, Collections: {}, Views: {} };

Shoppinglistapp.Views.ItemView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#item-template').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html(this.template( this.model.attributes ));
    return this
  }
  // events: {
  //   'click .delete' : 'deleteItem'
  // }

});

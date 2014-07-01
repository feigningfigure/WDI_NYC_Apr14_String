var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinView = Backbone.View.extend({
  // for CRUD functionality, but don't need listeners yet for only create.
  // initialize: function(){
  //   this.listenTo( this.model, "change", this.render )
  // },
  tagName: 'li',
  template: _.template( $('#penguin-template').html() ),
  render: function(){

    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );
    return this;
  }
});

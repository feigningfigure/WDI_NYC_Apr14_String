var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinView = Backbone.Views.extend({
  initialize: function(){

  },
  tagName: 'li',
  template: _.template( $('#penguin-template').html() ),
  render: function(){
    this.$el.html( this.template( this.model.attributes )),

    return this
  }
});
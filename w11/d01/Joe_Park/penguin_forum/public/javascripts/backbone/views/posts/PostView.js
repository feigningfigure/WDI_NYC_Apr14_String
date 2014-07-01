var Postapp = Postapp || ({ Models: {}, Collections: {}, Views: {} });

Postapp.Views.PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove)
  },

  tagName: 'li',
  template: _.template($('#post-template').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );

    return this;
  },
  events:{
    'click input[class="delete-post"]': 'removePost'
  },
  removePost: function(evt){
    evt.preventDefault();
    var self = this;
    console.log(this);
    this.model.destroy();
    console.log("clicked!");
  }

});

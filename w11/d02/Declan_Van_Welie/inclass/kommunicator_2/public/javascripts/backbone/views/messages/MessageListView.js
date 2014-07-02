var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Views.MessageListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, "all", this.render)
  },
  render: function(){
    var self = this;
    self.$el.empty();
    _.each(this.collection.models, function(message){
      var messageView = new Kommunicatorapp.Views.MessageView( { model: message} )
      self.$el.append( messageView.render().el );
    })
  }
})

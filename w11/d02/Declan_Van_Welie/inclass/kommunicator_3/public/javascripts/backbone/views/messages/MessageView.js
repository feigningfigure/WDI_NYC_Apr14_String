var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Views.MessageView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, "change", this.render );
    this.listenTo( this.model, "destroy", this.remove );
  },
  tagName: "li",
  template: _.template( $("#message_template").html() ),
  editTemplate: _.template( $('#edit_message').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) );
    return this
  },

  events: {
      'click [data-action="destroy"]': 'removeMessage',
      "dblclick .message_title"  : "editPost",
      "mouseenter .post_title" : "displayDelete",
      "mouseleave .post_title" : "displayDelete"
  },
     removeMessage: function(e){
      e.preventDefault();
      this.model.destroy();
      return this
     },
      editPost: function(){
      var self = this;
      // this.$el.empty();
      this.$el.html( this.editTemplate( this.model.attributes ) );
      this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var editField = self.$el.find('input');
          var commentEdit = editField.val();
          self.model.save({ title: commentEdit })
          // self.model.set('title', commentEdit)
        })

      this.$el.find('button').on('click', function(e){
        e.preventDefault();
        self.render();
      })
      return this
    },
    displayDelete: function(){
      $(".delete_message").fadeToggle();
    }

});

var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Views.MessageView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, "all", this.render );
  },
  tagName: "li",
  template: _.template( $("#message_template").html() ),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) );
    return this
  },

  events: {
      'click button[name="delete_post"]': 'removePost',
      'click button[name="edit_post"]': 'editPost'
  },
     removePost: function(){
      console.log(this.model.id);
      this.model.destroy({id: this.model.id});
      url: '/messages'
      return this
     },
      editPost: function(){
      var self = this
      editTemplate= _.template( $('#edit_message').html() ),
      this.$el.empty();
      this.$el.html( editTemplate( this.model.attributes ) );
      this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var editField = self.$el.find('input');
          var commentEdit = editField.val();
          // commentEdit.val('');
          self.model.save({ title: commentEdit })
          // self.model.create({ title: commentEdit })
        })
      return this
    }

});

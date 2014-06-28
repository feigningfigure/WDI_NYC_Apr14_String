//  ****MODEL****

var Comment = Backbone.Model.extend({
  initialize: function(){
    console.log("You commented, you sexy beast!");
  },

  defaults: {
    title: ""
  }
});

// // ****COLLECTION****

  var CommentCollection = Backbone.Collection.extend({
    model: Comment
  });

// // ****VIEWS****

var CommentView = Backbone.View.extend({
    initialize: function(){
      this.listenTo(this.model, 'all', this.render)
      this.listenTo(this.model, 'destroy', this.remove)
    },
    tagName: 'li',
    template: _.template( $('#comment_template').html() ),
    render: function(){
      this.$el.empty();
      this.$el.html( this.template( this.model.attributes ) );

      return this
    },
  events: {
      'click button[name="delete_comment"]': 'removeComment',
      'click button[name="edit_button"]': 'editComment'
    },
    removeComment: function(){
      this.model.destroy();

      return this
    },
    editComment: function(){
      alert(this.model.attributes.title);
      editTemplate= _.template( $('#edit_comment').html() ),
      this.$el.empty();
      this.$el.html( editTemplate( this.model.attributes ) );
      return this
    }
  });

var CommentListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render )
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(comment){
      var commentView = new CommentView({ model: comment });
      self.$el.append( commentView.render().el )
    })
    return this
  }
});

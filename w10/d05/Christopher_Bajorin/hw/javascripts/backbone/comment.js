// *** MODEL ***

var Comment = Backbone.Model.extend({
  initialize: function(){
    console.log("commented on a post");
  },
  defaults: {
    text: ""
  }
});

// *** COLLECTION ***

var CommentCollection = Backbone.Collection.extend({
  model: Comment
});


// *** VIEWS ***

var CommentView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'add', this.render );
    this.listenTo( this.model, 'destroy', this.remove );
  },
  tagName: 'li',
  template: _.template( $("#comment-template").html() ),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );
    return this;
  },
  events: {
    "click button[name='delete_comment']": "removeComment",
    "click button[name='edit_comment']": "editComment",
    "click button[name='update']": "submitEdit"
  },
  removeComment: function(){
    this.model.destroy();
    return this;
  },
  editComment: function(){
    this.$el.find('.comment-button').toggle();
    this.$el.append( '<input class="edit" type="text" id="edit-comment" value="'+this.model.attributes.text+'"/>')
    this.$el.append( '<button class="update-button" name="update">Update</button>' )
  },
  submitEdit: function(){
    var textField = $('#edit-comment')
    var commentText = textField.val();
    this.model.attributes.text = commentText;
    this.$el.empty()
    this.$el.html( this.template( this.model.attributes ) );
    // this.$el.find('h3').html(commentText)
    // this.$el.find('.comment-button').toggle();
    // this.$el.find('input').remove()
    // this.$el.find('.update-button').remove()
    return this;
  }
});


var CommentListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.collection, 'all', this.render );
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(comment){
      var commentView = new CommentView({ model: comment });
      self.$el.append(commentView.render().el);
    });
    return this;
  }
})

// ************** Model ******************
var Post = Backbone.Model.extend({
  initialize: function(){
    console.log("A new post has been created");
    this.set('comments', new CommentCollection());
  },

  defaults:{
    title: "",
    content: ""
  }
});


// ************** View *******************
var PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },

  tagName: 'li',
  template: _.template( $('#post-template').html() ),
  render: function(){
    var self = this;
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );
    this.$el.find('.edit_post').hide();

    var listView = new CommentListView({ collection: this.model.get("comments"), el: this.$el.find('.comments') });
    listView.render();

    this.$el.find('form[class="new_comment"]').on('submit', function(evt){
      evt.preventDefault();
      var opinionField = self.$el.find('input[name="comment"]');
      var opinion = opinionField.val();
      opinionField.val('');
      self.model.get('comments').add({ opinion: opinion });
    });
    return this;
  },
  events:{
    'dblclick .view': 'toggleEdit',
    'click button[name="edit_post"]': 'editPost'
  },
  toggleEdit: function(){
    this.$el.find('.edit_post').toggle();
  },
  editPost: function(evt){
    evt.preventDefault();
    var editTitleField = this.$el.find('input[class="edit"]');
    var editPostTitle = editTitleField.val();
    var editContentField = $('textarea[name="edit"]');
    console.log(editContentField.val());
    var editPostContent = editContentField.val();
    console.log(editPostContent);
    this.model.set({ 
      title: editPostTitle, content: editPostContent
    });

    return this;
  }

});


var PostListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },

  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(post){
      console.log(post);
      var postView = new PostView({ model: post });
      console.log(postView);
      self.$el.append( postView.render().el );
    });
    return this;
  }
});





// ************** Collection ****************
var PostCollection = Backbone.Collection.extend({
  model: Post
})




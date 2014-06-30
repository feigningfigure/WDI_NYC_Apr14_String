// *****MODEL****

var Post = Backbone.Model.extend({
  initialize: function(){
    console.log("You've posted a post.");
    this.set('comments', new CommentCollection());
  },

  defaults: {
    title: "empty title"
  }
});

// ****COLLECTION****

var PostCollection = Backbone.Collection.extend({
  model: Post
});


// ****View****

var PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'all', this.render )
      },
      tagName: 'li',
      template: _.template( $('#post_template').html() ),
      render: function(){
        var self = this;
        this.$el.empty();
        this.$el.html( this.template( this.model.attributes ) );

        var listView = new CommentListView({ collection: this.model.get('comments'), el: this.$el.find('.comments') });
        listView.render();


        this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var commentField = self.$el.find('input[name="comment"]');
          var comment = commentField.val();
          commentField.val('');
          self.model.get("comments").add({ title: comment })
        })

        return this
      },
      events: {
      'click button[name="delete_post"]': 'removePost',
      'click button[name="edit_post"]': 'editPost'
    },
     removePost: function(){
      this.model.destroy();

      return this
    },
      editPost: function(){
      var self = this
      editTemplate= _.template( $('#edit_comment').html() ),
      this.$el.empty();
      this.$el.html( editTemplate( this.model.attributes ) );
      this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var editField = self.$el.find('input');
          var commentEdit = editField.val();
          // commentEdit.val('');
          self.model.set({ title: commentEdit })
        })
      return this
    }
});

var PostListView = Backbone.View.extend({
  initialize: function(){
    // Here's that "all" function again...
    this.listenTo(this.collection, "all", this.render );
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(post){
      var postView = new PostView({ model: post })
      self.$el.append( postView.render().el )
    })
    return this;
  }
});

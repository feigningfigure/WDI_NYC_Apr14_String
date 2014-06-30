// *****MODEL****

var Post = Backbone.Model.extend({
  initialize: function(){
    console.log("You've posted a post.");
    this.set('comments', new CommentCollection());
  },

  defaults: {
    title: "empty title",
    // We need a global instance of the PostCollection to reference. The following will handle organize the posts by insertion order, since we'll be saving them by a randomized ID in local storage:
    // order: postCollection.nextOrder(),
    // done: false
  },

});

// ****COLLECTION****

window.PostCollection = Backbone.Collection.extend({
    model: Post,
  localStorage: new Backbone.LocalStorage("posts-backbone"),
  // done: function() {
  //   return this.where( {done: true});
  // },

  // remaining: function() {
  //   return this.where( { done: false });
  // },

  // nextOrder: function() {
  //   if (!this.length) return 1;
  //   return this.last().get('order') + 1;
  // },

  // comparator: 'order'
});

var postCollection = new PostCollection;


// ****View****

window.PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'change', this.render );
    this.listenTo( this.model, 'destroy', this.remove );
    this.model.fetch();
      },
      tagName: 'li',
      template: _.template( $('#post_template').html() ),

      render: function() {
        var self = this;
        this.$el.empty();
        // // Not sure what this does:
        // this.$el.toggleClass('done', this.model.get('done'));
        this.$el.html( this.template( this.model.attributes ) );

        var listView = new CommentListView({ collection: this.model.get('comments'), el: this.$el.find('.comments') });

        listView.render();

        // this.toggleDone();

        this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var commentField = self.$el.find('input[name="comment"]');
          var comment = commentField.val();
          commentField.val('');
          self.model.get("comments").add({ title: comment })
          self.model.save();
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
      self = this
      editTemplate= _.template( $('#edit_comment').html() ),
      this.$el.empty();
      this.$el.html( editTemplate( this.model.attributes ) );
      this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var editField = self.$el.find('input');
          var commentEdit = editField.val();
          // commentEdit.val('');
          self.model.set({ title: commentEdit })
          self.model.save({ title: commentEdit })
        })
      return this
    },

    toggleDone: function() {
      this.model.toggle();
    },

});

var PostListView = Backbone.View.extend({
  initialize: function(){
    // Here's that "all" function again...
    this.listenTo(this.collection, "all", this.render );
    this.collection.fetch();
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

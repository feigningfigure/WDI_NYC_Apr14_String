// *****MODEL****

var Post = Backbone.Model.extend({
  intitialize: function(){
    console.log("You've posted a post.");
    this.set('comments', new CommentCollection());
  },

  defaults: {
    title: "empty title",
    content: "empty content"
  }
});

// ****COLLECTION****

var PostCollection = Backbone.Collection.extend({
  model: Post
});


// ****View****

var PostView = Backbone.View.extend({
  intitialize: function(){
    // Gonna need a render function. Also, check later on if "all" is the best event listener I could choose.
    //  // Callbacks bound to the special "all" event will be triggered when any event occurs, and are passed the name of the event as the first argument. For example, to proxy all events from one object to another:

    this.listenTo( this.model, 'all', this.render )
      },
      tagName: 'li',
      // Why always id's? Alex Hint told me to use classes on these things...
      // Create the template necessary to render this stuff.
      template: _.template( $('#post_template').html() ),
      // All the following stuff obviously comes in once we want to render this stuff to a specific template we've put together in the index page
      render: function(){
        var self = this;
        this.$el.empty();
        // I like that Neel spaces out the closing braces. Much easier to read
        this.$el.html( this.template( this.model.attributes ) );


        this.$el.find('form').on('submit', function(e){
          e.preventDefault();
          var commentField = self.$el.find('input[name="comment"]');
          var comment = commentField.val();
          commentField.val('');
          self.model.get("comments").add({ title: comment })
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

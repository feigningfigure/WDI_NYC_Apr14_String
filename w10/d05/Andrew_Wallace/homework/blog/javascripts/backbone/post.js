// ***** MODELS ******
var Post = Backbone.Model.extend({
  initialize: function(){
    console.log("A Post has been created!");
    this.set('comments', new CommentCollection());
  },

  defaults: {
    title: "",
    author: "",
    summary: "",
    content: ""
  }
});

// ***** COLLECTIONS ******

  var PostCollection = Backbone.Collection.extend({
    model: Post
  });


// ***** VIEWS ******

var PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'all', this.render )
  },
  tagName: 'li',
  template: _.template( $('#post-template').html() ),
  render: function() {
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
      self.model.get("comments").add({ comment: comment})
    })

    return this
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
      var postView = new PostView({ model: post })
      self.$el.append( postView.render().el )
    })
    return this;
  }
});





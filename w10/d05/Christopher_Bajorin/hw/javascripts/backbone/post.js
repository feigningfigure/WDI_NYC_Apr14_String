// *** MODEL ***

var Post = Backbone.Model.extend({
  initialize: function(){
    console.log("post created");
    this.set("comments", new CommentCollection());
  },
  defaults: {
    topic: "",
    text: ""
  }
});

// *** COLLECTION ***

var PostCollection = Backbone.Collection.extend({
  model: Post
});

// *** VIEWS ***

var PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
    this.listenTo(this.model, 'destroy', this.remove)
  },
  tagName: "li",
  template: _.template( $("#post-template").html() ),
  render: function(){
    var self = this;
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );

    var listView = new CommentListView({ collection: this.model.get('comments'), el: this.$el.find('#comments') });
    listView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var textField = self.$el.find('input[name="comment"]');
      var text = textField.val();
      textField.val('');
      self.model.get("comments").add({ text: text });
    });
    return this;
  },
  events: {
    "click button[name='delete_post']": "removePost",
    "click button[name='edit_post']": "editPost"
    // needs submit event
  },
  removePost: function(){
    this.model.destroy();
    return this;
  },
  editPost: function(){
    this.$el.find('.post-button').toggle();
    // unfinished, need to figure out multiple entry form
    // and set up a submit event.
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
      var postView = new PostView({ model: post });
      self.$el.append( postView.render().el )
    });
    return this;
  }
});

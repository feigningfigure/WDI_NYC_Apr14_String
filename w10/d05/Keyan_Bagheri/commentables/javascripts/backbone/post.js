
var Post = Backbone.Model.extend({
  initialize: function(){
    console.log("an Post has been born");
    this.set('comments', new CommentCollection());
  },

  defaults: {
    body: "",
    author: ""
  }
});

var PostCollection = Backbone.Collection.extend({
  model: Post
});

var PostView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'all', this.render )
  },
  tagName: 'li',
  template: _.template( $('#post-template').html() ),
  render: function(){
    var self = this;
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );

    var listView = new CommentListView({ collection: this.model.get('comments'), el: this.$el.find('.comments') });
    listView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var bodyField = self.$el.find('input[name="body"]');
      var body = bodyField.val();
      bodyField.val('');
      var authorField = self.$el.find('input[name="author"]');
      var author = authorField.val();
      authorField.val('');
      self.model.get("comments").add({ body: body, author: author })
    })
    
    return this
  },
  events: {
    'click button[name="delete_post"]': 'removePost'
  },
  removePost: function(){
    this.model.destroy();

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
      var postView = new PostView ({ model: post })
      self.$el.append( postView.render().el )
    })
    return this;
  }
});




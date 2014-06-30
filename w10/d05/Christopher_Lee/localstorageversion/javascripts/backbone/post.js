// ***Model***
var Post = Backbone.Model.extend({
	initialize: function(){
		console.log("A new post has been created ");
    this.set('comments', new CommentCollection());
	},

	defaults: {
		name: "",
		date: ""
	}
});

//***Collection***

var PostCollection = Backbone.Collection.extend({
  model: Post,
  localStorage: new Backbone.LocalStorage("posts-backbone")
});

//***View***

var PostView = Backbone.View.extend({
	initialize: function(){
   console.log("a new post view has been created");
   this.listenTo( this.model, 'all', this.render )
  },
  tagName: 'li',
  template: _.template($('#post-template').html()),
  render: function(){
    var self = this;
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes));
    var listView = new CommentListView({ collection: this.model.get('comments'), el: this.$el.find('.comments-list') })

    this.$el.find('#create-comment').on('submit', function(e){
      e.preventDefault();
      var contentField = self.$el.find('input[name="comment"]');
      var content = contentField.val();
      contentField.val('');
      self.model.get("comments").add({ content: content })
    })

    return this
  },
   events: {
    'click .delete' : 'deletePost',
    'click .create' : 'createPost'
  },
  deletePost: function(ev){
    this.model.destroy();
    return this
  },
 createPost: function(ev){
    console.log('create got hit');
    return this
  }
});

var PostListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render)
    this.collection.fetch();
  },
  render: function(){
    var that = this;
    var posts = new PostCollection();
    this.$el.empty();
    _.each(this.collection.models, function(post){
      var postView = new PostView({ model: post })
      that.$el.append(postView.render().el)
    });
    return this
  }
})



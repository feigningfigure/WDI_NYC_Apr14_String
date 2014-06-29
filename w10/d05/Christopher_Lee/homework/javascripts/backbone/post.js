// ***Model***
var Post = Backbone.Model.extend({
	initialize: function(){
		console.log("A new post has been created ");
	},

	defaults: {
		name: "",
		date: ""
	}
});

//***Collection***

var PostCollection = Backbone.Collection.extend({
  model: Post
});

//***View***

var PostView = Backbone.View.extend({
	initialize: function(){
   console.log("a new post view has been created");
  },
  tagName: 'li',
  template: _.template($('#post-template').html()),
  render: function(){
    var self = this;
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes));
    return this
  }
});

var PostListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function(){
    var self = this;
    this.$el.empty();
    // each takes two things: what we want to iterate over, and the callback you want to apply
    _.each(this.collection.models, function(post){
      var postView = new PostView({ model: post })
      self.$el.append(postView.render().el)
    });
    return this
  }
})







//creating random ID for the model??
// function guid() {
//    return (S4()+S4()+"-"+S4()+"-"+S4()+"-"+S4()+"-"+S4()+S4()+S4());
// };

// ***Model***
var Post = Backbone.Model.extend({
	initialize: function(){
		console.log("a brilliant new post");
		this.set('comments', new CommentCollection());
	},

	defaults: {
		post_body: ""
	}
});

//***Collection***

var PostCollection = Backbone.Collection.extend({
  model: Post
});

//***View***

var PostView = Backbone.View.extend({
	initialize: function(){
		this.listenTo( this.model, 'all', this.render )
		this.listenTo(this.model, 'destroy', this.remove)
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
			var commentField = self.$el.find('input[name="comment_text"]');
			var commentText = commentField.val();
			commentField.val('');
			self.model.get("comments").add({ comment_text: commentText })
		})

		return this
	},
events: {
		'click button[name="delete_post"]': 'removePost'
	},
	removePost: function(){
		this.model.destroy();

		return this
	},

events: {
		'click button[name="edit_post"]': 'updatePost'
	},
	updatePost: function(){
		var self = this
		// var commentField = $(.edit_comment)
		console.log(self)
		// commentField.show();

		// this.$el.html( this.template( this.model.attributes )
		// this.model.render();

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
			self.$el.prepend( postView.render().el )
		})
		return this;
	}
});











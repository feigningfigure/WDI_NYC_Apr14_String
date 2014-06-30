var Post = Backbone.Model.extend({
	initialize: function(){
		console.log("a post. yippy!!!");
		// this sets a new ComColl as a an attribute called 'comments' of the Book model
		// this.set('comments', new CommentCollection);
	},
	defaults: {
		title: "",
		body: ""
	}
});

var PostCollection = Backbone.Collection.extend({
	model: Post
});

var PostView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'all', this.render)
		// this.listenTo(this.model, 'destroy', this.render)
	},
	tagName: 'li',
	template: _.template( $('#post-template').html() ),
	render: function(){
		var self = this;
		this.$el.empty();
		this.$el.html( this.template( this.model.attributes ) );

		// var commmentListView = new CommentListView({ collection: this.model.get('comments'), el: this.$el.find('.comments') });
		// commmentListView.render();

		// this.$el.find('form').on('submit', function(e){
		// 	e.preventDefault();
		// 	var commentField = self.$el.find('input[name="comment"]');
		// 	var comment = commentField.val();
		// 	commentField.val('');
		// 	self.model.get("comments").add({ body: comment })
		// })
		
		return this
	}
	
})

var PostListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'all', this.render);
	},
	render: function(){
		var self = this;
		this.$el.empty();
		_.each(this.collection.models, function(post){
			// debugger
			var postView = new PostView({ model: post })
			// debugger
			self.$el.append( postView.render().el )
		})
		return this;
	}
});
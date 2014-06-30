var Post = Backbone.Model.extend({
	initialize: function(){
		this.set('comments', new CommentCollection());
		console.log('Post created.');
	},
	defaults: {
		title: "",
		body: ""
	}
});

var PostCollection = Backbone.Collection.extend({
	localStorage: new Backbone.LocalStorage("PostLocalStorage"),
	model: Post
});

var PostView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model, 'destroy', this.remove);
	},
	tagName: 'li',
	template: _.template($('#post-template').html()),
	render: function(){
		var self = this;
		this.$el.empty();
		this.$el.html(this.template(this.model.attributes));
		var listView = new CommentListView({collection: this.model.get('comments'), el: this.$el.find('.comments')});
		listView.render();
		this.$el.find('form').on('submit', function(e){
			e.preventDefault();
			var commentField = self.$el.find('input[name="comment"]');
			var comment = commentField.val();
			commentField.val('');
			self.model.get('comments').add({body: comment})
		})

		return this;
	},
	events: {
		'click button[name="delete-post"]': 'removePost'
	},
	removePost: function(){
		this.model.destroy();
		return this;
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
			var postView = new PostView({model: post})
			self.$el.append(postView.render().el)
		})
		return this;
	}
});
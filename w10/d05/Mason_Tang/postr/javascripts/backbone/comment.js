// ***Model***

var Comment = Backbone.Model.extend({
  initialize: function(){
  	console.log("A comment has been written");
  },

  defaults: {
    title: ""
  }
});

//***Collection***

var CommentCollection = Backbone.Collection.extend({
  model: Comment
});

// ***Views***

var CommentView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'all', this.render)
		this.listenTo(this.model, 'destroy', this.remove)
	},
	tagName: 'li',
	template: _.template( $('#comment-template').html() ),
	render: function(){
		this.$el.empty();
		this.$el.html( this.template( this.model.attributes ) );

		return this
	},
	events: {
		'click button[name="delete_comment"]': 'removeComment'
	},
	removeComment: function(){
		this.model.destroy();

		return this
	}
});

var CommentListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'all', this.render )
	},
	render: function(){
		var self = this;
		this.$el.empty();
		_.each(this.collection.models, function(comment){
			var commentView = new CommentView({ model: comment });
			self.$el.append( commentView.render().el )
		})
		return this
	}
});

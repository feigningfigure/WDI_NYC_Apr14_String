var PostApp = PostApp || { Models: {}, Collections: {}, Views: {} };

PostApp.Views.PostListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, "all", this.render)
	},
	tagName: 'li',
	render: function(){
		var self = this;
		this.$el.empty();
		this.collection.forEach(function(model){
			postView = new PostApp.Views.PostView({model: model});
			self.$el.append( postView.render().el );
		})

		return this
	}
})
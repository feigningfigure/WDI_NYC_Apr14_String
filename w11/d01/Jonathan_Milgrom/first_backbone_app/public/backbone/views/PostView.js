var PostApp = PostApp || { Models: {}, Collections: {}, Views: {} };

PostApp.Views.PostView = Backbone.View.extend({
	initialize: function(){
		// this.listenTo(this.model, "change", this.render);
	},

	// tagName: 'li',
	template: _.template( $('#post-template').html() ),
	render: function(){
		this.$el.empty();
		this.$el.html(this.template( this.model.attributes ));

		return this
	}	
})
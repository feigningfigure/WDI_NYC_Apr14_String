var PostApp = PostApp || { Models: {}, Collections: {}, Views: {} };

PostApp.Collections.PostCollection = Backbone.Collection.extend({
	model: PostApp.Models.Post,
	url: '/posts'
})
var PostApp = PostApp || { Models: {}, Collections: {}, Views: {} };

PostApp.Models.Post = Backbone.Model.extend({
	initialize: function(){
		console.log("Post has been created");
	}
})
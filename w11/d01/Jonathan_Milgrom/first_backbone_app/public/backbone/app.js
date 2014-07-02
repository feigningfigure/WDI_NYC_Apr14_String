var PostApp = PostApp || { Models: {}, Collections: {}, Views: {} };
var colletion,
	listView;

PostApp.initialize = function(){
	collection = new PostApp.Collections.PostCollection();

	listView = new PostApp.Views.PostListView({
		collection: collection,
		el: $('.post-list')
	});

	// sends get request to 'posts', creates models for each post, and adds to collection
	collection.fetch();

	$(".main-container").find("form").on("submit", function(e){
		e.preventDefault();
		console.log($(this));
		var $titleInput = $(this).find("input[name='title']")
		var $bodyInput = $(this).find("input[name='body']")
		title = $titleInput.val();
		body = $bodyInput.val();
		$titleInput.val(""); 
		$bodyInput.val("");
		// creates model, adds model to collection, makes a post request to url: "posts"
		// not sure of the order.  I think model and collection still get made even if database rejects entry.
		collection.create({title: title, body: body});
	});
}

$(function(){

	PostApp.initialize();

});
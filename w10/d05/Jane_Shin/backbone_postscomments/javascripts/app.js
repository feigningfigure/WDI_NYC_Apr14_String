var postCollection,
		postListView,
		post,
		anotherPost;

$(function(){
	postCollection = new PostCollection();
	postListView = new PostListView({collection: postCollection, el: $('#all-posts')});
	post = new Post({title: "Sunday @ School"});
	anotherPost = new Post({title: "manual entry", body: "why are you giving me a hard time?!"})
	postCollection.add(post);
	postCollection.add(anotherPost);

	$('.new-post').on('submit', function(e){
		e.preventDefault();
		console.log("heard the submit on new-post form");
		var titleField = $('#post-title');
		var postTitle = titleField.val();
		titleField.val('');
		var bodyField = $('#post-body');
		var postBody = bodyField.val();
		bodyField.val('');
		postCollection.add({title: postTitle, body: postBody});
	});

});
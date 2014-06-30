// var post;
$(function(){

	postCollection = new PostCollection();
	postListView = new PostListView({ collection: postCollection, el: $("#post-list") });
	var post = new Post({ 
		title: "Code School",
		body: "Learning backbone is fucking difficult"
	});
	postCollection.add(post);

	$('#new-post').on('submit', function(e){
		e.preventDefault();
		console.log("submit has been hit");
		var titleField = $('#post-title');
		var bodyField = $('#post-body');
		var postTitle = titleField.val();
		var postBody = bodyField.val();
		titleField.val('');
		bodyField.val('');
		postCollection.add({ title: postTitle, body: postBody });
	});
})

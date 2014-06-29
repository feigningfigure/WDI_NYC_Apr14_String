var postCollection,
		postListView;


$(function(){

	postCollection = new PostCollection();
	postListView = new PostListView(
		{ collection: postCollection, el: $("#post-list") });
	var post = new Post({ post_body: "My first awesome blog post" });
	postCollection.add(post);

	$('#new-post').on('submit', function(e){
		e.preventDefault();
		var postField = $('#post-text');
		var postText = postField.val();
		postField.val('');
		postCollection.add({ post_body: postText });
	})

})

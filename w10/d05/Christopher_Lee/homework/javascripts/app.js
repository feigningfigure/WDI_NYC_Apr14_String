
$(function(){

	postCollection = new PostCollection();
	postListView = new PostListView({ collection: postCollection, el: $("#page-list") });
	var post = new Post({ name: "What is Backbone?", date: "6/28/2014" });
  var postTwo = new Post({ name: "The New Tech Universe", date:"6/29/2014" });
  postCollection.add(post);
  postCollection.add(postTwo);

	//postCollection.add(post);

})

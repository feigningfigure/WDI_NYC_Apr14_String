
$(function(){

	postCollection = new PostCollection();
	postListView = new PostListView({ collection: postCollection, el: $(".page-list") });
	var post = new Post({ name: "What is Backbone?", date: "6/28/2014" });
  var postTwo = new Post({ name: "The New Tech Universe", date:"6/29/2014" });
  postCollection.add(post);
  postCollection.add(postTwo);

  $('#new-post').on('submit', function(e){
    e.preventDefault();
    var nameField = $('#post-name');
    var dateField = $('#post-date');
    var postName = nameField.val();
    var postDate = dateField.val();
    nameField.val('');
    dateField.val('');
    postCollection.add({ name: postName, date: postDate });
  })
})

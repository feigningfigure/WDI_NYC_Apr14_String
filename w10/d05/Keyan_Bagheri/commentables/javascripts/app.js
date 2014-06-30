var postCollection,
    postListView;

$(function(){

  postCollection = new PostCollection();
  postListView = new PostListView({
    collection: postCollection, el: $("#post-list") });
  var post = new Post({ body: "This is my first post", author: "Joe Blow" });
  postCollection.add(post);

  $("#new-post").on("submit", function(e){
    e.preventDefault();
    var bodyField = $("#post-body");
    var postBody = bodyField.val();
    bodyField.val("");
    var authorField = $("#post-author");
    var postAuthor = authorField.val();
    authorField.val("");
    postCollection.add({ body: postBody, author: postAuthor });
  })
})
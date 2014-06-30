var postCollection,
    postListView;


$(function(){

  postCollection = new PostCollection();
  postListView = new PostListView({ collection: postCollection, el: $("#post-list") });
  var post = new Post({ title: "Hello World!" });
  postCollection.add(post);

  $('#new-post').on('submit', function(e){
    e.preventDefault();
    var titleField = $('#post-title');
    var postTitle = titleField.val();
    titleField.val('');
    postCollection.add({ title: postTitle });
  })

})

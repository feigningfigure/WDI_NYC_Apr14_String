var postCollection,
    postListView;


$(function(){

postCollection = new PostCollection();
postListView = new PostListView({ collection: postCollection, el: $("#post_list") } );
var post = new Post({ title: "First Post" });
postCollection.add(post);
post.save();

$("#new_post").on('submit', function(e){
  e.preventDefault();
  var titleField = $("#post_title");
  var postTitle = titleField.val();
  titleField.val('');
  var newPost = new Post({ title: postTitle });
  postCollection.add( newPost );
  newPost.save();
});

})

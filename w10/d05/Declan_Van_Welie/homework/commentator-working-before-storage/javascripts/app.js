var postCollection,
    postListView;


$(function(){

postCollection = new PostCollection();
postListView = new PostListView({ collection: postCollection, el: $("#post_list") } );
var post = new Post({ title: "CSS is the opiate of the masses!" });
postCollection.add(post);

$("#new_post").on('submit', function(e){
  e.preventDefault();
  var titleField = $("#post_title");
  var postTitle = titleField.val();
  titleField.val('');
  postCollection.add({ title: postTitle });
});


})

var postCollection,
    postListView;


$(function(){

postCollection = new PostCollection();
postListView = new PostListView({ collection: postCollection, el: $("#post_list") } );
var post = new Post({ title: "Why?", content: "Yup" });
postCollection.add(post);
console.log(postCollection)

$("#new_post").on('submit', function(e){
  e.preventDefault();
  var titleField = $("#post_title");
  var postTitle = titleField.val();
  // var contentField = $("#post_content");
  // var postContent = contentField.val();
  titleField.val('');
  // contentField.val('');
  alert("I work");
  postCollection.add({ title: postTitle, content: "new" });
  console.log(postCollection);
});

})

var postCollection,
    postListView;


$(function(){

  postCollection = new PostCollection();
  postListView = new PostListView({ collection: postCollection, el: $("#post-list") });
  var post = new Post({ topic: "Rhode Island", text: "is neither a road, nor an island. Discuss." });
  postCollection.add(post);

  $('#new-post').on('submit', function(e){
    e.preventDefault();
    var topicField = $('#post-topic');
    var postTopic = topicField.val();
    var textField = $("#post-text");
    var postText = textField.val();
    topicField.val('');
    textField.val('');
    postCollection.add({ topic: postTopic, text: postText });
  });

})

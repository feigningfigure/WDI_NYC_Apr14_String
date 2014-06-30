function setEventListeners(){

  $('#new-post').on('submit', function(evt){
    evt.preventDefault();
    console.log("it hears");
    var titleField = $('#post-title');
    var postTitle = titleField.val();
    var contentField = $('#post-content');
    var postContent = contentField.val();
    titleField.val('');
    contentField.val('');
    postCollection.add({ 
      title: postTitle, content: postContent 
    });
  });

}



// ******* Globals *********
var postCollection,
    postListView;
// *************************


$(function(){

  postCollection = new PostCollection;
  postListView = new PostListView({ collection: postCollection, el: $('#post-list') });

  var post = new Post({ title: "blah", content:"helllooqweoqoeoo" });
  postCollection.add(post);

  setEventListeners();

});

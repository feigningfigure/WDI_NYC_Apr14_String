var postCollection,
    postListView;

  $(function(){
    postCollection = new PostCollection();
    postListView = new PostListView({ collection: postCollection, el: $("#post-list") });
    var post = new Post({ name: "Best Bourbons" });
    postCollection.add(post);

    $('#new-post').on('submit', function(e){
      e.preventDefault();
      var nameField = $('#post-name');
      var postName = nameField.val();
      nameField.val('');
      postCollection.add({ name: postName });
    })
  })

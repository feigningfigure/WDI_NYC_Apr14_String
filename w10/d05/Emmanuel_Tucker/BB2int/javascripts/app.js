
var CommentCollection,
     commentListView;


$(function(){
     commentCollection = new CommentCollecion();
     commentListView = new CommentListView({collection: commentCollection, el: $("#comment-list") });
     var comment = new Comment({ name: "ToDaComments"});
     commentCollection.add(comment);



     $('new-comment').on('submit', function(e){
          e.preventDefault();
               var nameField = $("#comment-name");
               var commentName = nameField.val();
               nameField.val('');
               commentCollection.add({name: commentName });
     })
})





































var Postapp = Postapp || {Models: {}, Collections: {}, Views: {} };


Postapp.initialize = function(){
   var collection = new Postapp.Collections.PostCollection();
   var listView = new Postapp.Views.PostListView({collection: collection,
   el: $('.post-list')
   });

   collection.fetch();
   $('.postsform').on('submit', function(e){
      e.preventDefault();
      var postName = $("input[name='post-name']").val();
      var postDate = $("input[name='post-date']").val();
      $("input[name='post-date']").val('');
      $("input[name='post-name']").val('');
    collection.create({name: postName, date: postDate})
   });
}

$(function(){
   Postapp.initialize();
});

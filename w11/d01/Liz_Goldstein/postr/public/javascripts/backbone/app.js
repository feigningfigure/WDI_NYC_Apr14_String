var Postapp = Postapp || {
    Models: {},
    Collections: {},
    Views: {}
};

Postapp.initialize = function() {
    var collection = new Postapp.Collections.PostCollection();
    var listView = new Postapp.Views.PostListView({
        collection: collection,
        el: $('.post-list')
    });

    collection.fetch();

    $('.posts').find('form').on("submit", function(e) {
        e.preventDefault();
        var postTitle = $('input').val();
        $('input').val('')
        collection.create({
            title: postTitle
        })

    })


}


$(function() {
    Postapp.initialize();

  $('.delete-button').on("click", function(){
    console.log("click");
  })

});

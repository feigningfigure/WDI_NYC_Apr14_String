var Postapp = Postapp || ({ Models: {}, Collections: {}, Views: {} });

Postapp.initialize = function(){
  var collection = new Postapp.Collections.PostCollection();

  // PostListView takes 2 arguments, collection and el
  var listView = new Postapp.Views.PostListView({
    collection: collection,
    el: $('.post-list')
  });

  // grab data from db and add into collection through fetch
  collection.fetch();

  // event listener for form
  $(".posts").find('form').on("submit", function(evt){
    // prevent default action of input
    evt.preventDefault();
    // set user input value to a variable
    var postContent = $('input').val();
    // console.log(postContent);
    // empty input field
    $('input').val('');
    // create entry on db and simultaneously add into collections which triggers render
    collection.create({ content: postContent });
  });

}



$(function(){

  Postapp.initialize();

});
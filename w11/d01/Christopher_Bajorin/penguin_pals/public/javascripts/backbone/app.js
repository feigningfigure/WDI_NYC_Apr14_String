var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };


Penguinapp.initialize = function(){
  var collection = new Penguinapp.Collections.PenguinCollection();
  var listView = new Penguinapp.Views.PenguinListView({
    collection: collection,
    el: $('.penguin-list')
  });

  console.log("collection")
  console.log(collection)

  console.log("listview")
  console.log(listView)

    collection.fetch();

  $(".penguins").find("form").on("submit", function(e){
    e.preventDefault();
    var penguinName = $('input').val();
    $('input').val('');
  });
};

$(function(){
  Penguinapp.initialize();
});

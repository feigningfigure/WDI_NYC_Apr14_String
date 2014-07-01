var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.initialize = function(){
  var collection = new Penguin.Collections.PenguinCollection();

  var listView = new Penguinapp.Views.PenguinListViews({
    collection: collection,
    el: $('.penguin-list')
  });

  // listView.render();
  collection.fetch();

  $('.penguins').find('form').on('submit', function(e){
    e.preventDefault();
    var penguinName = $('input').val();
    $('input').val('')
    collection.create({name: penguinName})
  })
}

$(function(){

  Penguinapp.initialize();

});
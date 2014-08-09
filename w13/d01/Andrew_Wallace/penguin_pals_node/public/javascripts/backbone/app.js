var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.initialize =  function(){

  var collection = new Penguinapp.Collections.PenguinCollection();

  var listView = new Penguinapp.Views.PenguinListView({
    collection: collection,
    el: $('.penguin-list')
  });

  collection.fetch();

  $('.penguins').find('form').on('submit', function(e){
    e.preventDefault();
    var penguinName = $('input').val();
    $('input').val('');
    collection.create({name: penguinName})
  })

}

$(function(){
  $('body').hide();
  Penguinapp.initialize();
  $('body').fadeIn(1500);
});

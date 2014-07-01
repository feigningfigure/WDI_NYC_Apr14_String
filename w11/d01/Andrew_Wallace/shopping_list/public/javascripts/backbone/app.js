var Shoppinglistapp = Shoppinglistapp || { Models: {}, Collections: {}, Views: {} };

Shoppinglistapp.initialize = function(){
  // debugger;
  // var collection = new Shoppinglistapp.Collections.ItemCollection();
  var listView = new Shoppinglistapp.Views.ItemListView({
    collection: new Shoppinglistapp.Collections.ItemCollection(),
    el: $('.item-list')
  });
  listView.collection.fetch();

  $('.items').find('form').on('submit', function(e){
    e.preventDefault();
    var itemName = $('input').val();
    $('input').val('')

    listView.collection.create( {name: itemName})
  })
};

$(function(){
  Shoppinglistapp.initialize();
});

var Itemapp = Itemapp || { Models: {}, Collections: {}, Views: {} };

Itemapp.initialize = function(){
  var collection = new Itemapp.Collections.ItemCollection();
  var listView = new Itemapp.Views.ItemListView({ collection: collection,
    el: $('.item-list')
  });
  collection.fetch();
  $('.items').find('form').on('submit', function(e){
    e.preventDefault();
    var itemName = $('input').val();
    $('input').val('');
    collection.create({ name: itemName })
  });
}

$(function(){
  Itemapp.initialize();
});
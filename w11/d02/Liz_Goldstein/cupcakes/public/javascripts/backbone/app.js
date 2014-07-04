var Cupcakeapp = Cupcakeapp || { Models: {}, Collections: {}, Views: {} };
var collection;

Cupcakeapp.initialize = function(){
  collection = new Cupcakeapp.Collections.CupcakeCollection();

  var listView = new Cupcakeapp.Views.CupcakeListView({
    collection: collection,
    el: $('.cupcake-list')
  });

  // listView.render();
  collection.fetch();

  $('.cupcakes').find('form').on('submit', function(e){
    e.preventDefault();
    var cupcakeName = $('input').val();
    $('input').val('')
    collection.create({name: cupcakeName})
  })
}



$(function(){

  Cupcakeapp.initialize();

});

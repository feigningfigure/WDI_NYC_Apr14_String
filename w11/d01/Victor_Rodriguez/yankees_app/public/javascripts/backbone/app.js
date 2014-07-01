var Yankeeapp = Yankeeapp | | { Models: { }, Collections:{ }, Views{ } }; 

Yankeeapp.initialize = function() {
  var collection = new Yankeeapp.Collections.YankeeCollection ();

  var listView = new Yankeeapp.Views.YankeeListView({
  collection: collection, 
  el: $('.yankee-list')
  });

 listView.render();
 collection.fetch();
 $('.yankees').find('form').on('submit', function(e){
   e.preventDefault();
   var yankeeName = $('input').val();
   $(input.val('');

  })
}

$(function(){

  Yankeeapp.initialize();

});

var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.initialize = function(){
  var collection = new Kommunicatorapp.Collections.MessageCollection();

   collection.fetch({success: function(){
    console.log(collection.models[0]);
    }});

  var listView = new Kommunicatorapp.Views.MessageListView({
    collection: collection,
    el: $(".message_list")
  });



  $("#new_message_form").on('submit', function(e){
    e.preventDefault();
    var messageName = $('input').val();
    $('input').val('');
    collection.create({title: messageName});
  })

  // collection.fetch();

  // events = {}

}

$(function(){

  Kommunicatorapp.initialize();

});

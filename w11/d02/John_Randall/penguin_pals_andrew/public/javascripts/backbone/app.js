var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.initialize = function(){
  var collection = new Penguinapp.Collections.PenguinCollection();
  var listView = new Penguinapp.Views.PenguinListView({
    collection: collection,
    el: $('.penguin-list')
  });
  // listView.render();  //Old way of doing it.
  collection.fetch(); //RESTful routing FTW. .fetch pulls out all the penguins in the DB, hitting the index method.
// .fetch knows the url we want to hit because we specified it in the collection.
//  Makes an AJAX call to that URL.  Takes the response, iterates and adds it to itself.
//  BUT the real cool part is that after it adds it to the collection.  Every time we do that, we trigger render with
// the new items added.

  $('.penguins').find('form').on('submit', function(e){
    e.preventDefault();
    var penguinName = $('input').val();
    $('input').val('')

    // Normally this is where it would be added to the collection within backbone.
    // Instead we now need to bridge Rails here to connect to the server -- That's right, it's time for AJAX.
    // Head on over to the penguins_controller.rb file now.

    // Welcome back!  Let's talk about the .create method that Backbone has.
    // collection.add({name: penguinName}) //OLD WAY
    collection.create({name: penguinName}) // The .create method from backbone. It's a POST request to the same URL.
    //Something will break on the server.  Go check dem server logs!
    // It's that damn CSRF token authenticity error!  So let's fix it! There are a few ways but
    // let's see the super easy way.  Go to the application_controller.rb file.
  })
}

$(function(){
  Penguinapp.initialize();
});

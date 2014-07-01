var Bike,
    BikeView,
    BikeCollection,
    BikeListView;


$(function(){

  bikeCollection = new Bikeapp.Collections.BikeCollection();
  bikeListView = new Bikeapp.Views.BikeListView({ collection: bikeCollection, el: $("#bike-list") });


  $('#new-bike').on('submit', function(e){
    e.preventDefault();
    var nameField = $('#bike-list');
    var bikeName = nameField.val();
    nameField.val('');
    bikeCollection.add({ name: bikeName });
  })

})
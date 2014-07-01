var Plantapp = Plantapp || { Models: {}, Collections: {}, Views: {} };

Plantapp.initialize = function() {
  var collection = new Plantapp.Collections.PlantCollection();
  var listView = new Plantapp.Views.PlantListView({
    collection: collection,
    el: $(".plant-list")
  });

  collection.fetch();


  $(".plants").find("form").on("submit", function(e){
    e.preventDefault();
    var plantName = $("input[name=plant-name]").val();
    var plantColor = $("input[name=plant-color]").val();
    $('input').val('');
    $(".plant-list").empty()
    collection.add({ name: plantName, color: plantColor });
    var plant = new Plantapp.Models.Plant({ name: plantName, color: plantColor });
    plant.save();
  });
};

$(function(){
  Plantapp.initialize();
});

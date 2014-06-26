
// var ingredientCollection = new IgredientCollection
var juicesCollection,
    juiceListView,
    juice1,
    juice2,
    juice3;

$(function(){

  juicesCollection = new JuicesCollection();

  juiceListView = new JuiceListView({ collection: juicesCollection, el: $("#juice-list") });

  juice1 = new Juice({ name: "Razzmataz" });
  juice2 = new Juice({ name: "Holy Mary" });
  juice3 = new Juice({ name: "Strawberry Crush" });

  juicesCollection.add(juice1);
  juicesCollection.add(juice2);
  juicesCollection.add(juice3);

  

});


// carView = new CarView({ model: car, el: $("#car-holder") });

// carView.render();


// juiceView = new JuiceView({ model: juice1, el: $("#juice_list") });
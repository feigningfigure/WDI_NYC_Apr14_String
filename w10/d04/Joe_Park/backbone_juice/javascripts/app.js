var juicesCollection,
    juiceListView,
    ingredientsListView,
    razzmataz,
    holyMary,
    strawberryCrush,
    banana,
    strawberry,
    cherry,
    lime,
    vodka,
    tequila,
    rum;

$(function(){

  juicesCollection = new JuicesCollection();

  juiceListView = new JuiceListView({ collection: juicesCollection, el: $("#juice-list") });

  razzmataz = new Juice({ name: "Razzmataz" });
  holyMary = new Juice({ name: "Holy Mary" });
  strawberryCrush = new Juice({ name: "Strawberry Crush" });

  juicesCollection.add(razzmataz);
  juicesCollection.add(holyMary);
  juicesCollection.add(strawberryCrush);

  // ingredientListView = new IngredientsListView({ collection: ingredientsCollection, el: $("#ingredient-list") });

  banana = new Ingredient({ name: "Banana" });
  strawberry = new Ingredient({ name: "Strawberry" });
  vodka = new Ingredient({ name: "Vodka" });
  tequila = new Ingredient({ name: "Tequila" });
  rum = new Ingredient({ name: "Rum" });

  // Razzmataz
  razzmataz.ingredientsCollection.add(banana);
  razzmataz.ingredientsCollection.add(rum);
  razzmataz.ingredientsCollection.add(vodka);

  // holyMary
  holyMary.ingredientsCollection.add(tequila);
  holyMary.ingredientsCollection.add(strawberry);
  holyMary.ingredientsCollection.add(vodka);

  // strawberryCrush
  strawberryCrush.ingredientsCollection.add(banana);
  strawberryCrush.ingredientsCollection.add(strawberry);
  strawberryCrush.ingredientsCollection.add(rum);


});

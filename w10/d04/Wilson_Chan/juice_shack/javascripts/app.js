// ***Juice Model***

var Ingredient = Backbone.Model.extend({
  initialize: function(){
    console.log("Juice model created")
  },

  defaults:{  //for clarification
    fruit: "",
    flavor: "",
    name: "",
  }

});


// ***Juice View***
var IngredientView = Backbone.view.extend({
  tagname: 'li'
  template: _.template( $('#ingredient_template').html() ),
  render: function(){
    this.$el.html( this.template { ingredient: this.model.toJSON() } ) );

    return this
  }
});

var IngredientListView = Backbone.View.extend({
  initialize: function(){

    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
},

render: function(){

  this.$el.empty();
  var self = this;
  _.each(self.collection.models, function(ingredient){
    var ingredientView = new IngredientView({ model: ingredient });
    self.$el.append( ingredientView.render().el );
  })
  return this;
  }
})

// ***Juice Collection***

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var ingredients,
    listView,
    apple,
    orange,
    pear,
    banana,
    kiwi;

$(function(){

    ingredients = new IngredientCollection();

    listView = new IngredientListView({ collection: ingredients, el: $('#ingredient-list') });

    apple = new Ingredient({ make: "Apple", flavor: "Dull", name: "MacDull" });
    orange = new Ingredient({ make: "Orange", flavor: "Sweet", name: "O-Sweet-J" });
    pear = new Ingredient({ make: "Pear", flavor: "Simple", name: "Pearpal" });
    banana = new Ingredient({ make: "Banana", flavor: "Rogue", name: "Bananarama" });
    kiwi = new Ingredient({ make: "Kiwi", flavor: "Tart", name: "Kiwitantrum" });

    cars.add(apple);
    cars.add(orange);
    cars.add(pear);
    cars.add(banana);
    cars.add(kiwi);
})

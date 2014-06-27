// ******** Model *********

var Ingredient = Backbone.Model.extend({
  initialize: function(){
    console.log("Ingredient has been created")
  },

  default:{
    name: "",
  }
});

// ******** View *********

var IngredientView = Backbone.View.extend({
  // template1 = _.template('<l1><%= Ingredient.name %></li>')
});



var IngredientsListView = Backbone.View.extend({


});





// ************* Collection ************

var IngredientsCollection = Backbone.Collection.extend({
  model: Ingredient
});



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


});



var IngredientsListView = Backbone.View.extend({



});





// ************* Collection ************

var IngredientsCollection = Backbone.Collection.extend({
  model: Ingredient
});

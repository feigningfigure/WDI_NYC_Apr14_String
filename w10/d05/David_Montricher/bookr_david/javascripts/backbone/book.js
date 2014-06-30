// *** MODEL ***

// Create the Author class, notice the capitalization
var Book = Backbone.Model.extend({
  initialize: function(){
    console.log("an Author has been born")
  },

  defaults: {
    name: "",
  }
});

// *** VIEW ***
// *** COLLECTION ***

car AuthorCollection = Backbone.Collection.extend({
  model: Author

});

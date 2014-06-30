// *** MODEL ***

var Book = Backbone.Model.extend({
  initialize: function(){
    console.log("You just got Bouked, bitches.")
  },
  defaults: {
    name: ""
  }
});


// *** COLLECTION ***

var BookCollection = Backbone.Collection.extend({
  model: Book
});


// *** VIEW ***


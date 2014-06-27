// ***Model***

var Book = Backbone.Model.extend({
  initialize: function(){
  	console.log("A book has been written");
  },

  defaults: {
    title: ""
  }
});

//***Collection***

var BookCollection = Backbone.Collection.extend({
  model: Book
});
var Shoppinglistapp = Shoppinglistapp || { Models: {}, Collections: {}, Views: {} };

Shoppinglistapp.Models.Item = Backbone.Model.extend({
  initialize: function(){
    console.log("A shopping list item has been added!");
  },
  defaults:{
    name: ''
  }
});


// var item = new Shoppinglistapp.Models.Item();

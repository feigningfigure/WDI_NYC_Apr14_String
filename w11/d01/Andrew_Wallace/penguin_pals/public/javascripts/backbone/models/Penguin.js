var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Models.Penguin = Backbone.Model.extend({
  initialize: function(){
    console.log("A penguin has been birthed" );
  },
  defaults:{
    name: ''
  }
});

// var penguin = new Penguin <-- OLD WAY
var penguin = new Penguinapp.Models.Penguin();

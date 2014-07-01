var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Models.Penguin = Backbone.Model.extend({
  initialize: function(){
    console.log("A penguin has been birthed ");
  },

});

var penguin = new Penguinapp.Models.Penguin();

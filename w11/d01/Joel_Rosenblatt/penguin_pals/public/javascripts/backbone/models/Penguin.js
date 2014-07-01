var Penguinapp  = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Models.Penguin = Backbone.Model.extend({
  initialize: function(){
    console.log("All hail the Penguin!");
  },
  defaults: {
    name: ""
  }
});

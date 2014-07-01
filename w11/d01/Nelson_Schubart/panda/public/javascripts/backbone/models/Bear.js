var Bearapp = Bearapp || { Models: {}, Collections: {}, Views: {} };

Bearapp.Models.Bear = Backbone.Model.extend({
  initialize: function(){
    console.log("A bear has been birthed ");
  },
  defaults:{
    name: ''
  }
});

// How to call this variable within the Bearapp name space
// var penguin = new Bearapp.Models.Bear();

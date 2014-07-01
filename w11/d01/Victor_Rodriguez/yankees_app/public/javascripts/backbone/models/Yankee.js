var Yankeeapp = Yankeeapp || { Models: {}, Collections: {}, Views: {} };

Yankeeapp.Models.Yankee = Backbone.Model.extend({
  initialize: function(){
    console.log("More history and tradition added");
  },
  defaults:{
    name: '',
    position:
  }
});

// How to call this variable within the Yankeeapp name space
// var yankee = new Yankeeapp.Models.Yankee();
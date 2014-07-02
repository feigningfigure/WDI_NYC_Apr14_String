var Cupcakeapp = Cupcakeapp || { Models: {}, Collections: {}, Views: {} };

Cupcakeapp.Models.Cupcake = Backbone.Model.extend({
  initialize: function(){
    console.log("A new precious cupcake! ");
  },
  defaults:{
    name: ''
  }
});

var Bikeapp = Bikeapp || {Models: {}, Collections: {}, Views: {} };

Bikeapp.Models.Bike = Backbone.Model.extend({
  initialize: function(){
    console.log("vroom");
  },
  defaults:{
    make: "",
    model: "",
    year: ""
  }

});

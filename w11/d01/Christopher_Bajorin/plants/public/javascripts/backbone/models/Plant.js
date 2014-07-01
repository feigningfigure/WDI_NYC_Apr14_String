var Plantapp = Plantapp || { Models: {}, Collections: {}, Views: {} };

Plantapp.Models.Plant = Backbone.Model.extend({
  initialize: function(){
    console.log("Planting!")
  },
  defaults: {
    name: '',
    color: ''
  },
  url: "/plants"
});

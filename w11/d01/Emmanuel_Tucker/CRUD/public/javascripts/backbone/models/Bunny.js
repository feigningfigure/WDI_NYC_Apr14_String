var Bunnyapp || { Models: {}, Collections: {}. Views: {}};

Bunnyapp.Models.Bunny = Backbone.Model.extend({
     initialize: function(){
          console.log("everyone lovwe bunnys")
     },
     defaults:{
          name: ''
     }
})

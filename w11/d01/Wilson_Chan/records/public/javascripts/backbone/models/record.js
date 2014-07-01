var Recordapp = Recordapp || { Models: {}, Collections: {}, Views: {} };

Recordapp.Models.Record = Backbone.Model.extend({
  initialize: function(){
    console.log("A record is now created ");
  },
  defaults:{
    name: ''
  }
});

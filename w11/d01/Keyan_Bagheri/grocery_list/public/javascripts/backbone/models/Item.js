var Itemapp = Itemapp || { Models: {}, Collections: {}, Views: {} };

Itemapp.Models.Item = Backbone.Model.extend({
  initialize: function(){
    console.log("An item has been added");
  },
  defaults:{
    name: ''
  }
});


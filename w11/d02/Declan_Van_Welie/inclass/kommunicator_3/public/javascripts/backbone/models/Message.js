var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Models.Message = Backbone.Model.extend({
  initialize: function(){
    console.log("You've posted a message")
  },
  defaults:{
    title: ''
  }

});

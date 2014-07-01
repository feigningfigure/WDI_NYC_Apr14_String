var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Models.Comment = Backbone.Model.extend({
  initialize: function(){
    console.log("You've posted a comment")
  },
  defaults:{
    content: ''
  }

});

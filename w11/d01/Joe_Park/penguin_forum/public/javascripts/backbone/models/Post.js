var Postapp = Postapp || ({ Models: {}, Collections: {}, Views: {} });

Postapp.Models.Post = Backbone.Model.extend({
  initialize: function(){
    console.log("Post has been created");
  },

  defaults:{
    content: ""
  }

});

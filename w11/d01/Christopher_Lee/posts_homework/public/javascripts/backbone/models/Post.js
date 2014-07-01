var Postapp = Postapp || {Models: {}, Collections: {}, Views: {} };

Postapp.Models.Post = Backbone.Model.extend({
  initialize: function(){
    console.log("A post has been created");
},
defaults:{
 name:'',
 date:''
    }
})

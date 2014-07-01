var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Collections.CommentCollection = Backbone.Collection.extend({
  model: Kommunicatorapp.Models.Comment,
  url: '/comments'
});

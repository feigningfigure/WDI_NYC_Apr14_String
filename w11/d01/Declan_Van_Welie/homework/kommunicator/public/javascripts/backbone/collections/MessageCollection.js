var Kommunicatorapp = Kommunicatorapp || { Models: {}, Collections: {}, Views: {} };

Kommunicatorapp.Collections.MessageCollection = Backbone.Collection.extend({
  model: Kommunicatorapp.Models.Message,
  url: '/messages'
});

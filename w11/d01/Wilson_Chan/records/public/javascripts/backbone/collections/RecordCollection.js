var Recordapp = Recordapp || { Models: {}, Collections: {}, Views: {} };

Recordapp.Collections.RecordCollection = Backbone.Collection.extend({
  model: Recordapp.Models.Record,
});

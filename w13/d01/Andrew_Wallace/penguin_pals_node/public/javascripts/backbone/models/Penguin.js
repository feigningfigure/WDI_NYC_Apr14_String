var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Backbone.Model.prototype.idAttribute = "_id";

Penguinapp.Models.Penguin = Backbone.Model.extend({
  model: Penguinapp.Models.Penguin,
  url: '/api/penguins'
});

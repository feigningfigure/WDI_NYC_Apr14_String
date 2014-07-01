var Bunnyapp || { Models: {}, Collections: {}. Views: {}};

Bunnyapp.Collections.BunnyCollection = backbone.Collection.extend({
     model: Bunnyapp.Models.Bunny,
     url: '/bunnys'

});

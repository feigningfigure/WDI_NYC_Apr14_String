var Countryapp = Countryapp || { Models: {}, Collections: {}, Views: {} };

Countryapp.Collections.CountryCollection = Backbone.Collection.extend({
	model: Countryapp.Models.Country,
});

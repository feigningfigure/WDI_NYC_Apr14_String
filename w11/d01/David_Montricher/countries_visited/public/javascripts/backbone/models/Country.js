// Define the Backbone MVC with OR operator

var Countryapp = Countryapp || { Models: {}, Collections: {}, Views: {} };

Countryapp.Models.Country = Backbone.Model.extend({
	initialize: function(){
		console.log("You have added a new country!");
	},

	defaults:{
		name: ''

	};
});


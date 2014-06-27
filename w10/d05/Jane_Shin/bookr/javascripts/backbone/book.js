var Book = Backbone.Model.extend({
	initialize: function(){
		console.log("A Book has been written");
	},
	defaults: {
		title: ""
	}
});

var BookCollection = Backbone.Collection.extend({
	model: Book
});
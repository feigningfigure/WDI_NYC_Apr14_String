// ***Model***
var Car = Backbone.Model.extend({
	initialize: function(){
		console.log("A new car has been made");
	},

	defaults: {
		make: "",
		type: "",
		color: "" 
	}
});

// ***View***

// var CarView = Backbone.View.extend({
// 	initialize: function(){
// 		this.listenTo(this.model, 'change', this.render)
// 	},

// 	template: _.template('<h2> <%= make %> <%= type %> </h2> <h3> <%= color %> </h3>'),

// 	render: function(){
// 		this.$el.empty();
// 		this.$el.html(this.template(this.model.attributes));

// 		return this;
// 	}
// });

// var car;
// var carView;

// $(function(){
// 	car = new Car({make: "Honda", type: "Civic", color: "Red"});

// 	carView = new CarView({ model: car, el: $("#car-holder") });

// 	carView.render();
// })

// Part two of lecture introducing Collections
var CarView = Backbone.View.extend({
	tagName: 'li',
	template: _.template($("#car_template").html()),
	render: function(){
		this.$el.html(this.template({ car: this.model.toJSON() }));

		return this;
	}
});

var CarListView = Backbone.View.extend({
	initialize: function(){
		// you don't want to use 'change' in the listenTo because it's not a model we're listening to
		// use semantic naming, 'collection' is not a reserved word but it's good to name things what they are for clarity
		this.listenTo(this.collection, 'add', this.render)
		this.listenTo(this.collection, 'remove', this.render)
	},

	render: function(){
		// The plan is to create new instances of CarView inside this render function
		this.$el.empty();
		var self = this;
		_.each(self.collection.models, function(car){
			var carView = new CarView({model: car});
			// this gives you the flexibility to call
			self.$el.append( carView.render().el );
		})
		return this;
	}
});


// ***Collection***

var CarCollection = Backbone.Collection.extend({
	model: Car
});
var cars, 
		listView, 
		car,
		honda,
		toyota,
		ford;

$(function(){
	cars = new CarCollection();
	listView = new CarListView({collection: cars, el: $("#car-list")});
	honda = new Car({make: "Honda", type: "Civic", color: "Red"});	
	toyota = new Car({make: "Toyota", type: "Corolla", color: "Black"});	
	ford = new Car({make: "Ford", type: "Fiesta", color: "Titanium"});	

	cars.add(honda);
	cars.add(toyota);
	cars.add(ford);
})

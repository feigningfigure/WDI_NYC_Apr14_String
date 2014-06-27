// ***Model***

var Car = Backbone.Model.extend({
	initialize: function(){
		console.log("A new car has been made")
	},

	defaults:{
		make: "",
		type: "",
		color: "",
	}

});

// ***View***

var CarView = Backbone.View.extend({
	tagName: 'li',
	template: _.template('#car_template'.html()),
	render: function(){
		this.$el.html( this.template( { car: this.model.toJSON() } ));
		//when we make a new car veiw we say this.$el ------, but what are we changing? Its simply
		//an attribute on the CarView. So all we are doing when we call render is changing the "el" attribute.
		return this
	}
});

var CarListView = Backbone.View.extend({
	initialize: funtion(){
		this.listenTo(this.collection, 'add', this.render )
			this.listenTo(this.collection, 'remove', this.render )
	},

render:function(){
 //the plan is to create new instnaces of CarView inside this render function
 this.$el.empty();
 var self = this; //this refes to instance of the view. Every time you change your scope the valu of "this" changes.
 _.each(self.collection.models, function(car){
 	var carView = new CarView( {model: car})
 	self.$el.append( car.render().el );
})
return this; //Need to return otherwise no explicit return value

})

//***Collection***

var CarCollection = Backbone.Collection.extend ({
 this.models = [];

var cars,
listView,
car;

$(function(){

cars = new CarCollection();

listView = newCarListView({ collection: cars, el: $('#car-list')});

car = new Car ({ make: "Honda", type: "civic", color: "red"});
car = new Car ({ make: "Toyota", type: "corrola", color: "red"});
car = new Car ({ make: "Ford", type: "fiesta", color: "red"});
car = new Car ({ make: "Buick", type: "Le Sabre", color: "red"});

cars.add(honda);
cars.add(toyota);
cars.add(ford);
cars.add(buick);


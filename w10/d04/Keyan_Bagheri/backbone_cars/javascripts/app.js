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

//view for individual models within the collection
var CarView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#car_template').html() ),
	render: function(){
    this.$el.html( this.template( { car: this.model.toJSON() } ) );

    return this
	}
});

var CarListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

  render: function(){
    // The plan is to create new instances of CarView inside this render function
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(car){
      var carView = new CarView({ model: car });
      self.$el.append( carView.render().el );//a lot going on here 
    })
    return this;
  }
})

// ***Collection***

var CarCollection = Backbone.Collection.extend({
  model: Car
});

var cars,
    listView,
    honda,
    toyota,
    ford,
    buick,
    nissan;

$(function(){
  cars = new CarCollection();

  listView = new CarListView({ collection: cars, el$("car-list")}); //collection is not a univ word, you could call it what you like but should keep naming nice like this

  honda = new Car({ make: "Honda", type: "Civic", color: "Red" });
  toyota = new Car({ make: "Toyota", type: "Corolla", color: "Green" });
  buick = new Car({ make: "Buick", type: "La Sabre", color: "Blue" });
  ford = new Car({ make: "Ford", type: "Fiesta", color: "Green" });
  nissan = new Car({ make: "Nissan", type: "Sentra", color: "Tan" });

  cars.add(honda);
  cars.add(toyota);
  cars.add(buick);
  cars.add(ford);
  cars.add(nissan);

})







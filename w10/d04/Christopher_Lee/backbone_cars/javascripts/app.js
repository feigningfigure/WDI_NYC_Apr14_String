console.log('feed me javascripts')
//***Model***
var Car = Backbone.Model.extend({
  initialize: function(){
    console.log("A new car has been made")
  },

// you don't have to have defaults
  defaults:{
    make: "",
    type: "",
    color: "",
  }

});

//***View***

var CarView = Backbone.View.extend({
  // initialize: function(){
  //   // change is what its listening for
  //   // when the model changes call this.render
  //   this.listenTo(this.model, 'change', this.render)
  // },

  // template: _.template('<h2> <%= make %> <%= type %> </h2> <h3><%= color %> </h3>'),
  tagName: 'li',
  template: _.template($('#car_template').html() ),
  render: function(){
    // el is just an attribute of CarView
    // all you are doing is changing the attribute $el
    this.$el.html(this.template({car: this.model.toJSON()} ));
    return this
    // this.$el.empty();
    // this.$el.html( this.template(this.model.attributes) );

    // return this;
  }
});

var CarListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection,'add', this.render);
    this.listenTo(this.collection,'remove',this.render);
  },

// make new instances of the CarView inside the render
  render: function(){
    // preserving the value of this in this scope so that you can use it later.
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(car){
      var carView = new CarView({ model: car });
      // appending .el with no $
      // appends a fully formed carView
      self.$el.append(carView.render().el );
    })
  }
})

// *** Collection ***

var CarCollection = Backbone.Collection.extend({
  // this.models = [];
  model: Car
});

$(function(){
  cars = new CarCollection();

  listView = new CarListView({collection: cars, el: $('#car-list')});

  honda = new Car ({make: "Honda", type: "Civic", color: "Red"});
  dodge = new Car ({make: "Dodge", type: "Civic", color: "Red"});
  lamborghini = new Car ({make: "Lamborghini", type: "Civic", color: "Red"});

  cars.add(honda);
  cars.add(dodge);
  cars.add(lamborghini);
})


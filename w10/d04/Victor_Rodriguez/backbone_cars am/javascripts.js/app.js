//*** Model ***

var Car = Backbone.Model.extend ({ initialize: function(){
  console.log("A new car has been made")
},
  
  //Defaults is optional, putting it so we know what attributes car will have
  defaults: {
    make: "",
    type: "",
    color: "",
  }
  
});

//*** View ***

var CarView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model,'change', this.render)
      //what to do, what to listen to, how to react and what to do
  },

template: _.template('<h2> <%= make %> <%= type %> </h2> <h3> <%= color %> </h3>'), 

  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) )

    return this;
  }
});
//Inserted so that they can be global
var car;
var carView;

$(function(){

  car = new Car ({make: "Honda", type: "Civic", color: "Red"})

  carView = new CarView({ model: car, el: $("car-holder")});


})
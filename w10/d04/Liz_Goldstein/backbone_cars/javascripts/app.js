// ** MODEL

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

//**VIEW

var carView = Backbone.View.extemd({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render)
  }

 template: _.template('<h2> <%= make %> <%= type %> </h2> <h3> <%= color %> </h3>')

  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) )

    return this
  }
})

// global space of variables for teaching purposes to call on console
var car;
var carView;


$(function(){
  car = new Car ({make: "Honda", type: "Civic", color: "Red"});
  carView = new CarView({model: car, el: $("#car-holder") })
  carView.render();
})

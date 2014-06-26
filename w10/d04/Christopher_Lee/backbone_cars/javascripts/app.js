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
  initialize: function(){
    // change is what its listening for
    // when the model changes call this.render
    this.listenTo(this.model, 'change', this.render)
  },

  template: _.template('<h2> <%= make %> <%= type %> </h2> <h3><%= color %> </h3>'),

  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) );

    return this;
  }
});

var car;
var carView;

// the model is bound to the view
$(function(){
  car = new Car({make:"Honda", type:"Civic", color: "Red"});
  carView = new CarView({model:car, el: $("#car-holder") })
  carView.render();
})

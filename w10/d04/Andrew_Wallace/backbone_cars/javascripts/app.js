console.log('feed me javascripts')
// ***Model*** (purpose is to hold data)

var Car = Backbone.Model.extend({
  initialize: function(){
    console.log("A new car has been made")
  },

  default:{
    make: "",
    model: "",
    color: "",
  }
});

// ***View***

var carView = Backbone.View.extend({
  initialize: function(){
    //listening to this model and looking for a change, then reacting with a render
    this.listenTo(this.model, 'change', this.render)
  },

  template: _.template('<h2><%= make %> <%= model %> </h2> <h3> <%= color %> </h3>')
  //we have no server so we dont need <%% above, just <%

  //render is the most appropriate word (over change and/or update)
  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) ); //we want to pass a template here

    return this;
  }
})

var car; //these variables are here for teaching purposes
var carView; //neel needed two global variables and made them

$(function(){

  car = new Car({make: "Honda", type: "Civic", color: "Red"});

  carView = new CarView({ model: car, el: $("#car-holder")}); //pass it your div

  carView.render();
})

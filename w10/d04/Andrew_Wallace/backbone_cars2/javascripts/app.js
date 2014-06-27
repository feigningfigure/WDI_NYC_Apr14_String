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
  template: _.template( $('#car_template').html() ),
  render: function() {

  }
});

var CarListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render)
    this.listenTo(this.collection, 'remove', this.render)
  }

  render: function(){
    // The plan is to create new instances of CarView inside this render function
  }

})

// *** COLLECTION ***

var CarCollection = Backbone.Collection.extend({
  model: Car
});

$(function(){


})

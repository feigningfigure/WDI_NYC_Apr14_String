//********MODEL*********
var Car = Backbone.Model.extend({
  initialize: function(){
    console.log("A new car has been made!");
  },

  default: {
    make: "",
    type: "",
    color: ""
  }

});



//********VIEW**********

var CarView = Backbone.View.extend({
  tagName: 'h1 id="car"',
  template: _.template($("#car_template").html()),

  render: function(){
    this.$el.html( this.template({ car: this.model.toJSON() }) );
    return this;
  }

});

var CarListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(car){
      var carView = new CarView({ model: car });
      self.$el.append( carView.render().el );
    })
    return this
  }
})
//*******COLLECTION******
var CarCollection = Backbone.Collection.extend({
  model: Car

});

var cars,
    listView,
    nissan,
    ford,
    chevrolet,
    captiva;


$(function(){

  cars = new CarCollection();

  listView = new CarListView({ collection: cars, el: $("#car-list") });

  nissan = new Car({make: "Nissan", type: "Sentra", color: "Silver"});
  ford = new Car({make: "Ford", type: "Fiesta", color: "White"});
  chevrolet = new Car({make: "Chevrolet", type: "Caprice-Impala", color: "Blue"});
  captiva = new Car({make: "Chevrolet", type: "Captiva", color: "Black"});

  cars.add(nissan);
  cars.add(ford);
  cars.add(chevrolet);
  cars.add(captiva);

  // Uncomment this for seizure:
  // setInterval(function(){
  //   setTimeout(function(){cars.remove(nissan);}, 0);
  //   setTimeout(function(){cars.add(nissan);}, 10);
  //   setTimeout(function(){$("body").css("background-color", "red");}, 15);
  //   setTimeout(function(){cars.remove(ford);}, 20);
  //   setTimeout(function(){cars.add(ford);}, 30);
  //   setTimeout(function(){$("body").css("background-color", "green");}, 35);
  //   setTimeout(function(){cars.remove(chevrolet);}, 40);
  //   setTimeout(function(){cars.add(chevrolet);}, 50);
  //   setTimeout(function(){$("body").css("background-color", "blue");}, 55);
  //   setTimeout(function(){cars.remove(captiva);}, 60);
  //   setTimeout(function(){cars.add(captiva);}, 70);
  //   setTimeout(function(){$("body").css("background-color", "yellow");}, 75);
  // }, 75);


})

//********MODEL*********
var Car = Backbone.Model.extend({
  initialize: function(){
    console.log("A new car has been made!");
  },

  default: {
    make: "",
    model: "",
    color: ""
  }

});



//********VIEW**********

var CarView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change' /*, INSERT REACTION HERE*/ )
  },

  template: _.template('<h2><%= make %> <%= model %></h2></br><small><%= color %></small>'),

  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) );
  }

})

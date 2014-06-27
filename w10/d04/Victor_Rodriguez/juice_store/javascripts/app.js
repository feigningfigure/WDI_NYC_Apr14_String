// **** MODEL ***

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("Made me some juice")
},

defaults:{
  ingredient: "",
  name: "",
  taste: "",
}

});

// *** VIEW ***

var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render)
  },

  template: _.template('<h2> <%= ingredient %> <%= name %> </h2> <h3> <%= taste %> </h3>'),

  render: function(){
    this.$el.empty();
    this.$el.html( this.template(this.model.attributes) );

    return this;
  }
});

  }
}) 

// *** COLLECTION ***
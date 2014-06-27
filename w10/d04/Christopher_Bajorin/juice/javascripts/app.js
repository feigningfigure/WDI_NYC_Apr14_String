console.log('do some stuff')


// **Model**


var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("hi, here's stuff")
  },
  defaults:{
    name: "",
    ingredients: ""
  }

});

// **View**

// only generating the li tag from the template. will inject into ul later.
var JuiceView = Backbone.View.extend({
  //tagName is BB syntax, along with className and id
  tagName:"li",
  id: function() {
    return(""+this.model.attributes.name+"");
  },
  template: _.template( $('#juice_template').html() ),
  // render as a noun. THE render, not TO render.
  render: function(){
    // making the model object into JSON and plugging it into the template(?)
    this.$el.html( this.template( { juice: this.model.toJSON() } ) );
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    // not understanding this part
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    //add a JuiceView template object
    this.$el.empty();
    var self = this;
    // console.log(this);
    _.each(self.collection.models, function(juice){
      var juiceView = new JuiceView({ model: juice });
      self.$el.append( juiceView.render().el );
    });
    return this;
  }
});

// **Collection**

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var juices,
    listView,
    orange,
    apple,
    mangolicious;

$(function(){
  juices = new JuiceCollection();
  listView = new JuiceListView({ collection: juices, el: $('#juice-list') });
  orange = new Juice({ name:"Orange Juice", ingredients:"Just some orange juice" });
  apple = new Juice({ name:"Apple Juice", ingredients:"Just some apple juice" });
  mangolicious = new Juice({ name:"MANGOLICIOUS", ingredients:"some mangos, a little bit of pineapple juice, a teensy bit of lime juice for a tinge of sourness, and.... vodka."})

juices.add(orange);
juices.add(apple);
juices.add(mangolicious);

});

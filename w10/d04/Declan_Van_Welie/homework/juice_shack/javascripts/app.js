// ****MODEL****

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("Now you're juicing!")
  },

  defaults:{
    title: "",
    ingredients: "",
  }

});

// ****VIEW****

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($("#juice_template").html() ),
  render: function(){
    this.$el.html( this.template( { juice: this.model.toJSON() } ) );

    return this
  }
});
// This will track the addition or subtraction of juices to the collection, but it won't update when the ingredients of the juice are edited in any way.
var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

  // This will render all of the juices, but we'll need a second render function to iterate over the ingredients in each juice
  render: function(){

    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(juice){
      var juiceView = new JuiceView({ model: juice });
      self.$el.append( juiceView.render().el );
    })
    return this;
  }
})

// ****COLLECTION****

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// var juices,
//     listView,
//     carrot;

// ****DOCUMENT READY****

$(function(){

 juices = new JuiceCollection();

 listView = new JuiceListView( { collection: juices, el: $("#cup") } );

carrot = new Juice( { title: "carrot", ingredients: "carrot" } );
tomato = new Juice( { title: "tomato", ingredients: "tomato" } );
juices.add(carrot);
juices.add(tomato);
})

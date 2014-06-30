// ***Model***

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("A new juice has been made")
  },

  defaults:{
    ingredient: "",
  }


});



// ***View***

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#juice_template').html() ),
  render: function(){
    this.$el.html( this.template( { juice: this.model.toJSON() } ) );

    return this
  }

});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

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


// ***Collection**

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var juices,
    listView,
    apple,
    orange,
    cranberry,
    grape,
    pear;

$(function(){

  juices = new JuiceCollection();

  listView = new JuiceListView({ collection: juices, el: $('#juice-list') });

  apple = new Juice({ ingredient: "apples" });
  orange = new Juice({ ingredient: "oranges" });
  cranberry = new Juice({ ingredient: "cranberries" });
  grape = new Juice({ ingredient: "grapes" });
  pear = new Juice({ ingredient: "pears" });

  juices.add(apple);
  juices.add(orange);
  juices.add(cranberry);
  juices.add(grape);
  juices.add(pear);
})

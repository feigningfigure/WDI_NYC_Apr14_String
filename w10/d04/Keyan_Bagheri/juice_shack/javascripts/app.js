// ###### Model ######

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("A new juice drink has been made")
  },

  defaults:{
    ingredient: "",
    pulp: "",
  }

});

// ##### View #####

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
    // add is a Backbone event
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

  render: function(){
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(juice){
      var juiceView = new JuiceView({ model: juice });
      self.$el.append( juiceView.render().el  );
    })
    return this;  
  }
})

// ##### Collection #####

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var juices,
    listViews,
    orange,
    cranberry,
    grape,
    apple,
    pineapple;

$(function(){

  juices = new JuiceCollection();

  listView = new JuiceListView({ collection: juices, el: $('#juice-list') });

  orange = new Juice({ ingredient: "orange", pulp: "heavy" });
  cranberry = new Juice({ ingredient: "cranberry", pulp: "none" });
  grape = new Juice({ ingredient: "grape", pulp: "light" });
  apple = new Juice({ ingredient: "apple", pulp: "fiction" });
  pineapple = new Juice({ ingredient: "pineapple", pulp: "heavy" });

  juices.add(orange);
  juices.add(cranberry);
  juices.add(grape);
  juices.add(apple);
  juices.add(pineapple);
})

function capitalize(s)
{
    return s[0].toUpperCase() + s.slice(1);
}










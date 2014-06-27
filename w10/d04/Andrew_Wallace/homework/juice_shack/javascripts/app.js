// ***Model***

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("New juice made");
  },

  defaults:{
    ingredients: []
  }
});

// *** VIEWS ***

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
      self.$el.append( juiceView.render().el  );
    })
    return this;
  }
})

// *** COLLECTION ***

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var juices,
    listView,
    strawberrySmoothie;

$(function(){

  juices = new JuiceCollection();

  listView = new JuiceListView({ collection: juices, el: $('#juice-list') });

  strawberrySmoothie = new Juice({ Ingredients: ["banana", "strawberries", "orange juice"] });

  juices.add(strawberrySmoothie);
})



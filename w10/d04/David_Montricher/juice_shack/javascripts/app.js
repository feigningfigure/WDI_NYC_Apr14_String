// JuiceModel - An ingredients collection assigned to its 'ingredients' attribute.
// JuiceCollection
// JuiceView - Renders own template with a ul - Creates new IngredientListView and passes the JuiceView's ul as the el of the IngredientListView - Calls render on the new ingredient list view.
// JuiceListView - renders all juice views

// ***Model***

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("A new juice has been made")
  },

  defaults:{
    ingredients: "",
  }

});

// ***View***

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#juice_template').html() ),
  render: function(){
    this.$el.html( this.template( { Juice: this.model.toJSON()
    })
  );

    return this

  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

  render: function(){
    // Create new instances of JuiceView inside this render function
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(juice){
      var JuiceView = new JuiceView({ model: juice });
      self.$el.append( juiceView.render().el  );
    })
    return this;
  }
})

// ***Collection***

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var Juices,
    listView,
    ingredients;

$(function(){

  juices = new JuiceCollection();

  listView = new JuiceListView({ collection: juices, el: $('#juice-list') });

  tropical = new Juice({ ingredients: "pineapple, kiwi, carros" });

  Juices.add(tropical);

})

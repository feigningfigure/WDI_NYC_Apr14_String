//***Model***
var juiceItem = Backbone.Model.extend({
  initialize: function(){
    this.ingredients = new IngredientCollection;
    console.log("A new juice has been produced")
  },
  defaults:{
    type: ""
  },
  addIngredient: function (ingredientName){
    this.ingredients.add(new Ingredient({ name: ingredientName }));
  }
});

var Ingredient = Backbone.Model.extend({
  initialize: function(){
    console.log("A new ingredient produced")
  },
  defaults:{
    name: ""
  }
});



//***View***

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#juice_template').html() ),
  render: function(){
    this.$el.html(this.template({ juice: this.model.toJSON()} ));
    return this
  }
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient_template').html() ),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON()} ));
    return this
  }
})


var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection,'add', this.render);
    this.listenTo(this.collection,'remove',this.render);
  },

  render: function(){
    this.$el.empty();
    var self = this;
    // You need to hand the specific instance of model
    _.each(self.collection.models, function(juice){
      var juiceView = new JuiceView({ model: juice });
      self.$el.append(juiceView.render().el );
    })
  }
})


var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection,'add', this.render);
    this.listenTo(this.collection,'remove',this.render);
  },

  render: function(){
    var self = this;
      _.each(self.collection.models, function(ingredient){
      var ingredientView = new IngredientListView({ model: ingredient });
      self.$el.append(ingredientView.render().el );
    })
    return this
  }
})


// *** Collection ***

var JuiceCollection = Backbone.Collection.extend({
  model: juiceItem
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

$(function(){

juices = new JuiceCollection();

juicesView = new JuiceListView({ collection: juices, el: $('#juice-list') });

  banana = new juiceItem({type: 'banana juice'});
  apple = new juiceItem({type: 'apple juice', ingredients: 'apples'});
  orange = new juiceItem({type: 'orange juice', ingredients: 'oranges'});
  grape = new juiceItem({type: 'grape juice', ingredients: 'grapes'});

  juices.add(banana);
  juices.add(apple);
  juices.add(orange);
  juices.add(grape);

  banana.addIngredient('bananas');
  banana.addIngredient('coconuts');

})

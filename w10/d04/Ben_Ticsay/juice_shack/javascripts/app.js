console.log('feed me javascripts')

// ---------MODEL---------->
var Juice = Backbone.Model.extend({
  defaults:{
    ingredients: "",
  }
});


// ---------VIEWS---------->
var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#juice_template').html() ),
  render: function(){
    this.$el.html( this.template( { juice: this.model.toJSON() } ) );

    return this
  }
});




// var IngredientView = Backbone.View.extend({
//   tagName: 'li',
//   template: _.template( $('#ingredient_template').html() ),
//   render: function(){
//     this.$el.html( this.template( { juice: this.model.toJSON() } ) );

//     return this
//   }
// });




var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

// PASS THE INGREDIENTS LIST VIEW (AND MAKE A COLLECTION FOR IT) PASSED IN THROUGH HERE

  render: function(){
      // The plan is to create new instances of JuiceView inside this render function
      this.$el.empty();
      var self = this;
      _.each(self.collection.models, function(juice){
        var juiceView = new JuiceView({ model: juice });
        self.$el.append( juiceView.render().el  );
      })
      return this;  
  }
});


// var IngredientListView = Backbone.View.extend({
//   initialize: function(){
//     this.listenTo(this.collection, 'add', this.render);
//     this.listenTo(this.collection, 'remove', this.render);
//   },

  // render: function(){
  //     // The plan is to create new instances of IngredientView inside this render function
  //     this.$el.empty();
  //     var self = this;
  //     _.each(self.collection.models, function(juice){
  //       var juiceView = new JuiceView({ model: juice });
  //       self.$el.append( juiceView.render().el  );
  //     })
  //     return this;  
  // }
});





// ---------COLLECTIONS---------->
var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});



$(function(){

apple = new Juice({ingredients: "apples"});

juices = new JuiceCollection();

listView = new JuiceListView({ collection: juices, el: $('#juice-list') });

juices.add(apple);

})

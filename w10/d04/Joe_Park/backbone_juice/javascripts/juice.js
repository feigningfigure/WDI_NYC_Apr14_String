// ******** Model *********

var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("Juice has been created");
    // var ingredientCollection = new IgredientCollection
  },

  default:{
    name: "",
    // ingredients: ingredientCollection
  }

});




// ******** View *********

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $("#juice_template").html() ),
  render: function(){
    this.$el.html( this.template({ juice: this.model.toJSON() }) );

    return this;
  }

});



var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

  render: function(){
    this.$el.empty();
    var self = this; // can get rid of this and use bind
    _.each(self.collection.models, function(juice){
      var juiceView = new JuiceView({ model: juice });
      self.$el.append( juiceView.render().el );  // we are rendering the juiceView THEN appending the el(html)
    });
    return this;
  }


});





// ************* Collection ************

var JuicesCollection = Backbone.Collection.extend({
  model: Juice
});

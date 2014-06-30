// ***Model***

var juice = Backbone.Model.extend({
  initialize: function(){
    console.log("awesome juices")
  },
  defaults:{
    juiceName: "",
    ingredients: [],
  }
});

// ***View***

var JuiceView =  Backbone.View.extend({
  tagName: "li",
  template: _.template ( $('#juice_template').html() ),
  render: function(){
    this.$el.hmtl (this.template ( {juice: this.model.toJSON() } ) );

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
    var juiceview = new JuiceView ({ model: juice});
    self.$el.append()
  })
}

})

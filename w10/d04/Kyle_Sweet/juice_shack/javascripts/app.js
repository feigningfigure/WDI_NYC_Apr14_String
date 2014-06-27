// MODEL

var JuiceModel = Backbone.Model.extend({
  initialize: function(){
    console.log("Juice is Produced")
  },

  defaults:{
    flavor: "",
    fruit:"",
    vegetable:"",

  }
});

// VIEW
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

// COLLECTION

var JuiceCollection = Backbone.Collection.extend({
  model: JuiceModel
});

var juice,
    listView,
    applekale,
    orangebroccoli,
    kiwiraddish;

$(function(){

  juice = new JuiceCollection();

  listView = new JuiceListView({ collection: juice, el: $('#juice-list') });

  applekale = new JuiceModel({ flavor: "Apple Kale", fruit: "Apple", vegetable: "Kale" });

  orangebroccoli = new JuiceModel({ flavor: "Orange Broccoli", fruit: "Orange", vegetable: "Broccoli" });

  kiwiraddish = new JuiceModel({ flavor: "Kiwi Raddish", fruit: "Kiwi", vegetable: "Raddish" });

  juice.add(applekale);
  juice.add(orangebroccoli);
  juice.add(kiwiraddish);

})
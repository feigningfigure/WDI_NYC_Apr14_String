//********MODEL*********
var Juice = Backbone.Model.extend({
  initialize: function(){
  },

  default: {
    name: "CoolJuice",
    ingredients: []
  }

});



//********VIEW**********

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($("#juice_template").html()),

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
    var self = this;
    _.each(self.collection.models, function(cuice){
      var juiceView = new JuiceView({ model: cuice });
      self.$el.append( juiceView.render().el );
    })
    return this
  }
})
//*******COLLECTION******
var JuiceCollection = Backbone.Collection.extend({
  model: Juice

});

var juices,
    listView,
    tropical,
    hulk,
    summer,
    barry;


$(function(){

  juices = new JuiceCollection();

  listView = new JuiceListView({ collection: juices, el: $("#juice-list") });

  tropical = new Juice({name: "Tropical", ingredients: ["Passion Fruit", "Papaya", "Mangp", "Coconut"]});
  hulk = new Juice({name: "Hulk", ingredients: ["Kiwi", "Green Apple", "Kale", "Mint", "Lime"]});
  summer = new Juice({name: "Summer", ingredients: ["Cantaloupe", "Water Melon", "Lime"]});
  barry = new Juice({name: "Not Barry", ingredients: ["Strawberries", "Raspberries", "Blueberries", "Blackberries", "Lyche"]});

  juices.add(tropical);
  juices.add(hulk);
  juices.add(summer);
  juices.add(barry);

   setInterval(function(){
    setTimeout(function(){juices.remove(tropical); juices.add(tropical);}, 1);
    setTimeout(function(){juices.remove(hulk);juices.add(hulk);}, 1);
    setTimeout(function(){juices.remove(summer);juices.add(summer);}, 1);
    setTimeout(function(){juices.remove(barry);juices.add(barry);}, 1);
  }, 1);



});

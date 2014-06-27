
// ------------


// ## Juice Shack


// Build out functionality for a:

// - JuiceModel
//   - An ingredients collection assigned to its 'ingredients' attribute.
// - JuiceCollection
// - JuiceView
//   - renders own template with a ul
//   - creates new IngredientListView and passe the JuiceView's ul as the el of the IngredientListView.
//   - calls render on the new ingredient list view.
// - JuiceListView
//   - renders all juice views

// You do not need to build a UI for the creation of these objects.  Create some of them in a window onload callback to verify that they are working.



// *** Models ***
var Juice = Backbone.Model.extend({
  initialize: function(){
    console.log("running Juice.initialize");
  },

  defaults:{
    name: "i'm a juice of generic nature",
    ingredients: ['stuff from trees'],
    color: "wet color"
  }
});



// *** Collections (of Models) ***
var JuiceCollection = Backbone.Collection.extend({
  model: Juice                          //#LEARN WHAT IS THIS DOING
});



// *** Views ***

// * View Model *
var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#juice_template').html() ),  //#LEARN what is this doing?
  render: function(){
    this.$el.html( this.template( {juice:this.model.toJSON() } ) ) ;
    
    // $el needs to be passed in ???
    // $(el)
    // $el


    return this
  }
})

// * View List (sort of like index) *
var JuiceListView = Backbone.View.extend({
  initialize: function(){
    console.log('running initialize from a JuiceListView');
    
    // ruby way: THING.on_click(DO THIS)
    // rails way: listenTo :THING, :DO THIS

    // javascript way: $DOMelement.on_click_isafilter(fuction(arg){stufftodo})
    // backbone way: listenTo(backboneObject, backboneMethod_isafilter, stufftodo)

    this.listenTo(this.collection, 'add', this.render); // add is a Backbone event
    this.listenTo(this.collection, 'remove', this.render);
      //#LEARN what is .collection doing? 
  },

  render: function(){
    // creates new instances of CarView inside this render function
    
    console.log('running render from a JuiceListView');
    
    this.$el.empty();                       //#LEARN figure out what $ is doing in this situation
    
    var self = this;

    _.each(
      this.collection.models, 
      function(juice){ 
        var juiceView = new JuiceView({ model: juice });
        console.log(juiceView)
        console.log(juiceView.render())
        console.log(juiceView.render().el)
        self.$el.append( juiceView.render().el  );
    })

    return this;
  }
});





// * Setting these as globals so we can access them in console *

var juices,
    juiceListView
    console.log("set juices and juicelistview as global vars");





// ** Go ** 
$(function(){
  console.log('DOM loaded, running setup from app.js');

  juices = new JuiceCollection();

  juiceListView = new JuiceListView(
    {collection: juices, 
    el: $('#juice-list')}
    // el: window.top.div.div2.findbyid(#juice-list)}
  );


  apple_juice = new Juice({
   name: 'apple juice',
   ingredients: 'apples, cinemon',
   color: 'amber'
  });

  orange_juice = new Juice({
   name: 'tropicana OJ',
   ingredients: 'oranges, sugar, puppies',
   color: 'orange'
  });

  bug_juice = new Juice();


  // @juices = Juice.all
  // @juices.each do |juice_data|
  //  juice = new Juice({juice_data})
  // end

  juices.add(apple_juice);
  juices.add(orange_juice);
  juices.add(bug_juice);

  // <% @juices = Juice.all %>
  // _.each(<%= @juices.to_json.html_safe %>, 
  //  juices.add(new Juice({juice_data_json})
  // )


  // <% @juices = Juice.all %>
  // juices_clean_json = <%= @juices.to_json.html_safe %>

  // _.each(juices_clean_json, 
  //   juices.add(new Juice({juice_data_json})
  // )

})

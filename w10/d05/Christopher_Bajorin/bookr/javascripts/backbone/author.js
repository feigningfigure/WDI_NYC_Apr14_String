// *** MODEL ***

var Author = Backbone.Model.extend({
  initialize: function(){
    console.log("You just got Authered, bitches.")
  },
  defaults: {
    name: ""
  }
});

// *** COLLECTION ***

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});


// *** VIEW ***

var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'change', this.render )
  },
  tagName: "li",
  template: _.template( $("#author-template") ),
  render: function(){

    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) )

    var listView - new BookListView({});

  }
})


//********MODEL*********
var Book = Backbone.Model.extend({
  initialize: function(){

  },
  defaults: {
    title: ""
  }

});

//********VIEW**********

var BookView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );
    return this
  },
  events: {
    'click button[name="delete_book"]': 'removeBook'
  },
  removeBook: function(){
    this.model.destroy();
    return this;
  }
});

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(book){
      var bookView = new BookView({ model: book });
      self.$el.append( bookView.render().el )
    })
    return this
  }
});
//*******COLLECTION*****
var BookCollection = Backbone.Collection.extend({
  model: Book

});

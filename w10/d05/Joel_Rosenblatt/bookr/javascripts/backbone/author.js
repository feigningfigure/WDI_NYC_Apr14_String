//********MODEL*********
var Author = Backbone.Model.extend({
  initialize: function(){
    this.set('books', new BookCollection())
  },
  defaults: {
    name: ""
  }
});

//*******COLLECTION*****
var AuthorCollection = Backbone.Collection.extend({
  model: Author

});

//********VIEW**********
var AuthorView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
    var self = this;
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );
    var listView = new BookListView({ collection: this.model.get('books'), el: this.$el.find('.books')
  });
    listView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var titleField = self.$el.find('input[name="title"]');
      var title = titleField.val();
      titleField.val('');
      self.model.get("books").add({title: title})
    });

    return this
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    this.$el.empty();
    var self = this;
    _.each(self.collection.models, function(author){
      var authorView = new AuthorView({ model: author });
      self.$el.append( authorView.render().el )
    })
    return this
  }
});

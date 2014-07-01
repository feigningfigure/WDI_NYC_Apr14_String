//MODEL

var Author = Backbone.Model.extend({
  initialize: function(){
    console.log("New author!");
    this.set('books', new BookCollection());
  },

defaults:{
    name: "",
  }

});

// COLELCTION
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

//VIEW
var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'change', this.render )
  },

  tagName: 'li', //nests in the id ul
  template: _.template( $("#author-template").html() ),
  render: function(){
      var self= this;
      this.$el.empty();
      this.$el.html( this.template( this.model.attributes ) );

      var listView = new BookListView({ collection: this.model.get(
        'books'), el: this.$el.find('.books') })

      listView.render('')

      this.$el.find('form').on('submit', function(e){
        e.preventDefault();
        var titleField = self.$el.find('input[name="title"]');
        var title = titleField.val();
        titleField.val('');
        self.model.get("books").add({ title: title })
      })

      return this
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },

  render: function() {
    var self = this;
    this.self.empty();
    _.each(this.collection.models, function(author){
      var authorView = new Author({ mode: author })
      self.$el.append( authorView.render().el )

    })
    return this;
  }
});

$(function(){

authorCollection = new AuthorCollection;
authorListView = new AuthorListView({ collection: authorCollection, el: $('#author-list')});
var author = new Author({ name: "Stephen King" });
authorCollection.add(author);


$('.new-author').on('submit', function(e){
  e.preventDefault();
  var nameField = $('.author-name');
  var authorName = nameField.val();
  nameField.val('');
  authorCollection.add({ name: authorName });
})



})

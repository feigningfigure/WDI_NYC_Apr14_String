// ***Model***

var Book = Backbone.Model.extend({
  initialize: function(){
  	console.log("A book has been written");
  },

  defaults: {
    title: ""
  }
});

//***Collection***

var BookCollection = Backbone.Collection.extend({
  model: Book
});

// ***Views***

var BookView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'all', this.render)
	},
	tagName: 'li',
	template: _.template( $('#book-template').html() ),
	render: function(){
		this.$el.empty();
		this.$el.html( this.template( this.model.attributes ) );

		return this
	}
});

var BookListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'all', this.render )
	},
	render: function(){
		var self = this;
		this.$el.empty();
		_.each(this.collection.models, function(book){
			var bookView = new BookView({ model: book });
			self.$el.append( bookView.render().el )
		})
		return this
	}
});










// BOOK COLLECTION 

var BookCollection = Backbone.Collection.extend({
	model: Book
})


// BOOK VIEW 

var BookView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'all', this.render)
	},
	tagName: 'li',
	template: _.template ($('#book-template').html() ),
	render: function(){
		this.$el.empty();
		this.$el.html({ this.template(this.model.attributes) });
		return this;
	}
})



var BookListViews = Backbone.View.extend({
	initialize: function() {
		this.listenTo(this.collection, 'all', this.render)
	}
	render: function(){
		this.$el.empty(); 
		_.each(this.collection.models, function(book) {
		// iterating through the collection
			var bookView = new BookView({ model: book});
				self.$el.append(bookView.render().el )
				/* the bookView.render() is just changing the el attribute of that View. If it is on the booklistview it is just changing an attribute not displaying perse. Think of it as like a .update */ 
			})
		return this
	}
})
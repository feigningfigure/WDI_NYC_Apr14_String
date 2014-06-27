var Author = Backbone.Model.extend({
	initialize: function(){
		console.log("an Author has been born");
		this.set('books', new BookCollection())
	},
	defaults: {
		name: ""
	}
});

var AuthorCollection = Backbone.Collection.extend({
	model: Author
});

var AuthorView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'change', this.render)
	},
	tagName: 'li',
	template: _.template($('#author-template').html()),
	render: function(){
		
		this.$el.empty();
		this.$el.html(this.template(this.model.attributes));
// we set "this" to the template that is filled in with the author info 
// so that in the following line we can call the .book element
		// var listView = new BookListView({collection: this.model.get('books'), el: this.$el.find('.books')});

		return this;
	}
});

var AuthorListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'all', this.render);
	},
	render: function(){
		var self = this;
		this.$el.empty();
		_.each(this.collection.models, function(author){
			var authorView = new AuthorView({model: author})
			self.$el.append(authorView.render().el)
		})
		return this;
	}
});

// var author = new Author({name: "R.L. Stien"})
// var authorCollection = new AuthorCollection;
// authorCollection.add(author);
// var authorListView = new AuthorListView({collection: authorCollection, el: $('#author-list')});
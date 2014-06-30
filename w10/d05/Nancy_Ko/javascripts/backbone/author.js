var Author = Backbone.Model.extend({
	initialize: function() {
		console.log("An author has been added");
		this.set('books', new BookCollection() );
	}, 
	defaults: {
		name: '',
	}
});



var AuthorCollection = Backbone.Collection.extend({
	model: Author
/* Create a brand new collection with each new Author

*/
});


var AuthorView = Backbone.View.extend({
	initialize: function() {
		this.listenTo(this.model, 'change', this.render)
	},
	tagName: 'li',
// we need a template which we will put in the index.html file.
	template: _.template( $('author-template') ),
	render: function(){
// This render function generates the html onto the page 
	this.$el.empty(); 
	this.$el.html( this.template( this.model.attributes) );
	var ListView = new BookListView({collection: this.model.get('books'), el: this.$el.find('books')  });
		listView.render();

		this.$el.find('form').on('submit', function(e){
			e.preventDefault();
			var titleField = self.$el.find('')
		})
	return this;
	}
})

var AuthorListView = Backbone.ListView.extend({
	initialize: function() {
		this.listenTo(this.collection, 'all', this.render )
	}
	render: function() {
		var self = this;
		this.$el.empty(); 
		// _.each( what array you want to iterate over and what you want to render )
		_.each(this.collection.models, function(author){
			var authorView = new AuthorView({ model: Author})
			// passing the new author object in 
			self.$el.append( authorView.render().el)
			/* we are appending the new author and rendering it to the html */
		} )
	} 
});
function() {


	var author = new Author ({ name: 'Stephen King'})
	// making a new Author object. How do we know this is an object? it's the {}

	var AuthorCollection = new AuthorCollection;
	authorCollection.add(author);
	var AuthorListView = new AuthorListView({ collection: authorCollection, el: $('.books')});
	AuthorListView.render();
	$('.new-author').on('submit', function(e){
		// the e is event 
		e.preventDefault();
		// console.log('submit is happening');
		var nameField = $('#author-name');
		var authorName = nameField.val();
		nameField.val('');
		// Evaluating what is in nameField but why write it twice ? var authorName = nameField.val() and nameField.val(''); after 
		authorCollection.add({ name: authorName });
	})
	}
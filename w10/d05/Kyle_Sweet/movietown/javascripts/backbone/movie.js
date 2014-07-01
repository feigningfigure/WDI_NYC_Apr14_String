// Model

var Movie = Backbone.Model.extend({
  initialize: function(){
  	console.log("A movie is made");
  },

  defaults: {
    title: ""
  }
});

// Collection

var MovieCollection = Backbone.Collection.extend({
  model: Movie
});

// Views

var MovieView = Backbone.View.extend({

	events: {
		'click button[name="delete_movie"]': 'removeMovie',
		'click button[name="edit_movie"]' : 'editMovie'
	},

		tagName: 'li',
	template: _.template( $('#book-template').html() ),


	initialize: function(){
		this.listenTo(this.model, 'all', this.render)
		this.listenTo(this.model, 'destroy', this.remove)
		this.listenTo(this.model, 'change', this.change)
	},


	render: function(){
		this.$el.empty();
		this.$el.html( this.template( this.model.attributes ) );

		return this
	},
	
	removeMovie: function(){
		this.model.destroy();

		return this
	},

	editMovie: function(){
		this.model.change(); //not working as expected

		return this
	}
});

var MovieListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'all', this.render )
	},


	render: function(){
		var self = this;
		this.$el.empty();
		_.each(this.collection.models, function(movie){
			var movieView = new MovieView({ model: movie });
			self.$el.append( movieView.render().el )
		})
		return this
	}


});










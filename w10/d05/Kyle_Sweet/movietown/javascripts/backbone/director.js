// ***Model***
var Director = Backbone.Model.extend({
	initialize: function(){
		console.log("director arrives");
		this.set('movies', new MovieCollection());
	},

	defaults: {
		name: ""
	}
});

//***Collection***

var DirectorCollection = Backbone.Collection.extend({
  model: director
});

//***View***

var DirectorView = Backbone.View.extend({
	initialize: function(){
		this.listenTo( this.model, 'all', this.render )
	},
	tagName: 'li',
	template: _.template( $('#director-template').html() ),
	render: function(){
		var self = this;
		this.$el.empty();
		this.$el.html( this.template( this.model.attributes ) );

		var listView = new MovieListView({ collection: this.model.get('movies'), el: this.$el.find('.movies') });
		listView.render();

		this.$el.find('form').on('submit', function(e){
			e.preventDefault();
			var titleField = self.$el.find('input[name="title"]');
			var title = titleField.val();
			titleField.val('');
			self.model.get("movies").add({ title: title })
		})
		
		return this
	}
});

var DirectorListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'all', this.render);
	},
	render: function(){
		var self = this;
		this.$el.empty();
		_.each(this.collection.models, function(director){
			var DirectorView = new DirectorView({ model: director })
			self.$el.append( DirectorView.render().el )
		})
		return this;
	}
});











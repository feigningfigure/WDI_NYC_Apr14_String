// console.log('feed me javascripts')

var Juice = Backbone.Model.extend({
	initialize: function(){
		console.log("a juice has been jently created");
	},

	defaults: {
		ingredients: "orange"
	}
});

var JuiceCollection = Backbone.Collection.extend({
	model: Juice
});

var JuiceView = Backbone.View.extend({
	tagName: 'li',
	template: _.template( $('#juice_template').html() ),
	render: function(){
		this.$el.html( this.template( { juice: this.model.toJSON() } ) );
		return this;
	}
});

var JuiceListView = Backbone.View.extend({
	initialize: function(){
		// listenTo is a BB method
		this.listenTo(this.collection, 'add', this.render);
		this.listenTo(this.collection, 'remove', this.render);
	},
	render: function(){
		this.$el.empty();
		var self = this;
		this.collection.models.forEach(function(model){
			juiceView = new JuiceView({model: model});
			self.$el.append(juiceView.render().el);
		})
	}
});

var orange,
	peach,
	apple;

var juiceListView,
	juiceCollection;

$(function(){
	console.log("dom is working");

	juiceCollection = new JuiceCollection();

	orange = new Juice,
	peach = new Juice({ingredients: "peach"}),
	apple = new Juice({ingredients: "apple"});

	
	juiceListView = new JuiceListView({
		collection: juiceCollection,
		el: $("#juice_list")
	});

	juiceCollection.add(orange);
	juiceCollection.add(peach);
	juiceCollection.add(apple);



})
//MODEL

var Juice = Backbone.Model.extend({
	initialize: function(){
		console.log("New juice!")
	},

	defaults:{
		// ingredients: new Ingredients,
		juice_name: "",
	}

});

var Ingredient = Backbone.Model.extend({
	initialize: function(){
		console.log("New ingredient!")
	},

	defaults:{
		ingredient_name: "",
	}

});

//VIEW

var JuiceView = Backbone.View.extend({
	tagName: 'ul',
	template: _.template( $('#juice_template').html() ),
	render: function(){
		this.$el.html( this.template( { juice: this.model.toJSON() } ) );

		return this
	}
});

var JuiceListView = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'add', this.render);
		this.listenTo(this.collection, 'remove', this.render);
},

	render: function(){
		this.$el.empty();
		var self = this;
		_.each(self.collection.models, function(juice){
			var juiceView = new JuiceView({ model: juice });
			self.$el.append( juiceView.render().el  );
		})
		return this;
	}
})



//nested ingredient display??
// var IngredientListView = Backbone.View.extend({
// 	initialize: function(){
// 		this.listenTo(this.collection, 'add', this.render);
// 		this.listenTo(this.collection, 'remove', this.render);
// }),

// 	render: function(){
// 		this.$el.empty();
// 		var self = this;
// 		_.each(self.collection.models, function(ingredient){
// 			var ingredientView = new IngredientView({ model: ingredient });
// 			self.$el.append( ingredientView.render().el  );
// 		})
// 		return this;
// 	}
// })

//COLLECTIONS

var JuiceCollection = Backbone.Collection.extend({
	model: Juice
});

var juices,
		listView,
		orange,
		apple,
		lemonaid,
		pineapple;

var IngredientCollection = Backbone.Collection.extend({
	model: Ingredient
});

var ingredients,
		listView,
		orange,
		apple;


$(function(){

	juices = new JuiceCollection();

	listView = new JuiceListView({ collection: juices, el: $('#juice-list') });

	orange = new Juice({ juice_name: "orange"});
	apple = new Juice({ juice_name: "apple" });
	lemonaid = new Juice({ juice_name: "lemonaid" });
	pineapple = new Juice({ juice_name: "pineapple" });

	juices.add(orange);
	juices.add(apple);
	juices.add(lemonaid);
	juices.add(pineapple);

	ingredients = new IngredientCollection();

	orange = new Ingredient({ingredient_name: "orange"});
	apple = new Ingredient({ingredient_name: "apple"});

})









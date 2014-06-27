var Juice = Backbone.Model.extend({
	initialize: function(){
		console.log("Juice made");
		console.log(this.attributes);
	},
	defaults:{
		name: "",
		ingredients: []
	}
});

var Ingredient = Juice.extend({
	initialize: function(){
		console.log("Ingredient made");
		console.log(this.attributes);
	},
	defaults: {
		name: ""
	}
});

var JuiceCollection = Backbone.Collection.extend({
	model: Juice
});

var IngredientCollection = JuiceCollection.extend({
	model: Ingredient
});

var JuiceView = Backbone.View.extend({
	template: _.template('<li> <%= name %> </li>'),
	// template: _.template($("#juice-ingredients")),
	render: function(){
		this.$el.html(this.template(this.model.attributes))
		return this;
	}
});

var JuiceViewList = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'add', this.render)
		this.listenTo(this.collection, 'remove', this.render)
	},
	render: function(){
		this.$el.empty();
		var self = this;
		_.each(self.collection.models, function(juice){
			var juiceView = new JuiceView({model: juice});
			self.$el.append(juiceView.render().el);
		})
		return this;
	}
})


var IngredientView = Backbone.View.extend({
	tagName: 'li',
	template: _.template('<li> <%= name %> </li>'),
	render: function(){
		this.$el.html(this.template(this.model.attributes))
		return this;
	}
});

var IngredientViewList = Backbone.View.extend({
	initialize: function(){
		this.listenTo(this.collection, 'add', this.render)
		this.listenTo(this.collection, 'remove', this.render)
		console.log(this);
	},
	render: function(){
		this.$el.empty();
		var self = this;
		_.each(self.collection.models, function(ingredient){
			var ingredientView = new IngredientView({model: ingredient});
			self.$el.append(ingredientView.render().el);
		})
		return this;
	}
});




$(function(){
	var jambajuice = new JuiceCollection();
	var green = new Juice({name: "green"});
	var red = new Juice({name:"red"});
	var menu = new JuiceViewList({collection: jambajuice, el: $("#green-juice")});
	jambajuice.add(green);
	jambajuice.add(red);
	var greenstuff = new IngredientCollection();
	var apple = new Ingredient({name: "apple"});
	var lemon = new Ingredient({name: "lemon"});
	var menu = new IngredientViewList({collection: greenstuff, el: $("#grocery-list")})
	greenstuff.add(apple);
	greenstuff.add(lemon);
	green.set({ingredients: greenstuff});
	var mango = new Ingredient({name: "mango"});
	greenstuff.add(mango);
	green.set({ingredients: greenstuff});
	console.log(green.attributes);

	console.log(green.attributes.ingredients.models[0].attributes.name);
})


// var IngredientView = Backbone.View.extend({
// 	template: _.template('<li> <%= name %> </li>'),
// 	render: function(){
// 		this.$el.html(this.template(this.model.attributes));

// 		return this;
// 	}
// });

// var IngredientListView = Backbone.View.extend({
// 	initialize: function(){
// 		this.listenTo(this.collection, 'add', this.render)
// 		this.listenTo(this.collection, 'remove', this.render)
// 	},

// 	render: function(){
// 		this.$el.empty();
// 		var self = this;
// 		_.each(self.collection.models, function(ingredient){
// 			var ingredientView = new IngredientView({model: ingredient});
// 			self.$el.append(ingredientView.render().el);
// 		})
// 		return this;
// 	}
// });




// // === Juices ===

// // var Juice = Backbone.Model.extend({
// // 	initialize: function(){
// // 		console.log("juice model is strutting its stuff");
// // 	},
// // 	defaults: {
// // 		ingredients: new IngredientCollection()
// // 	},
// // });

// var JuiceCollection = Backbone.Collection.extend({
// 	model: Juice
// });

// var JuiceView = Backbone.View.extend({
// 	template: _.template('<li> <%= name %> </li>'),

// 	initialize: function(){
// 		// juiceIngredients = new IngredientListView();
// 		// this.listenTo(Ingredient.collection, 'add', Ingredient.render);
// 		// this.listenTo(this.ingredients, 'remove', this.render);
// 		console.log(this.collection.models);
// 	}

// 	// initialize: function(){
// 	// 	juiceIngredients = new IngredientListView();
// 	// 	this.listenTo(this.ingredients, 'add', this.render);
// 	// 	this.listenTo(this.ingredients, 'remove', this.render);
// 	// 	console.log(this.ingredients);
// 	// }

// 	// render: function(){
// 	// 	this.$el.empty();
// 	// 	var self = this;
// 	// 	_.each(self.collection.models, function(ingredient){
// 	// 		var ingredientView = new IngredientView({model: ingredient});
// 	// 		self.$el.append(ingredientView.render().el);
// 	// 	})
// 	// 	return this;
// 	// }
// });


// // **** ON LOAD ****

// var greenstuff;
// var vegingredients

// $(function(){
// 	vegingredients = new IngredientCollection();
// 	var listView = new IngredientListView({collection: vegingredients, el: $("#grocery-list")});
// 	var kale = new Ingredient({name: "kale"});
// 	var apple = new Ingredient({name: "apple"});
// 	var lemon = new Ingredient({name: "lemon"});
// 	vegingredients.add(kale);
// 	vegingredients.add(apple);
// 	vegingredients.add(lemon);

// 	var green = new Juice();
// 	greenstuff = new JuiceView({collection: vegingredients, el: $("#green-juice")});
// 	// green.add({ingredients: vegingredients});
// });


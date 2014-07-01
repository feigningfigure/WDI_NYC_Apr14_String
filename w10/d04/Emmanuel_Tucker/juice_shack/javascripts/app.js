// console.log('feed me javascripts')
//***Model***
var Juicem = Backbone.Model.extend({
     initialize: function(){
          console.log("")
     },

     defaults:{
          make: ""
          type: ""
          favor: ""
     }

});




//***View***
// To Display
var JuiceView = Backbone.View.extend({
     tagName: 'li'
     template: _.template($('#juice_template').html()),
     render: function(){
          this.$el.html( this.template( { juice: this.model.toJSON()} ));


          return this
     }


});

     var JuiceListView = Backbone.View.extend({
          initialize: function(){
               this.listenTo(this.collect, 'add' , this.render);
               this.listenTo(this.collect, 'remove' , this.render);



          },

          render: function(){
               this.$el.empty();
               var self = this;
               _.each(self.collection.models, function(juice){
                    var jucieView = new JuiceView({ model: juice });
                    self.$el.append( juiceView.render().el );
               })
               return this;



          }


     })



               //**Collection***
var JuiceCollection - Backbone.Collection.extend({
     model: Juice
});

var  Juices,

           listView,
           apple,
           orange,
           rasberry,
           coconut;

          // sugar,
          // water,
          // favoring,
          // dry;



$(function(){

          ingredients = new ingredientCollection();



          listView = new  ingredientView({ collection: ingredients, el: $('#ingredient-list')});

          sugar = new Juice({ make: "apple", type: "" , favor: ""})
          sugar = new Juice({ make: "orange", type: "" , favor: ""})
          sugar = new Juice({ make: "rasberry", type: "" , favor: ""})

          sugar = new Juice({ make: "coconut", type: "" , favor: ""})



})

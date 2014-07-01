// var Countryapp = Countryapp || { Models: {}, Collections: {}, Views: {} };

// Countryapp.Views.CountryView = Backbone.View.extend({

// });


var Countryapp =Countrytapp || ({ Models: {}, Collections: {}, Views: {} });

 Countryapp.Views.CountryView = Backbone.View.extend({
   initialize: function(){
     this.listenTo(this.model, 'destroy', this.remove)
   },

   tagName: 'li',
   template: _.template($('#country-template').html() ),
   render: function(){
     this.$el.empty();
     this.$el.html( this.template( this.model.attributes ) );

     return this;

   },

   events:{
     'click input[class="delete-country"]': 'removeCountry'
   },
   removePost: function(evt){
     evt.preventDefault();
     var self = this;
     console.log(this);
     this.model.destroy();
     console.log("you have destroyed it!");
   }

 });

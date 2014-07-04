// var Countryapp = Countryapp || { Models: {}, Collections: {}, Views: {} };


var Countryapp = Countryapp || ({ Models: {}, Collections: {}, Views: {} });

 Countryapp.Views.CountryListView = Backbone.View.extend({
   initialize: function(){
     this.listenTo( this.collection, 'add', this.render);
   },
  render: function(){
     var self = this;
     this.$el.empty();
     _.each( this.collection.models, function(post){
       var countryView = new Countryapp.Views.CountryView({
        model: post });
        self.$el.append(countryView.render().el);
     });

     return this;
   }

 })

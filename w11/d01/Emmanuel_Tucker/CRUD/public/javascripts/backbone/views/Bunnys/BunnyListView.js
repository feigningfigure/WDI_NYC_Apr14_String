var Bunnyapp || { Models: {}, Collections: {}. Views: {}};

Bunnyapp.Views.BunnyListView.extend({
     initialize: function (){
          this.listenTo(this.collection, 'add', this.redner);
     }
})

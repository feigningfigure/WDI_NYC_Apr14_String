//**Model



var Comment = Backbone.MOdel.extend({
     initialize: function(){
          console.log("comment something")
     },

     defaults: {
          title: ""
     }
});














//***Collection

var PostCollection  = Backbone.Collection.extend({
     model: Post
});












//***View

var PostView = Backbone.View.extend({
     initialize: function () {
          this.listenTo(this.model, 'all' , this.render)
     },
     tagName: 'li'
     template: _.template($('#Post-template').html() );
     render: function(){
          this.$el.empty();
          this.$el.html(this.template( this.model.attributes));
          return this
     }
});

var PostListView = Backbone.View.extned({
     initialize: function (){
          this.listenTo(this.collection, 'all' , this.render)
     },
     render: function(){
          var self = this;
          this.$el.empty();
          _.each(this.collection.models, function(post){
               var postView = new PostView ({model: post});
               self.$el.append(postView.render(). el )
          })
          return this
     }
})


var Postapp = Postapp || {Models: {}, Collections: {}, Views: {} };

Postapp.Views.PostView = Backbone.View.extend({
    initialize: function(){
      this.listenTo( this.model, "change", this.render );
      this.listenTo( this.model, "destroy", this.remove );
    },
    tagName: 'div' ,
    template: _.template($('#post-template').html()),
    editTemplate: _.template($('#post-edit-template').html()),
    render: function(){
       this.$el.empty();
       this.$el.html(this.template(this.model.attributes));
       return this
    },
    events: {
        //'click .delete' : 'deletePost'
        'click [data-action="destroy"]' : 'deletePost',
        'click [data-action="edit"]' : 'renderEditForm'
        // 'mouseenter' : 'hoverOn',
        // 'mouseleave' : 'hoverOff'
      },
    deletePost: function(ev){
    ev.preventDefault();
    this.model.destroy();
    return this
    },
    renderEditForm: function(ev){
      ev.preventDefault();
      var self = this;
      this.$el.html(this.editTemplate(this.model.attributes));
      // debugger
      this.$el.find("form").on("submit", function(ev){
        ev.preventDefault();
        var nameField = self.$el.find('input[name="edit-name"]');
        var dateField = self.$el.find('input[name="edit-date"]');
        var newName = nameField.val();
        var newDate = dateField.val();
        self.model.set({name: newName, date: newDate});
        self.model.save();
      }),
      this.$el.find('button').on('click', function(ev) {
        ev.preventDefault();
        self.render();
      })
    }
    // hoverOn: function(){
    //   this.$el.css("color","red");
    //   return this
    // },
    // hoverOff: function(){
    //   this.$el.css("color","black");
    //   return this
    // }
})


var Penguinapp = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinView = Backbone.View.extend({
  // Don't need a listener for create.  Will un-comment when we get to the delete
  initialize: function(){
    this.listenTo( this.model, "change", this.render )
    this.listenTo( this.model, "destroy", this.remove )
  },
  tagName: 'li',
  template: _.template( $('#penguin-template').html() ),
  editTemplate: _.template( $('#edit-template').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );

    return this;
  },
  events: {
    'click [data-action="destroy"]': 'destroyPenguin',
    'click [data-action="edit"]': 'renderEditForm'
  },
  destroyPenguin: function(evt){
    evt.preventDefault();
    this.model.destroy();
  },
  renderEditForm: function(){
    var self = this;
    this.$el.html(this.editTemplate( this.model.attributes ));
    this.$el.find('form').on('submit', function(evt){
      evt.preventDefault();
      var nameField = self.$el.find('input');
      var newName = nameField.val();
      self.model.set({ name: newName });
      self.model.save();
    });
  }

});

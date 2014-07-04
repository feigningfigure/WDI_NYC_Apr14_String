var Penguinapp  = Penguinapp || { Models: {}, Collections: {}, Views: {} };

Penguinapp.Views.PenguinView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove)
    this.listenTo(this.model, 'change', this.remove);
  },
  tagName: 'li',
  template: _.template($('#penguin-template').html()),
  render: function(){
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes));
    return this
  },
  events: {
    'click [data-action=destroy]': 'removePenguin',
    'click [data-action=edit]': 'renderEditForm'
  },
  removePenguin: function(e){
    e.preventDefault();
    var killer = confirm("Do you feel like a big man now?");
    if (killer === true){
      this.model.destroy();
    }
    else{null}
  },
editTemplate: _.template($('#edit-template').html()),
renderEditForm: function(e){
  e.preventDefault();
  this.$el.html(this.editTemplate(this.model.attributes))
}
});

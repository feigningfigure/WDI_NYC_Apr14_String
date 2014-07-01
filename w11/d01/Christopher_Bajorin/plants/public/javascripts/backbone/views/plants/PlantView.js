var Plantapp = Plantapp || { Models: {}, Collections: {}, Views: {} };

Plantapp.Views.PlantView = Backbone.View.extend({
  // initialize: function () {
  //   this.listenTo(this.model, "change", this.render)
  // },
  tagName: 'li',
  template: _.template( $('#plant-template').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes));
    return this;
  }
})

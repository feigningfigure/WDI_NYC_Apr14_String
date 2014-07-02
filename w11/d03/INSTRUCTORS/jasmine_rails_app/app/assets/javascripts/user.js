var User = Backbone.Model.extend({

  fullName: function() {
    return this.get('firstName') + ' ' + this.get('lastName');
  }

});

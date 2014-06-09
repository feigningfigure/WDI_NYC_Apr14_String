var User = {
  url: "/users",
  fetch: function() {
    $.get(this.url + "/" + this.id).done(function(data) {
      this.name = data.name;
      this.email = data.email;
    }.bind(this));
  }
};

function newUser(id) {
  var u = Object.create(User);
  u.id = id;
  return u;
}


$(document).ready(function() {

});

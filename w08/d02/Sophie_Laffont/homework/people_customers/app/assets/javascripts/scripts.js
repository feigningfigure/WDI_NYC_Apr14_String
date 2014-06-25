
// ************ Model *************
function Person(personJSON){
   this.name = personJSON.name;
   this.id = personJSON.id;
    this.email = personJSON.email;
     this.address = personJSON.address;
      this.loyalty_code = personJSON.loyalty_code;
}

// ************ View *************
function PersonView(model){
   this.model = model;
   this.el = undefined; // el for element
}

PersonView.prototype.render = function(){
   // var newElement = $('<li>').html('<span>' + this.model.name + '</span>'); //whatever goes in here it will create an li
      var newElement = $('<li>').html('<span>' + "name:     " + this.model.name + '</span>' + '</br>'+ "email:     " + this.model.email + '</br>' + "address:     " + this.model.address + '</br>' + "loyalty code:" + this.model.loyalty_code + '</br>');
   var self = this;
   newElement.append('<button data-method="update" data-id="' + this.model.id + '">Update</button>');
   newElement.append('<button data-method="delete" data-id="' + this.model.id + '">Delete</button>');
   newElement.find('button').on('click', function(event) {
      event.preventDefault();
      var id = $(this).data('id');
      if ($(this).data('method') === "delete"){
         peopleCollection.delete(id);
      } else {
         self.renderUpdateInput(id);
      }
   });
   this.el = newElement;
   return this
};

PersonView.prototype.renderUpdateInput = function(id) {
   var el = $(this.el);
   el.find('span').replaceWith('<input type="text" name="personName" />');
   el.find('button').remove();
   el.append('<button class="update" data-id="' + this.model.id+ '">Update</button><button class="cancel">Cancel</button>');
   el.find('button.cancel').on('click', function(event) {
      event.preventDefault();
      $(peopleCollection).trigger('reset');
   });
   el.find('button.update').on('click', function(event) {
      event.preventDefault();
      peopleCollection.update({
         id: id,
         name: el.find('input[name="personName"]').val()
      });
   });
};

// ************ Collection *************
function PeopleCollection(){
   this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
   var newPerson = new Person(personJSON);
   this.models[personJSON.id] = newPerson;
   $(this).trigger('reset');
};

PeopleCollection.prototype.create = function(paramObj){
   $.ajax({
      url: '/people',
      method: 'post',
      dataType: 'json',
      data: {person: paramObj}
   }).done(function(data){
      peopleCollection.add(data);
   });
};

PeopleCollection.prototype.delete = function(id) {
   var self = this;
   var paramObj = this.models[id];
   delete this.models[id];

   $.ajax({
      url: '/people/' + id, // "/people/2"
      method: 'delete',
      dataType: 'json',
      data: {person: paramObj}
   }).done(function(data) {
      $(self).trigger('reset');
   });
};

PeopleCollection.prototype.update = function(paramObj){
    var self = this;
    $.ajax({
      url: '/people/' + paramObj.id, // "/people/2"
      method: 'put',
      dataType: 'json',
      data: {person: paramObj}
   }).done(function(data) {
      self.models[paramObj.id] = paramObj;
      $(self).trigger('reset');
   });


}


function displayEntireCollection(){
   $('.people').html('');

   for(id in peopleCollection.models){
      var person = peopleCollection.models[id]; //this returns in console Person {name: "pickle", id: 1}
      var personView = new PersonView (person);
      $('.people').append(personView.render().el);
   }
}

PeopleCollection.prototype.fetch = function(){
   var self = this;
   $.ajax({
      url: '/people',
      method: 'get',
      dataType: 'json',
   }).done(function(data){
      for (id in data){
         self.add(data[id]);
      }
    });
};

var peopleCollection = new PeopleCollection();

// below is equivalent to onpage load
$(function(){

   peopleCollection.fetch();

   $(peopleCollection).on('reset', function(){
      displayEntireCollection();
   });

   $('.name-form').on('submit', function(e){
      console.log(e);
      e.preventDefault();
      var newNameInput = $('.name-form input[name="name"]');
      peopleCollection.create({name: newNameInput.val()});
      newNameInput.val('');
   });

});

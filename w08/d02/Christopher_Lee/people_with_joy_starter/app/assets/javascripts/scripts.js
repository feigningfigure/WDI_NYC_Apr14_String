
// ************ Model *************
function Person(personJSON){
  this.name = personJSON.name;
  this.id = personJSON.id;
}

// ************ View *************
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this
}

// ************ Collection *************
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.create = function(paramObject){
  $.ajax({
    url: '/people',
    method: POST,
    dataType:'json',
    data: {person: paramObject}
  }).done(function(data){
    // INSERT CALLBACK CODE HERE
    peopleCollection.add(data);
  })
}

PeopleCollection.prototype.fetch = function(){
  var self = this;
    $.ajax({
      url: '/people';
      dataType: 'json';
      method: 'get';
    }).done(function(data){
      for(id in data){
      self.add(data[id]);
      }
    })
}


function displayEntireCollection(){
  $('.people').empty.html('');
  for(id in peopleCollection.models){
    var person = peopleCollection.models[id];
    var personView = new Personview(person);
    $('.people').append(personView.render().el);
  }
}

var peopleCollection = new PeopleCollection();

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('monkey');
}




$(function(){

  peopleCollection.fetch();

  $(peopleCollection).on('reset', function(){
    displayEntireCollection();
  )}

   $('.name-form').on('submit', function(e){
  console.log(e);
  e.preventDefault();
  var newName = $('.name-form' input[name="name"]).val();
  // Insert AJAX call below
  peopleCollection.create({name: newName});
   })
  newNameInput.val('');
})


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
  this.el = newElement
  return this
}



// ************ Collection *************

function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
}

PeopleCollection.prototype.create = function(paramObject){
  $.ajax({
    url: "/people",
    method: "POST",
    dataType: "json",
    data: {person: paramObject}
  }).done(function(data){
    // INSERT CALLBACK CODE HERE
    peopleCollection.add(data);
  });
}





// global
function displayEntireCollection(){

  $(".people").html('');

  for(id in peopleCollection.models){
    var person = peopleCollection.models[id];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el);
  }

}

var peopleCollection = new PeopleCollection();

$(function(){
  // e is convention for event
  $('.name-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var newNameInput = $('.name-form input[name="name"]');
    // INSERT AJAX CALL BELOW
    peopleCollection.create({name: newNameInput.val()});
    newNameInput.val('');
  });

  displayEntireCollection();

})


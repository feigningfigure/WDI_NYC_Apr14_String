
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
  return this;
}

// ************ Collection *************

function PeopleCollection() {
  this.models = {};
}

PeopleCollection.prototype.add = function(presonJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson; //adding to the array created above
  $(this).trigger('reset');
}

PeopleCollection.prototype.create = function(paramObject){
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject}
  }).done(function)(data){
    peopleCollection.add(data);
  })
}

PeopleCollection.prototype.fetch = function(){
  var self= this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    method: 'get'
  }).done(function(data){
    for (id in data){
      self.add(data[id]);
    }
  })
};

//below function is interracting with the view html
function displayEntireCollection(){
  $('.people').html('');
  for(id in peopleCollection.models){
    var person = peopleCollection.models[id];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el);
  }
}

var peopleCollection = new PeopleCollection();

$(function(){

  peopleCollection.fetch();

//below, "reset" is assigned by coder (us)
  $(peopleCollection).on('reset', function(){
    displayEntireCollection();
  })

  //can now call methods on the event with "e"
  $(".name-form").on('submit', function(e){
    console.log(e);
    e.preventDefault(); //prevents the form's default routing
    var newNameInput = $('.name-form input[name="name"]');
    peopleCollection.create({name: newNameInput.va()});

  })

})


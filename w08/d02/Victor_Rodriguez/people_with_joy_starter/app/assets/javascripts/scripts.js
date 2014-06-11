
// ************ Model *************
function Person(personJSON){
  this.name = personJSON.name;
  this.id = personJSON.id;
}

//Purpose of Model in Javascript is to represent data from database.
//In this context Model will be held in the Collection
//which is a holder of Models
//Models exist on client and server side because you probably will have things in server model(e.g., e-mails, credit card) that you don't wont on client side.

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
//If you want to add a template, you would insert in line 21 replace newElement

//PeopleCollection.protoype.fetch = function(){
//  $.ajax({
//    url:'/people',
//    dataType: 'json',
//    method: 'get',
//  }).done(function(data){
//    for(id in data){
//      self
//    }
//  })  data: {person: paramObject}
//  })
//}

function displayEntireCollection(){
$('.people').html('');
for (id in peopleCollection.models)
var person = peopleCollection.models[id];
}
var personView = new PersonView(person);
$('.people').append(personView)


// ************ Collection *************
//Collection is a holder and controller of Models
//Collection observes the changes in Models, marks and sends them to the Views

function PeopleCollection(){ //Essentially a facotryu that makes instances of people
  this.models = {};  
}

PeopleCollection.prototype.add = function(personJSON){
var newPerson = new Person(personJSON)
this.models[personJSON.id] = newPerson;
$(this).trigger('monkey');
}

PeopleCollection.prototype.create = function(paramObject){
  $.ajax({
    url: '/people',
    method: 'post',
    dataType:'json',
    data: {person: paramObject},
  }).done(function(data){
    peopleCollection.add(data);
//INSERT CALLBACK CODE HERE
})

var peopleCollection = new PeopleCollection();

$(function(){

//peopleCollection.fetch();

//$(peopleCollection).on('reset', function(){
// displayEntrieCollection();
//}

  $('.name-form').on('submit', function(e){
  console.log(e); 
  e.preventDefault();
  var newNameInput = $('.name-form input[name="name"').val(); //Rationale is that it grabs just a specific part of form.
  //INSERT AJAX CALL BELOW
  peopleCollection.create({name: newName});
  newNeameInput.val('');
})

})

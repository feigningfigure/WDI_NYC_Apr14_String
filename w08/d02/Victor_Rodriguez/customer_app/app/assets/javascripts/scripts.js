
// ************ Model *************
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.id = customerJSON.id;
}

// ************ View *************
function CustomerView(model){
  this.model = model; 
  this.el = undefined; 
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this
}

// ************ Collection *************
function CustomerCollection(){
  this.models = {};
}

CustomerCollection.prototype.add = function(personJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('monkey');
}

CustomerCollection.prototype.create = function(paramObject){
  // the below line is setting the variable 'self' to the instance of PeopleCollection that .create is calleed on
  var self = this
  $.ajax({
    url: '/customers',
    method: 'post',
    dataType: 'json',
    data: {customer: paramObject}
  }).done(function(data){
    self.add(data); 
  })
}

CustomerCollection.prototype.fetch = function(){
  var self = this;
  $.ajax({
    url: '/customers',
    dataType: 'json',
    method: 'get'
  }).done(function(data){
    for(id in data){
    self.add(data[id]);
    }
  })
};

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

  $(peopleCollection).on('monkey', function(){
    displayEntireCollection();
  })

  $('.nacdme-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var newNameInput = $('.name-form input[name="name"]');
    peopleCollection.create({name: newNameInput.val()});
    newNameInput.val('');
  })

})













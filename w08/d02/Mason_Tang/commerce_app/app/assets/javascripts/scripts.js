
function Customer(customerJSON){
  this.id = customerJSON.id;
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
}

function CustomerView(model){
  this.model = model;
  this.el = undefined;
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this
}


function CustomersCollection(){
  this.models = {};
}

CustomersCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('reset');
}

CustomersCollection.prototype.create = function(paramObject){
  var self = this
  $.ajax({
    url: '/customers',
    method: 'post',
    dataType: 'json',
    data: {person:paramObject}
  }).done(function(data){
    self.add(data);
  })

}

CustomersCollection.prototype.fetch = function(){
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
}

function displayEntireCollection(){
  $('.customers').html('');

  for(id in customersCollection.models){
    var customer = customersCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers').append(customerView.render().el);
  }
}

var customersCollection = new CustomersCollection();


$(function (){

  customersCollection.fetch();

  $(customersCollection).on('reset', function(){
    displayEntireCollection();
  })

  $('.name-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var newInput = $('.customer-form input[name="name", address="address", email="email", loyalty_code="loyalty_code"]');
    customersCollection.create({name: newNameInput.val()});
    newInput.val('');
  })





})

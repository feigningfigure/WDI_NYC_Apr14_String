
// ************ Model *************
function Customer(customerJSON){
  this.name = personJSON.name;
  this.address = personJSON.address;
  this.email = personJSON.email;
  this.loyaltycode = personJSON.loyaltycode;
  this.id = personJSON.id;
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
function CustomersCollection(){
  this.models = {};
}

CustomersCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
}

CustomersCollection.prototype.create = function(paramObject){

  var self = this
  $.ajax({
    url: '/customers',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject}
  }).done(function(data){
    self.add(data);
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


$(function(){

  $('.name-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var newNameInput = $('.name-form input[name="name"]');
    var newEmailInput = $('.name-form input[name="email"]');
    var newAddressInput = $('.name-form input[name="address"]');
    var newEmailInput = $('.name-form input[name="email"]');
    var newLoyaltyCodeInput = $('.name-form input[name="loyalty_code"]');
    customersCollection.create({name: newNameInput.val(), address: newAddressInput.val() email: newEmailInput.val(), loyaltycode: newLoyaltyCodeInput.val()});
    newNameInput.val('');
  })

})



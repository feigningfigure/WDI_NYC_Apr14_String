// ************ Model *************
function Customer(customerJSON){
  this.id = customerJSON.id;
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
}

// ************ View *************
function CustomerView(model){
  this.model = model;
  this.el = undefined;
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name + "     " + this.model.address + "     " + this.model.email + "     " + this.model.loyalty_code);
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
  $(this).trigger('reset');
}

CustomersCollection.prototype.remove = function(customerJSON){
  var Customer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('reset');
}



CustomersCollection.prototype.create = function(paramObject){
  var self = this
  $.ajax({
    url: '/customers',
    method: 'post',
    dataType: 'json',
    data: {customer:paramObject}
  }).done(function(data){
    console.log(data);
    self.add(data);
  })
}

CustomersCollection.prototype.destroy = function(paramObject){
  var self = this
  $.ajax({
    url: '/customers',
    method: 'delete',
    dataType: 'json',
    data: {customer:paramObject}
  }).done(function(data){
    console.log(data);
    self.remove(data);
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
    var newNameInput = $('.name-form input[name="name"]');
    var newAddressInput = $('.name-form input[name="address"]');
    var newEmailInput = $('.name-form input[name="email"]');
    var newLoyaltyInput = $('.name-form input[name="loyalty_code"]');
    customersCollection.create({
      name: newNameInput.val(),
      address: newAddressInput.val(),
      email: newEmailInput.val(),
      loyalty_code: newLoyaltyInput.val()
    });
    newNameInput.val('')
    newAddressInput.val('')
    newEmailInput.val('')
    newLoyaltyInput.val('')
  })


})
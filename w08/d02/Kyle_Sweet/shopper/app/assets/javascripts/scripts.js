

//model
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
  this.id = customerJSON.id;
}

//view
function CustomerView(model){
  this.model = model;
  this.el = undefined;
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this
}

//collection
function CustomersCollection(){
  this.models = {};
}

CustomersCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('show');
}


CustomersCollection.prototype.create = function(paramObject){
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

CustomersCollection.prototype.fetch = function(){
  var self = this;
  $.ajax({
    url: '/customers',
    dataType: 'json',
    method: 'delete'
  }).done(function(data){
    for(id in data){
    self.delete(data[id]);
    }
  })
};


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

  customersCollection.fetch();

  $(customersCollection).on('show', function (){
    displayEntireCollection();
  })

  $('.info-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var newNameInput = $('.info-form input[customer_name="name"]');
    customersCollection.create({name: newNameInput.val()});
    newNameInput.val('');
    var newAddressInput = $('.customer-form input[address="address"]');
    customersCollection.create({address: newAddressInput.val()});
    newAddressInput.val('');
    var newEmailInput = $('.customer-form input[email="email"]');
    customersCollection.create({customer_email: newEmailInput.val()});
    newEmailInput.val('');
    var newLoyaltyInput = $('.customer-form input[loyalty_code="loyalty_code"]');
    customersCollection.create({loyalty_code: newLoyaltyInput.val()});
    newLoyaltyInput.val('');
  })

})

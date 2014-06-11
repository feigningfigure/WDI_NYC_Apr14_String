
// ************ Model *************
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
  this.id = customerJSON.id;
}

// ************ View *************
function CustomerView(model){
  this.model = model; 
  this.el = undefined; 
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name + " lives at " + this.model.address + "<button class='edit_button' id='" + this.model.id + "'>  Edit  </button>" + "<button class='delete_button' id='" + this.model.id + "'>  Delete  </button>");
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

CustomersCollection.prototype.create = function(paramObject){
  // the below line is setting the variable 'self' to the instance of CustomersCollection that .create is calleed on
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

CustomersCollection.prototype.edit = function(paramObject){
  // the below line is setting the variable 'self' to the instance of CustomersCollection that .create is calleed on
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

CustomersCollection.prototype.delete = function(customerId){
  $.ajax({
    url: "/customers/" + customerId,
    type: "DELETE",
    dataType: "json",
  }).done(function(){
  })
  delete this.models[customerId]
  $(this).trigger('reset');
};

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
};

function displayEntireCollection(){

  $('.customers').html('');

  for(id in customersCollection.models){
    var customer = customersCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers').append(customerView.render().el);
  }
  $('.edit_button').on('click', function(){
    var customerId = $(this).attr("id");
    customersCollection.edit(customerId);
  });
  $('.delete_button').on('click', function(){
    var customerId = $(this).attr("id");
    customersCollection.delete(customerId);
  });
}

var customersCollection = new CustomersCollection();


$(function(){

  customersCollection.fetch();

  $(customersCollection).on('reset', function(){
    displayEntireCollection();
  })

  $('.customer-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var newNameInput = $('.customer-form input[name="name"]'),
    newAddressInput = $('.customer-form input[name="address"]'),
    newEmailInput = $('.customer-form input[name="email"]'),
    newLoyaltyCodeInput = $('.customer-form input[name="loyalty_code"]');

    customersCollection.create({
      name: newNameInput.val(),
      address: newAddressInput.val(),
      email: newEmailInput.val(),
      loyalty_code: newLoyaltyCodeInput.val()
    });
    $('.customer-form input').val('');
  })
})
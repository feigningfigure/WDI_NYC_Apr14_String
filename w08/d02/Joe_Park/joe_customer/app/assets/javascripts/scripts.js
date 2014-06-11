
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
  var newElement = $('<li>').html(this.model.name + " = " + this.model.email + " <button id='" + this.model.id + "'>DELETE</button>");
  this.el = newElement
  return this
}


// ************ Collection *************
function CustomersCollection(){
  this.models = {};
}

CustomersCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('refresh');
}


CustomersCollection.prototype.create = function(paramsObject){
  $.ajax({
    url: "/customers",
    type: "POST",
    dataType: "json",
    data: {customer: paramsObject}
  }).done(function(data){
    customersCollection.add(data);
  });
}

CustomersCollection.prototype.fetch = function(){
  $.ajax({
    url: "/customers",
    type: "GET",
    dataType: "json"
  }).done(function(data){
    for(id in data){
      customersCollection.add(data[id]);
    }
  });
}

CustomersCollection.prototype.delete = function(customerId){
  $.ajax({
    url: "/customers/" + customerId,
    type: "DELETE",
    dataType: "json"
  }).done(function(){
  });
    delete customersCollection.models[customerId];
    $(this).trigger('refresh');
}


// global
function displayAllCustomers(){

  $('.customers').html('');

  for(id in customersCollection.models){
    var customer = customersCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers').append(customerView.render().el);
  }

}



// *************************************
var customersCollection = new CustomersCollection();
// *************************************

function setEventListeners(){
  $(customersCollection).on('refresh', function(){
    displayAllCustomers();
  });


  $('.customer-form').on('submit', function(evt){
    // console.log(evt);
    evt.preventDefault();
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
  });

  $('.customers').on('click', 'button', function(evt){
    evt.preventDefault();
    // console.log($(this).attr("name"));
    var customerId = $(this).attr("id");
    customersCollection.delete(customerId);
  });
}


$(function(){
  setEventListeners();

  customersCollection.fetch();
  // only executes on load and not after so we need to create fetch for this to work
  displayAllCustomers();

});

//GLOBAL
// *** Model ***
// Passing JSON data to the person function
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
  this.id = customerJSON.id;
}

// *** View ***
function CustomerView(model){
  this.model = model;
  this.el = undefined;
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name + this.model.address + this.model.email + this.model.loyalty_code);
  this.el = newElement;
  return this;
}

// *** Collection ***
// Holds the results of the model.
function CustomersCollection(){
  this.models = {};
}


CustomersCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('reset');
}
// best to keep naming similar to crud action.  In this case, ".create". Ajax call is bound to .create
CustomersCollection.prototype.create = function(paramObject){
  // the below line is setting the variable 'self' to the instance of CustomersCollection that .create is called on
  var self = this;
  $.ajax({
    url: '/customers',
    method: 'destroy',
    dataType: 'json',
    data: {customer: paramObject}
  }).done(function(data){
    // This will have received the ID from the name when it was entered into the database.
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


// DOCUMENT READY
$(function(){

  customersCollection.fetch();

  $(customersCollection).on('reset', function(){
    displayEntireCollection();
  })
    // The actual event in the brower is passed as 'e' (conventional -- short for "event")
  $('.customer-form').on('submit', function(e){
    // console.log(e);
    // prevents the default action of the event (which is passing it to a route)
    e.preventDefault();
    // Set the values entered within the form as new variable names.

    var newNameInput = $('.customer-form input[name="name"]').val();
    var newAddressInput = $('.customer-form input[name="address"]').val();
    var newEmailInput = $('.customer-form input[name="email"]').val();
    var newLoyaltyCodeInput = $('.customer-form input[name="loyalty_code"]').val();
    debugger
    customersCollection.create({
      name: newNameInput,
      address: newAddressInput,
      email: newEmailInput,
      loyalty_code: newLoyaltyCodeInput
    });
  })

})


// When you hit submit you pass the form values to the questionCollection.create method as 'data'
// When that is done, questionCollection.add is called which relies on .fetch to retrieve the newest question from
// ActiveRecord as data and .fetch then calls .add and adds the newest question data to the questionsCollections model hash.
// Then, the trigger function is called in the document.ready and, every time something is added to the questionsCollection model hash,
// it's going to call the displayEntireCollection function which appends the template/html, etc to the element on the corresponding view page.

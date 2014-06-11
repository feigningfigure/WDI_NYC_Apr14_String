// ****** Model ******

function Customer(customerJSON){
  this.name  = customerJSON.name
  this.address = customerJSON.address
  this.email = customerJSON.email
  this.loyalty_code = customerJSON.loyalty_code
}


// ****** View ******

function CustomerView(model){
  this.model = model;
  this.el = undefined;
}

CustomerView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this
}



// ****** Collection ******

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
    method: 'POST',
    dataType: 'JSON',
    data: {customer: paramObject}
  }).done(
    function(data){self.add(data);
  });
}

function displayEntireCollection(){

  $('.customers').html('');

  for(id in customersCollection.models){
    var customer = customersCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customer').append(customerView.render().el);
  }
}

CustomersCollection.prototype.fetch = function(){
  var self = this;
  $.ajax({
    url: '/customers',
    dataType: 'JSON',
    method: 'GET'
  }).done(
    function(data){for(id in data){
      self.add(data[id]);
    }
  });
}

var customersCollection = new CustomersCollection();

$(function(){

  customersCollection.fetch();

  $(customersCollection).on('reset', function(){
    displayEntireCollection();
  })

  $('.customer-form').on('submit',
    function(evt){console.log(evt);
    evt.preventDefault();
    var newCustomerInput = $('.customer-form input[name="name"]');
    customersCollection.create({name: newCustomerInput.val()});
    newCustomerInput.val('');
  })
})

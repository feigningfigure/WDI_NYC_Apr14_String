
// ************ Model *************
function Customer(customerJSON){
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
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this
}



// ************ Collection *************
function CustomerCollection(){
  this.models = {};
}

CustomerCollection.prototype.create = function(paramObject){
  $.ajax({
    url: '/customer',
    method: 'POST',
    dataType:'json',
    data: {customer: paramObject}
  }).done(function(data){
    // INSERT CALLBACK CODE HERE
    console.log(data);
    customerCollection.add(data);
  })
}


CustomerCollection.prototype.fetch = function(){
  var self = this;
    $.ajax({
      url: '/customer',
      dataType: 'json',
      method: 'get'
    }).done(function(data){
      for(id in data){
      self.add(data[id]);
      }
    })
}

var customerCollection = new CustomerCollection();

CustomerCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('monkey');
}

function displayEntireCollection(){
  $('.customers').empty().html('');
  for(id in customerCollection.models){
    var customer = customerCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers').append(customerView.render().el);
  }
}





$(function(){

  customerCollection.fetch();

  $(customerCollection).on('monkey', function(){
    displayEntireCollection();
  })


  $('.customer-form').on('submit', function(e){
  console.log(e);
  e.preventDefault();
  // var newCustomerInput = $('.customer-form input[name="name"]');
  var newCustomerInput = $(this).serializeArray();
  console.log({name: newCustomerInput[0].value, address: newCustomerInput[1].value, email: newCustomerInput[2].value, loyalty_code: newCustomerInput[3].value});

  // Insert AJAX call below

  // FIX THIS!!!!!!
  customerCollection.create({name: newCustomerInput[0].value, address: newCustomerInput[1].value, email: newCustomerInput[2].value, loyalty_code: newCustomerInput[3].value});
   })
  //newNameInput.val('');
})



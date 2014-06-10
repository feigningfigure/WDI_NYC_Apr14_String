
// ************ Model *************
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
}

// ************ View *************

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
    // FIX THIS!!!!!!
    console.log(data);
    //customerCollection.add(data);
  })
}

var customerCollection = new CustomerCollection();

CustomerCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer;
  $(this).trigger('monkey');
}



$(function(){

  //$(peopleCollection).on('monkey', function(){
    //displayEntireCollection();
  //})


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



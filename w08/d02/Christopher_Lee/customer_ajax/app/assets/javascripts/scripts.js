
// ************ Model *************
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
}

// ************ View *************

// ************ Collection *************





$(function(){
  $('.customer-form').on('submit', function(e){
  console.log(e);
  e.preventDefault();
  // var newCustomerInput = $('.customer-form input[name="name"]');
  var newCustomerInput = $(this).serializeArray();


  console.log(newCustomerInput);
  //console.log(newCustomerInput[0]["value"]);
  jQuery.each( newCustomerInput, function( i, field ) {console.log(field.value); });


  // Insert AJAX call below
  //peopleCollection.create({name: newName});
   })
  //newNameInput.val('');
})



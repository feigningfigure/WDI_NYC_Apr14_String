
// ************ Model *************
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.id = customerJSON.id;
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
  return this;
}

// ************ Collection *************

function CustomerCollection() {
  this.models = {};
}

CustomerCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  this.models[customerJSON.id] = newCustomer; //adding to the array created above
  $(this).trigger('reset');
}

CustomerCollection.prototype.create = function(paramObject){
  $.ajax({
    url: '/customer',
    method: 'post',
    dataType: 'json',
    data: {customer: paramObject}
  }).done(function(data){
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
    for (id in data){
      self.add(data[id]);
    }
  })
};

//below function is interracting with the view html
function displayEntireCollection(){

  $('.customers_display').html('');

  for(id in customerCollection.models){
    var customer = customerCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers_display').append(customerView.render().el);
  }
}

var customerCollection = new CustomerCollection();

$(function(){

  customerCollection.fetch();

//below, "reset" is arbitrary assigned by coder (us)
  $(customerCollection).on('reset', function(){
    displayEntireCollection();
  })

  //can now call methods on the event with "e"
  $(".name-form").on('submit', function(e){
    console.log(e);
    e.preventDefault(); //prevents the form's default routing
    var newNameInput = $('.name-form input[name="name"]');
    var newAddressInput = $('.name-form input[name="address"');
    var newEmailInput = $('.name-form input[name="email"');
    var newLoyaltyCodeInput = $('.name-form input[name="loyalty_code"')
    customerCollection.create({name: newNameInput.val(),
                            address: newAddressInput.val(),
                            email: newEmailInput.val(),
                            loyalty_code: newLoyaltyCodeInput.val()
                              });
console.log(customerCollection);
  })

})


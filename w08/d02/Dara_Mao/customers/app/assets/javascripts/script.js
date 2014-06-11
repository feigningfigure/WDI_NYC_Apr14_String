// ============ MODEL =========================
function Customer(customerJSON){
  this.name = customerJSON.name;
  this.address = customerJSON.address;
  this.email = customerJSON.email;
  this.loyalty_code = customerJSON.loyalty_code;
  this.id = customerJSON.id;
}

// ============ VIEW =========================
function CustomerView(){
  this.model = model;
  this.el = undefined;
}

// ============ COLLECTION =========================

function CustomerCollection (){
    this.models = {};
}

var customerCollection = new CustomerCollection();

// ============ EVENT HANDLER =========================
$(function(){
  $('.customer-form').on('submit', function(e){
        console.log(e);
        e.preventDefault();

        var newNameInput = $('.customer-form input[name="name"]');
        var newAddressInput = $('.customer-form input[address="address"]');
        var newEmailInput = $('.customer-form input[email="email"]');
        var newLoyaltyInput = $('.customer-form input[loyalty_code="loyalty_code"]');

        customerCollection.create({
            name: newNameInput.val(),
            address: newAddressInput.val(),
            email: newEmailInput.val(),
            loyalty_code: newLoyaltyInput.val()
        });

        newNameInput.val('');
        newAddressInput.val('');
        newEmailInput.val('');
        newLoyaltyInput.val('');

  }) // end of submit form
}) // end of document ready


// ============ CRUD  ==================================
CustomerCollection.prototype.create = function(paramObject){
  var self = this
  $.ajax({
    url: '/customer',
    method: 'post',
    dataType: 'json',
    data: {customer: paramObject}
  }).done(function(data){
    self.add(data);
  })
}

CustomerCollection.prototype.add = function(customerJSON){
    var newCustomer = new Customer(customerJSON);
    this.models[customerJSON.id] = newCustomer;
    // $(this).trigger('monkey');
}

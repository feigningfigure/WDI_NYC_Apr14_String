
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
  this.el2 = undefined;
  this.el3 = undefined;
  this.el4 = undefined;
}

CustomerView.prototype.find = function(){
  var record = this.model.id
  return record
}

CustomerView.prototype.render = function(){
  var newElement = $('<h2>').html(this.model.name);
  var newElement2 = $('<li>').html("Address: " + this.model.address);
  var newElement3 = $('<li>').html("Email: " + this.model.email);
  // var newElement4 = $('<li>').html('<a id="delete_link" href="/customers/' + this.model.id + '">DELETE</a>');
   var newElement4 = $('<li class="delete_link" value = ' + this.model.id + '>').html("[DELETE]");

  this.el = newElement;
  this.el2 = newElement2;
  this.el3 = newElement3;
  this.el4 = newElement4;
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

CustomerCollection.prototype.find = function(id){

}

// CustomerCollection.prototype.delete = function(paramObject){
//     var id = this.model.id
//     console.log
//   $.ajax({
//     url: '/customer/:id',
//     method: 'delete',
//     dataType: 'json',
//     data: {customer: paramObject}
//   }).done(function(data){
//     customerCollection.add(data);
//   })
// }



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
    $('.customers_display').append(customerView.render().el2);
    $('.customers_display').append(customerView.render().el3);
     $('.customers_display').append(customerView.render().el4);
  }
  $(".delete_link").click(function(){
    var id = $(".delete_link").val();



    });
}

var customerCollection = new CustomerCollection();

function setEventListeners() {

    $("#clicktest").click(function(){
      console.log("clicked");
    });
}

$(function(){
  setEventListeners();
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


// $("#add_link").click(function(){
//      $("#new_form").slideToggle();
//      $("#add_link").hide();
//   });

})


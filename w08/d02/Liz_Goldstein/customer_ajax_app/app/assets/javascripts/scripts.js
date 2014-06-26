
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
  // var newElement4 = $('<li>').html('<a id="delete_link" href="/customer/' + this.model.id + '">DELETE</a>');
  var newElement4 = $('<li>').html('<a href="javascript:void(0)" onclick="deleteClick('+ this.model.id +')">DELETE</a>');
   // var newElement4 = $('<li id="delete_link" value = ' + this.model.id + '>').html("[DELETE]");


// $("#delete_link").click(function(){
//     var send_id = $("#delete_link").val();
//      console.log(send_id);
//       var id_data = {
//         id: send_id
//       };});

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

function fast_reset() {
  $(this).trigger('reset');
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

function deleteClick(id){
  console.log(id);
  var send_id = id;
  var id_data = {
        id: send_id
        };
$.ajax({
    url: '/customer/' + send_id,
    type: 'post',
    dataType: 'json',
    data: id_data,
     data: {"_method":"delete"}
  }).done(function(results){
    location.reload();
    // var customer = customerCollection.models[id_data];
    // customerCollection.splice[customer]
    // fast_reset();
  })

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

}


var customerCollection = new CustomerCollection();

// function setEventListeners() {

//     $("#clicktest").click(function(){
//       console.log("clicked");
//     });
// }

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


// $("#add_link").click(function(){
//      $("#new_form").slideToggle();
//      $("#add_link").hide();
//   });

})


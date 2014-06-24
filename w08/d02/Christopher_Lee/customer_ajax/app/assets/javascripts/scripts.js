
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
  var customerTemplate = _.template($("#customerTemplate").text());
  var customerHTML = customerTemplate(this.model);
  //var newElement = $('<h1>').html(this.model.name);
  var newElement = customerHTML;
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

CustomerCollection.prototype.update = function(paramObject, passedId){
  console.log(paramObject);
  $.ajax({
    url: '/customer/' + passedId,
    method: 'PATCH',
    dataType:'json',
    data: {customer: paramObject}
  }).done(function(data){
    // INSERT CALLBACK CODE HERE
    console.log("made it to the end of update");
    console.log("This is " + data);
    //FIX THIS !!!!!!
    customerCollection.patch(paramObject, passedId);
  })
}


CustomerCollection.prototype.destroy = function(id){
  $.ajax({
    url: '/customer/' + id,
    method: 'DELETE',
    dataType:'json',
  }).done(function(){
    console.log("success");
    customerCollection.delete(id);
  })
}

CustomerCollection.prototype.delete = function(id){
  delete this.models[id];
  $(this).trigger('monkey');
}

function deleteItem(){
  $( ".delete" ).click(function() {
  //console.log($(this).parent().attr( "id" ));
  var deletedItemId = $(this).parent().attr( "id" )
  customerCollection.destroy(deletedItemId);
  //console.log($(this).parent().attr( "id" ));
  });
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


CustomerCollection.prototype.patch = function(customerJSON, passedId){
  console.log("HEY HERES PARAMS IN PATCH: " + customerJSON.name);
  var modelToUpdate = this.models[passedId]
  modelToUpdate.name = customerJSON.name;
  modelToUpdate.address = customerJSON.address;
  modelToUpdate.email = customerJSON.email;
  modelToUpdate.loyalty_code = customerJSON.loyalty_code;
  $(this).trigger('monkey');
}



function displayEntireCollection(){
  $('.customers').empty().html('');
  for(id in customerCollection.models){
    var customer = customerCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers').append(customerView.render().el);
  }
  deleteItem();
  updateItem();
  setEditForm();
}


function setEditForm(){
  $( ".edit" ).click(function() {
  var ItemId = $(this).parent().attr( "id" );
  // console.log($(this).parent().children('li').eq(0).text());
  // console.log($(this).parent().children('li').eq(1).text());
  // console.log($(this).parent().children('li').eq(2).text());
  // console.log$(this).parent().children('li').eq(2).text());
  var name = $(this).parent().children('li').eq(0).text().replace(/^[^_]*:/, "").trim();;
  var address= $(this).parent().children('li').eq(1).text().replace(/^[^_]*:/, "").trim();;
  var email = $(this).parent().children('li').eq(2).text().replace(/^[^_]*:/, "").trim();;
  var loyaltyCode = $(this).parent().children('li').eq(3).text().replace(/^[^_]*:/, "").trim();;
  $(this).parent().children('li').eq(0).replaceWith( "<input type='text' name='name' value='" + name + "'>" );
  $(this).parent().children('li').eq(0).replaceWith( "<input type='text' name='address' value='" + address + "'>" );
  $(this).parent().children('li').eq(0).replaceWith( "<input type='text' name='email' value='" + email + "'>" );
  $(this).parent().children('li').eq(0).replaceWith( "<input type='text' name='loyalty_code' value='" + loyaltyCode + "'>" );
  //$(this).parent().children('input').eq(3).after("</form>");
  //$(this).parent().find('h1').replaceWith( "<input>" );
  // console.log($("#"+ ItemId).find('h1').replaceWith( "<input>" ));
  $(this).replaceWith("<input type='submit'>");
  $(this).after("</form>");
  });
}

function updateItem(){
   $('.edit-form').on('submit', function(e){
    console.log(e);
    e.preventDefault();
    var updatedItems = $(this).serializeArray();
    console.log("i'm clicked");
    console.log({id: updatedItems[4].value, name: updatedItems[0].value, address: updatedItems[1].value, email: updatedItems[2].value, loyalty_code: updatedItems[3].value});
    //FIX THIS!!!!!!
    customerCollection.update({name: updatedItems[0].value, address: updatedItems[1].value, email: updatedItems[2].value, loyalty_code: updatedItems[3].value}, updatedItems[4].value);
  })
}



function resetForm($form) {
    $form.find('input:text, input:password, input:file, select, textarea').val('');
    $form.find('input:radio, input:checkbox')
         .removeAttr('checked').removeAttr('selected');
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
  customerCollection.create({name: newCustomerInput[0].value, address: newCustomerInput[1].value, email: newCustomerInput[2].value, loyalty_code: newCustomerInput[3].value});

    resetForm($('.customer-form'));
   })

})



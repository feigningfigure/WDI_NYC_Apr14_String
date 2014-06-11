// **** MODEL ****

  function Customer(customerJSON) {
    this.name = customerJSON.name;
    this.id = customerJSON.id;
    this.address = customerJSON.address;
    this.email = customerJSON.email;
    this.loyalty_code = customerJSON.loyalty_code;
  }




// **** VIEW ****

function CustomerView(model){
  this.model = model;
  // We set this element as undefined here, so that we can dynamically change it in the render method below:
  this.el = undefined;
  // this.descEl = undefined
}

// render is the verb we use to refer to adding things to the DOM, so this sort of action will generally be referred to as render
// The benefit of setting things up the way we do below is that we will dynamically append everything in the models hash every time a change is made...rather than just appending the most recent change. That DRYs up our code.
CustomerView.prototype.render = function(){
  // jquery magic will create an li out of the

  // "<a class='show'>" + this.model.name + "</a>");
  var newElement = $('<ul>').html("<a class='show'>" + this.model.name + "</a>");

    // '<table>').html(
    //     ["name", "address", "email", "loyalty_code"].forEach(function(attrName) {
    //       "<tr class=" attrName ">"
    //         "<td class='key'><strong>" attrName "</strong></td> \
    //         <td class='value'>" customer[attrName] "</td> \
    //       </tr>"
    //       });
    //   "</table>");
  // var descElem = $('<p>').html(this.model.address);
  this.el = newElement;
  // this.descEl = descElem;
  // The reason we return this is so that we can append this newly created element to the existing html element later on, in the displayEntireCollection function.
  return this
}

// **** COLLECTION ****

function CustomerCollection(){
  this.models = {};

}

// This takes the data returned from the server and uses it to add the server data to the this.models hash in the CustomerCollection.
CustomerCollection.prototype.add = function(customerJSON){
  var newCustomer = new Customer(customerJSON);
  // Calling this.models gives you access to the hash defined above ^ in CustomerCollection.
  // Since in rails you search by ID on the controller side, you also search by id in the JS.
  this.models[customerJSON.id] = newCustomer;
  // $(this) variable below is the same thing as the peopleCollection variable below, which is an instance of the CustomerCollection prototype.
  // The event you're passing to the trigger function 'reset' is defined below where you setup the jquery object for peopleCollection.
  $(this).trigger('reset')
}


// This takes the params from the input form and uses that to pull back information from the server side using an Ajax call.
CustomerCollection.prototype.create = function(paramObject){
  // var self = this
  // This goes to the controller's create method becuase you're posting to the customer path, and that's been setup in the routes.
  $.ajax({
    url: '/customers',
    dataType: 'json',
    method: 'post',
    // The input from the form gets passed to rails as the following data. Rails gives us the id from the db.
    data: {customer: paramObject}
  }).done(function(data){
    console.log(data);
    // INSERT CALLBACK CODE HERE
    // The .add method will take the entirety of customerJSON (including name, id, email, loyalty number) returned from the server side in the form of "data" and add that to the CustomerCollection.models hash.
    // You can also swap out the customerCollection below with this.
    customerCollection.add(data)
  })
}

// The variable below is lowercase because it's a variable, while the CustomerCollection we're setting it to is a "class".
var customerCollection = new CustomerCollection();



CustomerCollection.prototype.fetch = function(){
  var self = this;
  // In the Rails controller, the index method has already beeen setup to retrieve all the customer objects and return them as json.
  $.ajax({
    url: '/customers',
    dataType: 'json',
    method: 'get'
  }).done(function(data){
    console.log(data);
      for(id in data){
        self.add(data[id]);
      }
  })
};


function displayEntireCollection(){
  $(".customers").html('');

  for(id in customerCollection.models) {
    var customer = customerCollection.models[id];
    var customerView = new CustomerView(customer);
    $('.customers').append(customerView.render().el);
    // $('.customer_list').html(customerView.render().descElem);

  }
}

// function repopulateCustomerList(data) {
//     var data = {
//       ({name: nameInput.val(),
                              // address: addressInput.val(),
                              // email: emailInput.val(),
                              // loyalty_code: loyaltyCode.val()});
//     };

//   $.ajax({
//     url: "/customers",
//     type: "GET",
//     dataType: "json",
//     data: data
//   }).done(function(customers) {
//     customerDataDump(customers);
//   });
// }

// function customerDataDump(customers) {
//   $("#customer-list").empty();
//   customers.forEach(function(customer) {
//     var customerHTML = customerTemplate({"customer": customer});
//     $("#customer-list").append(customerHTML);
//   });
// }



// ****Document Ready****


$(function(){

  // Calling this immediately on pageload will populate the models hash with all of the people objects from the database.

  // customerTemplate = _.template($("#customer-template").text());


  customerCollection.fetch();



   $(customerCollection).on('reset', function(){
    displayEntireCollection();
  })

  $(".customer-form").on('submit', function(e){
    console.log(e);
    // prevents the form from submitting params to the url, and instead allows you to use them to use as part of the ajax call.
    e.preventDefault();
    var nameInput = $('.customer-form input[name="name"]');
    var addressInput = $('.customer-form input[name="address"]');
    var emailInput = $('.customer-form input[name="email"]');
    var loyaltyCode = $('.customer-form input[name="loyalty_code"]');

    // var nameVal = nameInput.val();
    // var addressVal = addressInput.val();
    // var emailVal = emailInput.val();
    // var loyaltyVal = loyaltyCode.val();

    console.log(nameInput);


    // customerCollection.create(name:)
    customerCollection.create({name: nameInput.val(),
                              address: addressInput.val(),
                              email: emailInput.val(),
                              loyalty_code: loyaltyCode.val()});

    nameInput.val('');
    addressInput.val('');
    emailInput.val('');
    loyaltyCode.val('');

  })

})

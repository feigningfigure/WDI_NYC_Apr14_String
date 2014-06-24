function Customer(customerJSON){
     this.name = customerJSON.name;
     this.id = customerJSON.id;
}


function CustomerView(model){
     this.model = model;
     this.el = undefined;
}
CustomerView.prototype.render = function(){
     var new Element = $('<li>').html(this.model.name);
     this.el = newElement;
     return this
}


function CustomersCollection(){
     this.models = {};

}

CustomersCollection.prototype.add = function(customerJSON){
     var newCustomer = new Customer(customerJSON);
     this.models[customerJSON.id] = newCustomer;
     $(this).trigger('monkey');

}

CustomersCollection.prototype.create = function(paramsObject){

     var self = this
     $.ajax({

          url: '/customers' ,
          method: 'post' ,
          dataType: 'json' ,
          data; {customer: paramObject}
          }).done(function(data){
               self.add(data);
               })
}

CustomersCollection.prototype.fetch = function(){
     var self = this;
     $.ajax({

          url: '/customers' ,
          method: 'get' ,
          dataType: 'json' ,
         }).done(function(data){
          for(id in data){
             self.add(data);
          }

     })
};


function displayEntireCollection(){

     $('.people').html('');

     for(id in customersCollection.models){
          var customer = customersCollection.models[id];
          var customerView = new CustomerView(customer);
          $('.customers').append(customerView.render().el);

     }
}


var customersCollection = new CustomersCollection();

$(function(){

          customersCollection.fetch();

          $(customersCollection).on('random', function(){
               displayEntireCollection();
          })

          $('.name-form').on('submit', function(e){
               console.log(e)
               e.preventDefault();
               var newNameInput = $('.name-form input[name="name"]');
               customersCollection.create({name: newNameInput.val()});
               newNameInput.val('')




          })









          })

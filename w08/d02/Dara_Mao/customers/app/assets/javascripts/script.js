// ============ MODEL =========================
function Customer(customerJSON){
    this.name = customerJSON.name;
    this.address = customerJSON.address;
    this.email = customerJSON.email;
    this.loyalty_code = customerJSON.loyalty_code;
    this.id = customerJSON.id;
}

// ============ VIEW =========================
function CustomerView(model){
    this.model = model;
    this.el = undefined;
    this.id = model.id; //FOR DELETE FUNCTION
    console.log(this.id);
}

CustomerView.prototype.render = function(){
    var newElement = $('<p>').html(this.model.name +" "+ this.model.address+" "+this.model.email+" "+this.model.loyalty_code+"<button class='customer_delete'>delete</button>");
// $('.customer_delete'); delete button on click
    this.el = newElement;
    return this
}

function displayEntireCollection(){

    $('.customer').html('');

    for(id in customerCollection.models){
        var customer = customerCollection.models[id];
        var customerView = new CustomerView(customer);
        $('.customer').append(customerView.render().el);
    }
}

// ============ COLLECTION =========================

function CustomerCollection (){
    this.models = {};
}

var customerCollection = new CustomerCollection();

// ============ EVENT HANDLER =========================
$(function(){
    customerCollection.fetch();

    $(customerCollection).on('everything', function(){
        displayEntireCollection();
    })

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

    }) // end of new customer submit form


      $('.customer_delete').on('delete', function(e){
        console.log(e);
        e.preventDefault();

        customerCollection.destroy;

    }); // end of customer delete

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
    $(this).trigger('everything');
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
};

CustomerCollection.prototype.destroy = function(){
    var self = this;
    $.ajax({
        url: '/customer/:id',
        dataType: 'json',
        method: 'delete'
    }).done(function(data){
        for(id in data){
            self.destroy(data[id]);
        }
    })
};





//========= Model ============
function Customer(customerJSON) {
	this.name = customerJSON.name;
	this.address = customerJSON.address;
	this.email = customerJSON.email;
	this.loyalty_code = customerJSON.loyalty_code;
	this.id = customerJSON.id;

}


//========= View ============
function CustomerView(model) {
	this.model = model;
	this.el = undefined;
}

CustomerView.prototype.render = function() {
	// var newElement = $('<li>').html(this.model.name);

	var newElement = $('<li>').html(
		"name: " + this.model.name + 
		" address: " + this.model.address + 
		" email: " + this.model.email + 
		" loyalty code: " + this.model.loyalty_code +
		"  <input id=" + this.model.id + 
		" type='button' value='edit' class='edit_link'/>");

	this.el = newElement;
	return this
}


//========= Collection ============
function CustomerCollection() {
	this.models = {};
}

CustomerCollection.prototype.add = function(customerJSON){
	var newCustomer = new Customer(customerJSON);
	this.models[customerJSON.id] = newCustomer;
	$(this).trigger('squid');
}

CustomerCollection.prototype.create = function(paramObject){
	var self = this
	$.ajax({
		url: '/customers',
		method: 'POST',
		dataType: 'json',
		data: {customer: paramObject}
	}).done(function(data){
		self.add(data);
	});
}

CustomerCollection.prototype.update = function(paramId){
	var numId = parseInt(paramId);
	console.log(numId);

	$.ajax({
		url: '/customers/'+numId,
		method: 'PATCH',
		dataType: 'json',
		// data: {id: numId}
	}).done(function(data){
		console.log(data);
	})
}

CustomerCollection.prototype.fetch = function() {
	var self = this;
	$.ajax({
		url: '/customers',
		method: 'GET',
		dataType: 'json'
	}).done(function(data){
		for(id in data){
			self.add(data[id]);
		}
	});
}

function displayEntireCollection(){
	$('.vip-customers').html('');
	for(id in customerCollection.models){
		var customer = customerCollection.models[id];
		var customerView = new CustomerView(customer);
		$('.vip-customers').append(customerView.render().el);
	}
}

// function displayEditForm(model) {
// 	var customerTemplate = _.template($("#customer-template").text());
// 	var customerHTML = customerTemplate({"model":model});
// 	return customerHTML
// }

var customerCollection = new CustomerCollection();



$(function(){

	customerCollection.fetch();

	$(customerCollection).on('squid', function(){
		displayEntireCollection();
	});


	$('.vip-form').on('submit', function(e){
		// console.log(e);
		e.preventDefault();
		var newNameInput = $('.vip-form input[name="name"]'),
				newAddressInput = $('.vip-form input[name="address"]'),
				newEmailInput = $('.vip-form input[name="email"]'),
				newLoyaltyCodeInput = $('.vip-form input[name="loyalty_code"]');

		var newCustomerInput = {
			name: newNameInput.val(),
			address: newAddressInput.val(),			
			email: newEmailInput.val(),
			loyalty_code: newLoyaltyCodeInput.val()
		};

		// console.log(newCustomerInput);

		customerCollection.create(newCustomerInput);

		newNameInput.val('');
		newAddressInput.val('');			
		newEmailInput.val('');
		newLoyaltyCodeInput.val('');
	});

// listen for the parent that is static on the html page and call the child that's created dynamically
	$('.vip-customers').on('click', '.edit_link', function(){
		var self = $(this),
				paramToPass = self.attr("id");
		console.log(self.attr("id"));


		$('.some-form').toggle('hidden');

		$('.some-form').on('submit', function(e){
			e.preventDefault();




			var editNameInput = $('.some-form input[name="name"]'),
					editAddressInput = $('.some-form input[name="address"]'),
					editEmailInput = $('.some-form input[name="email"]'),
					editLoyaltyCodeInput = $('.some-form input[name="loyalty_code"]');

			var editCustomerInput = {
				name: editNameInput.val(),
				address: editAddressInput.val(),			
				email: editEmailInput.val(),
				loyalty_code: editLoyaltyCodeInput.val()
			};

			customerCollection.update(paramToPass);

			editNameInput.val('');
			editAddressInput.val('');			
			editEmailInput.val('');
			editLoyaltyCodeInput.val('');





			$('.some-form').hide('hidden');
		});

	});

});

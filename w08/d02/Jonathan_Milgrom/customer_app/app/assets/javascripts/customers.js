
// // ************ Model *************
function Customer(customerJSON){
	this.name = customerJSON.name;
	this.id = customerJSON.id;
	this.address = customerJSON.address;
	this.email = customerJSON.email;
}

// // ************ View *************
function CustomerView(model){
	this.model = model; 
	this.nameEl = undefined; 
	this.addressEl = undefined;
	this.emailEl = undefined

	this.renderName = function(){
		var customersTemplate = _.template($("#customersTemplate").text());
		console.log(this.model)
		var html = customersTemplate({customer: this.model});
		return html;
	};

	// this.render = function(attribute){
	// 	var newElement = $('<li>').html(this.model[attribute]);
	// 	this.nameEl = newElement;
	// 	return newElement
	// };

}

function displayEntireCollection(){

	$('.customers').html('');

	for(id in customerCollection.models){
		var customer = customerCollection.models[id];
		console.log(customerView);
		var customerView = new CustomerView(customer);
		$('.customers').append(customerView.renderName);
		// $('.customers').append(customerView.render("name"));
	}
}
// PersonView.prototype.render = function(){
// 	var newElement = $('<li>').html(this.model.name);
// 	this.el = newElement;
// 	return this
// }

// ************ Collection *************
function CustomerCollection(){
	this.models = {};

	this.add = function(customerJSON){
		var newCustomer = new Customer(customerJSON);
		this.models[customerJSON.id] = newCustomer;
		displayEntireCollection();
	};
}

	

// PeopleCollection.prototype.add = function(personJSON){
// 	var newPerson = new Person(personJSON);
// 	this.models[personJSON.id] = newPerson;
// 	$(this).trigger('monkey');
// }

CustomerCollection.prototype.create = function(paramObject){
	var self = this
	$.ajax({
		url: '/customers',
		method: 'post',
		dataType: 'json',
		data: {customer: paramObject}
	}).done(function(data){	
		self.add(data); 
	})
}

CustomerCollection.prototype.fetch = function(){
	var self = this;
	$.ajax({
		url: '/customers',
		dataType: 'json',
		method: 'get'
	}).done(function(data){
		for(id in data){
		self.add(data[id]);
		}
	})
};



 var customerCollection = new CustomerCollection();



$(document).ready(function() {
	console.log("hello I'm JS");


	customerCollection.fetch();


	$('.name-form').on('submit', function(e){
		console.log(e);
		e.preventDefault();
		var $newCustArray = $('.name-form').serializeArray();
		var newCustInput = {};
		for (i in $newCustArray) {
			newCustInput[$newCustArray[i]["name"]] = $newCustArray[i]["value"];
		}
		
		customerCollection.create(newCustInput);

		//get fields to clear
	
	});
});

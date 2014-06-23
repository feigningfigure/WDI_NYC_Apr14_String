// GLOBAL
// ************ Model *************
// Passing JSON data to the person function
function Person(personJSON){
	this.name = personJSON.name;
	this.id = personJSON.id;
}

// ************ View *************
function PersonView(model){
	this.model = model;
	this.el = undefined;
}

PersonView.prototype.render = function(){
	var newElement = $('<li>').html(this.model.name);
	this.el = newElement;
	return this
}

// ************ Collection *************
// Holds the results of a model.
function PeopleCollection(){
	this.models = {};
}
// best to keep naming similar to crud action.  In this case, ".create". Ajax call is bound to .create
PeopleCollection.prototype.add = function(personJSON){
	var newPerson = new Person(personJSON);
	this.models[personJSON.id] = newPerson;
	$(this).trigger('reset');
}

// .create encapsulates the AJAX call
PeopleCollection.prototype.create = function(paramObject){
	// the below line is setting the variable 'self' to the instance of PeopleCollection that .create is calleed on
	var self = this
	$.ajax({
		url: '/people',
		method: 'post',
		dataType: 'json',
		data: {person: paramObject}
	}).done(function(data){
		// This will have received the ID from the name when it was entered into the database.
		self.add(data);
	})
}

PeopleCollection.prototype.fetch = function(){
	var self = this;
	@.ajax({
		url: '/people',
		dataType: 'json',
		method: 'get'
	}).done(function(data){
		for(id in data){
			self.add(data[id]);
		}
	})
};

function displayEntireCollection(){

	$('.people').html('');

	for(id in peopleCollection.models){
		var person = peopleCollection.models[id];
		var personView = new PersonView(person);
		$('.people').append(personView.render().el);
	}
}

var peopleCollection = new PeopleCollection();

// DOCUMENT READY
$(function(){


	peopleCollection.fetch();

	$(peopleCollection).on('reset', function(){
		displayEntireCollection();
	})
		// The actual event in the brower is passed as 'e' (conventional -- short for "event")
	$('.name-form').on('submit', function(e){
		console.log(e);
    // prevents the default action of the event (which is passing it to a route)
		e.preventDefault();
    // Set the value entered within the form as newName
		var newNameInput = $('.name-form input[name="name"]');
		peopleCollection.create({name: newNameInput.val()});
		newNameInput.val('');
	})

})













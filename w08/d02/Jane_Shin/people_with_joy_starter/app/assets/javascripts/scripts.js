
// ************ Model *************
function Person(personJSON) {
	this.name = personJSON.name;
	// id isn't from the schema but once, in rails, it's created in the db, Person is assigned an id
	this.id = personJSON.id;
}


// ************ View *************
function PersionView(model){
	this.model = model;
	this.el = undefined;
}

PersionView.prototype.render = function(){
	var newElement = $('<li>').html(this.model.name);
	this.el = newElement;
	return this
}


// ************ Collection *************

function PeopleCollection() {
	this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
	var newPerson = new Person(personJSON);
	this.models[personJSON.id] = newPerson;
}

PeopleCollection.prototype.create = function(paramObject){
	var self = this
	$.ajax({
		url: '/people',
		method: 'post',
		dataType: 'json',
		data: {person: paramObject}
	}).done(function(data){
		self.add(data);
	});
}

function displayEntireCollection(){
	$('.people').html('');
	for(id in peopleCollection.models){
		var person = peopleCollection.models[id];
		var persionView = new PersionView(person);
		$('.people').append(persionView.render().el);
	}
}

var peopleCollection = new PeopleCollection();



$(function(){
	// "e" is convention for "event"
	$('.name-form').on('submit', function(e){
		console.log(e);
		e.preventDefault();
		var newNameInput = $('.name-form input[name="name"]');
		peopleCollection.create({name: newNameInput.val()});
		newNameInput.val('');
	});

})







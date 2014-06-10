
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
	$(this).trigger('dolphin');
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

PeopleCollection.prototype.fetch = function(){
	var self = this;
	$.ajax({
	url: "/people",
	method: "GET",
	dataType: 'json'
	}).done(function(data){
		for(id in data){
		self.add(data[id]);
		}
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
	peopleCollection.fetch();

	//custom event handler
	// .fetch and .create both have a common denominator =  .add()
	//'dolphin' can be named whatever we want, class example was 'reset', we're just using that word in "triggering"
	$(peopleCollection).on('dolphin', function(){
		displayEntireCollection();
	});

	// "e" is convention for "event"
	$('.name-form').on('submit', function(e){
		console.log(e);
		e.preventDefault();
		var newNameInput = $('.name-form input[name="name"]');
		peopleCollection.create({name: newNameInput.val()});
		newNameInput.val('');
	});

})







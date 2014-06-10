
// ************ Model *************
function Person(personJSON){
	this.name = personJSON.name;
	this.id = personJSON.id;
}

// ************ View *************
function PersonView(model){
	this.model = model; 
	this.el = undefined; 
}



// ************ Collection *************
function PeopleCollection(){
	this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
	var newPerson = new Person(personJSON);
	this.models[personJSON.id] = newPerson;
}

PeopleCollection.prototype.create = function(paramObject){
	$.ajax({
		url: '/people',
		method: 'post',
		dataType: 'json',
		data: {person: paramObject}
	}).done(function(data){
		peopleCollection.add(data); 
	})
}

var peopleCollection = new PeopleCollection();


$(function(){

	$('.name-form').on('submit', function(e){
		console.log(e);
		e.preventDefault();
		var newNameInput = $('.name-form input[name="name"]');
		peopleCollection.create({name: newNameInput.val()});
		newNameInput.val('');
	})

})














// ************ Model *************
function Person(personJSON) {
this.name = personJSON.name;
this.id = personJSON.id;
}

// Your is a represents data that is all
//creater of new instance

// ************ View *************
function PersonView (model){
this.model = model;
this.el = undefined;
}


// views render


// ************ Collection *************
// simply to be an observer JUST WATCHES
// holds models
function PeopleCollection(){
     this.models = {};
}


PeopleCollection.protype.add = function(personJSON) {
var newPerson = new Person(personJSON);
this.models[personJSON.id] = newPerson;
}
//PROTOTYPE BELOW
//I put create becuase its a crub operation
// Create is for calling on instances of ppl collection.
// factory that produces a instances of pplcollection
PeopleCollection.prototype.create = function (paramObject) {
     $.ajax({
     url: '/people',
     method: 'POST',
     dataType: 'json',
     data: {person: paramObject} ,
     }).done(function(data){
          peopleCollection.add(data)
          //INSERT CALLBACK CODE HERE
     })

}



var = peopleCollection = new PeopleCollection();

$(function(){
     $('.name-for').on('submit', function(e){
        console.log(e);
        e.preventDefault();
        var newNameInput = $('.name-form input [name="name"]');
        peopleCollection.create({name: newName});
        // INSERT AJAX CALL BELOW


      })

})


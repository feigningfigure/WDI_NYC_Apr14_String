
// ************ Model *************

// this is just so we know we are receiving a json hash
function Person(personJSON){
   this.name = personJSON.name;
   this.id = personJSON.id;
}



// ************ View *************

function PersonView(model){
   this.model = model;
   this.el= undefined;
}



// ************ Collection *************

function PeopleCollection(){
this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
var newPerson = new Person (personJSON);

}

PeopleCollection.prototype.create = function(){
   $.ajax({
   url: '/people',
   method: 'post',
   dataType: 'json',
   data: {person: paramObject}, //this is because we have strong params
   }).done(function(data){
.add
   })
}
var peopleCollection = new PeopleCollection();

$(function(){
$('.name-form').on('submit',function(e){
   console.log(e);
   e.preventDefault();
   var newName = $('.name-form input[name="name"]').val();
  peopleCollection.create({name: newName});
})

})

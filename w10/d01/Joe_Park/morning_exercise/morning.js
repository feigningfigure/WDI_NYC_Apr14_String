// ********* Model ********
function Human(humanJSON){
  this.firstname = humanJSON.firstname;
  this.lastname = humanJSON.lastname;
  this.phone = humanJSON.phone;
}


// ******** Human Collection ******
function HumansCollection(){
  this.models = []
}

HumansCollection.prototype.add = function(humanJSON){
  var newHuman = new Human(humanJSON);
  this.models.push(newHuman);
}

HumansCollection.prototype.fetch = function(humansJSON){
  var self = this;
  
  humansJSON.forEach(function(person){
    self.add(person);
  });
}


var jsonresponse = [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

var humansCollection = new HumansCollection();


$(function(){
  humansCollection.fetch(jsonresponse);

});


humansCollection.models.forEach(function(person){
  console.log(person.lastname + ", " + person.firstname)
});

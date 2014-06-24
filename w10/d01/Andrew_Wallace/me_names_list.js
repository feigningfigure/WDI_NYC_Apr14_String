var jsontext = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]'

// Plain, unsorted code.
// var contact = JSON.parse(jsontext)
// for (var i in contact) {
//   var firstname = contact[i].firstname;
//   var lastname = contact[i].lastname;
//   console.log(lastname + ", " + firstname);
// }

//Sorted version

namesAlphabetized = [];

var contact = JSON.parse(jsontext)
for (var i in contact) {
  var firstname = contact[i].firstname;
  var lastname = contact[i].lastname;
  name = lastname + ", " + firstname;
  namesAlphabetized.push(name);
}

namesAlphabetized.sort();
namesAlphabetized.forEach(function(eachName){
  console.log(eachName);
})



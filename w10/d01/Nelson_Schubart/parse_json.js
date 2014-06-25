var items = require(file);

var list = items["list"];

for ( var i = 0; i < list.length; i++ ) {
    if ( list[i]["name"] == item ) {
        console.log(list[i]["url"]);
    }
}


Adler, Jim
Jones, Sarah
Smith, Becky
Zimmerman, Robert

namesAlphabetized = [];

var jsontext = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]'

var contact = JSON.parse(jsontext)

for(var in in contact) {
  var firstname = contact[i].firstname;
  var lastname = contact[i].lastname;
  name = lastname + ", " + firstname;
  namesAlphabetized.push(name);
}

namesAlphabetized.sort();
namesAlphabetized.forEach(function(eachName){
  console.log(eachName);
})

// Dara's solution
json =[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

json.forEach (function(item){
  var print_name = item["lastname"]+", "+item["firstname"];
  console.log(print_name);
});

// Declan's solution
phone_book =[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

function logArrayElements(element) {
    var alpha_names = []
    alpha_names.push(element.lastname + ", " + element.firstname)
    alpha_names.sort().forEach(function(eachName){
      console.log(eachName)
    })
}
phone_book.forEach(logArrayElements);

// John's solution for Bonus
inputJsonText = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';

inputArr = JSON.parse(inputJsonText);

sortedJson = inputArr.sort(
  function (a, b){
    if (a['lastname'] > b['lastname'])
        return 1;
      if (a['lastname'] < b['lastname'])
        return -1;
      // a must be equal to b
      return 0;
  }
)
for (person_index in sortedJson) {
  console.log(sortedJson[person_index]['lastname']+", "+sortedJson[person_index]['firstname']);
}

/****************************************/

// Plain list, unalphabetized
var jsontext = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';
var contact = JSON.parse(jsontext);
for(var i in contact) {
  var firstname = contact[i].firstname;
  var lastname = contact[i].lastname;
  console.log(lastname + ", " + firstname);
}

// Alphabetized
namesAlphabetized = [];
var jsontext = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';
var contact = JSON.parse(jsontext);
for(var i in contact) {
  var firstname = contact[i].firstname;
  var lastname = contact[i].lastname;
  name = lastname + ", " + firstname;
  namesAlphabetized.push(name);
}
namesAlphabetized.sort();
namesAlphabetized.forEach(function(eachName){
  console.log(eachName);
})


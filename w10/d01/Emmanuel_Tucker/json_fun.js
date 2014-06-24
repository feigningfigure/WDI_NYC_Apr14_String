

nameAlphabitized = [];



var myJSONObject = [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}] ,;
var contact = JSON.parse(myJSONObject)

for (var i in contact) {
     var firstname = contact[i].firstname;
    var lastname = contact[i].lastname;
    console.log(lastname + ", " + firstname);
nameAlphabitized.push(name);
}

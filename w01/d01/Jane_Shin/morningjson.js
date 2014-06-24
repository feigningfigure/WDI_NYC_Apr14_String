var arrayOfContacts = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]'

// var jsonContact = json.Parse(contact);

// for (var i = 0; i < arrayOfContacts.length; i++) {
// 	var contact = arrayOfContacts[i];
// 	for (var firstname in contact) {
//         // console.log(i + ': ' + property + '=' + contact[property]);
//         console.log(i + ': ' + firstname + '=' + contact[firstname]);
//     }
// }



// ====== Keri's way ==========
// made the json a string first, that's what I was missing


// var contact = JSON.parse(arrayOfContacts);

// for (i in contact) {
// 	var firstname = contact[i].firstname;
// 	var lastname = contact[i].lastname;
// 	console.log(lastname + ', ' + firstname);
// }

// ==== alphabatize ========
// add array and push
namesAlphabetized = [];

var contact = JSON.parse(arrayOfContacts);

for (i in contact) {
	var firstname = contact[i].firstname;
	var lastname = contact[i].lastname;
	name = lastname + ", " + firstname;
	namesAlphabetized.push(name);
}
namesAlphabetized.sort();
namesAlphabetized.forEach(function(eachName){
	console.log(eachName);
})
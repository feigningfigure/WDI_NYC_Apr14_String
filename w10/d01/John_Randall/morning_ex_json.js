// ---

// ## Morning Exercise


// ### JSON Fun!


// #### Specs

// `Using the JSON below, print a list of names to the console.  It should look like this:`

// * Zimmerman, Robert
// * Jones, Sarah
// * Adler, Jim
// * Smith, Becky


// **Your JSON:**

// [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]


// ##### BONUS

// `Alphabetize the names.  They should look like this:`

// * Adler, Jim
// * Jones, Sarah
// * Smith, Becky
// * Zimmerman, Robert









// #### Solution for Specs
// inputJson = [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}];

// inputJsonText = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';

// inputArr = JSON.parse(inputJsonText);

// for (person_index in inputArr) {
// 	console.log(inputArr[person_index]['lastname']+", "+inputArr[person_index]['firstname']);
// }



// #### Solution for Bonus
inputJsonText = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';

inputArr = JSON.parse(inputJsonText);

sortedArray = inputArr.sort(
	function (a, b){
		if (a['lastname'] > b['lastname'])
	      return 1;
	    if (a['lastname'] < b['lastname'])
	      return -1;
	    // a must be equal to b
	    return 0;
	}
) 

for (person_index in sortedArray) {
	console.log(sortedArray[person_index]['lastname']+", "+sortedArray[person_index]['firstname']);
}








// #### Solution for Specs with parsing
// inputJsonText = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';

// // for (person_index in inputJson) {
// // 	console.log(inputJson[person_index]['lastname']+", "+inputJson[person_index]['firstname']);
// // }

// var contactObjs = JSON.parse(inputJsonText);
// for (var index in contactObjs) {
// 	var firstname = contactObjs[index].firstname;
// 	var lastname = contactObjs[index].lastname;
// 	console.log(lastname + ", " + firstname);
// }





// // #### Solution for Bonus with parsing
// inputJsonText = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]';

// var contactObjs = JSON.parse(inputJsonText);
// for (var index in contactObjs) {
// 	var firstname = contactObjs[index].firstname;
// 	var lastname = contactObjs[index].lastname;
// 	console.log(lastname + ", " + firstname);
// }

// sortedJson = inputJsonText.sort(
// 	function (a, b){
// 		if (a['lastname'] > b['lastname'])
// 	      return 1;
// 	    if (a['lastname'] < b['lastname'])
// 	      return -1;
// 	    // a must be equal to b
// 	    return 0;
// 	}
// ) 

// for (person_index in sortedJson) {
// 	console.log(sortedJson[person_index]['lastname']+", "+sortedJson[person_index]['firstname']);
// }
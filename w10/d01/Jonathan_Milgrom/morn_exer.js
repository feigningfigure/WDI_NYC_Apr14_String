arrayOfHashes = [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}];


for (i = 0; i < arrayOfHashes.length; i++) {
	console.log(" " + arrayOfHashes[i]["lastname"] + ", " + arrayOfHashes[i]["firstname"]);  
}

function consle(array) {

	for (i = 0; i < array.length; i++) {
		console.log(" " + array[i]["lastname"] + ", " + array[i]["firstname"]);  
	}
}


consle(arrayOfHashes);	

sorted = arrayOfHashes.sort(function(a,b){return b.lastname - a.lastname });

console.log(sorted)
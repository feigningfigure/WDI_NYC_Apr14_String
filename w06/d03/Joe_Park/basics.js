console.log("Hello World!");

console.log(1 + 1);

console.log("1" + "1");

var myFavoriteNumber = 500;

if (myFavoriteNumber < 1000) {
	console.log("Dude your fave number is weaksauce.");
	var myArray = [
		5,
		7,
		10
	];
} else {
	console.log("Rad.");
}

console.log("Eh?");

var myArray = [
	"platypus",
	"pterodactyl",
	"aardvark",
	"dragon"
];

for (var i = 0; i < myArray.length; i++) {
	var item = myArray[i];
	console.log(item);
	// process.stdout.write(item);
}

console.log("\nNow with forEach():")
myArray.forEach(function(item) {
	console.log(item);
});

console.log("\nNow with a function in a variable");

var viewFantasticCreature = function(item) {
	console.log("Wow! Observe that amazing " + item);
};

myArray.forEach(viewFantasticCreature);

function doSomethingCool() {
	console.log("This isn't very cool, to be honest.");
}

console.log();
console.log("Returns\n");

function calculateAge(starting, years) {
	return starting + years;
}

var myAge = calculateAge(50, 100);
console.log(myAge);
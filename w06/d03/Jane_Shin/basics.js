console.log("Hello, world!");

console.log(1+1);

console.log("1"+"1");

var myFavNumber = 700;

console.log(myFavNumber);

if (myFavNumber < 1000){
	console.log("Pshhh, just that?");
}

var myArray = [
"ant",
"dragon",
"anteaters",
"hungry hippo"
];

for (var i = 0; i < myArray.length; i++) {
	var item = myArray[i];
	console.log(item);
}

console.log("\nNow with forEach():");

myArray.forEach(function(item) {
	console.log(item);
});

console.log("\nNow with function in a variable:");

var viewFantasticCreature = function(item) {
	console.log("Wow! Observe that amazing " + item);
};

myArray.forEach(viewFantasticCreature);

function doSomethingCool() {
	console.log("this isn't very cool, to be honest.");
}